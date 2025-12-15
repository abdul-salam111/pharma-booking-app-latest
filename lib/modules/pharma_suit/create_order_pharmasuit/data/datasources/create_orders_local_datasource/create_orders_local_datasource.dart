import 'package:flutter/foundation.dart';

import 'package:sqflite/sqflite.dart';

import '../../../../../../core/local_storage/database/database_helper.dart';
import '../../../../../../core/shared/models/post_models/create_order_for_local.dart';

abstract interface class CreateOrdersLocalDatasource {
  Future<List<OrderItemsForLocal>> getUnsyncedOrders();
  Future<int> countUnsyncedOrders();
  Future<bool> updateOrderSyncStatus(int orderId, bool isSynced);
  Future<int> insertOrderLocal({required OrderItemsForLocal order});
  Future<bool> updateOrderLocal({required OrderItemsForLocal order});
  Future<bool> deleteOrderLocal({required int orderId});
}

class CreateOrdersLocalDatasourceImpl implements CreateOrdersLocalDatasource {
  final SoftronixBookingDatabase databaseHelper;
  CreateOrdersLocalDatasourceImpl({required this.databaseHelper});
  static final String tableName = 'orders';
  @override
  Future<List<OrderItemsForLocal>> getUnsyncedOrders() async {
    try {
      var dbClient = await databaseHelper.database;
      // Use transaction for consistent data retrieval
      return await dbClient!.transaction((txn) async {
        // Get orders that are not synced
        List<Map<String, dynamic>> orderMaps = await txn.query(
          tableName,
          where: 'synced = ?',
          whereArgs: ['No'],
        );

        List<OrderItemsForLocal> orders = [];

        // Build complete order objects (same as getAllOrders but filtered)
        for (var orderMap in orderMaps) {
          OrderItemsForLocal order = OrderItemsForLocal.fromMap(orderMap);

          // Get companies for this order
          List<Map<String, dynamic>> companyMaps = await txn.query(
            'order_companies',
            where: 'orderId = ?',
            whereArgs: [order.orderId],
          );

          List<OrderCompanies> companies = [];
          for (var companyMap in companyMaps) {
            OrderCompanies company = OrderCompanies.fromMap(companyMap);

            // Get products for this company
            List<Map<String, dynamic>> productMaps = await txn.query(
              'order_products',
              where: 'companyOrderId = ?',
              whereArgs: [company.companyOrderId],
            );

            company = company.copyWith(
              products: productMaps
                  .map((map) => OrderProducts.fromMap(map))
                  .toList(),
            );

            companies.add(company);
          }

          order = order.copyWith(companies: companies);
          orders.add(order);
        }

        if (kDebugMode) {
          print('Retrieved ${orders.length} unsynced orders');
        }

        return orders;
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error getting unsynced orders: $e');
      }
      return [];
    }
  }

  @override
  Future<int> countUnsyncedOrders() async {
    try {
      var dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        var result = await txn.rawQuery(
          'SELECT COUNT(*) FROM orders WHERE synced = ?',
          ['No'],
        );

        int count = Sqflite.firstIntValue(result) ?? 0;

        if (kDebugMode) {
          print('Unsynced orders count: $count');
        }

        return count;
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error counting unsynced orders: $e');
      }
      return 0;
    }
  }

  @override
  Future<bool> updateOrderSyncStatus(int orderId, bool isSynced) async {
    try {
      var dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        int updatedRows = await txn.update(
          tableName,
          {
            'synced': isSynced ? 'Yes' : 'No',
            'syncDate': isSynced ? DateTime.now().toString() : null,
          },
          where: 'orderId = ?',
          whereArgs: [orderId],
        );

        if (kDebugMode) {
          print(
            'Order $orderId sync status updated to: ${isSynced ? "Yes" : "No"}',
          );
        }

        return updatedRows > 0;
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error updating order sync status: $e');
      }
      return false;
    }
  }

  @override
  Future<int> insertOrderLocal({required OrderItemsForLocal order}) async {
    try {
      var dbClient = await databaseHelper.database;

      // Use transaction to ensure all-or-nothing operation
      return await dbClient!.transaction((txn) async {
        // Insert the main order record
        int orderId = await txn.insert('orders', order.toMap());

        // Insert all companies and their products for this order
        for (var company in order.companies) {
          // Insert company and get generated ID
          int companyOrderId = await txn.insert(
            'order_companies',
            company.copyWith(orderId: orderId).toMap(),
          );

          // Insert all products for this company
          for (var product in company.products) {
            await txn.insert(
              'order_products',
              product.copyWith(companyOrderId: companyOrderId).toMap(),
            );
          }
        }

        if (kDebugMode) {
          print('Order inserted successfully with ID: $orderId');
        }

        return orderId;
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error inserting order: $e');
      }
      return -1;
    }
  }

  @override
  Future<bool> updateOrderLocal({required OrderItemsForLocal order}) async {
    try {
      var dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        // 1. Update the main order record
        await txn.update(
          'orders',
          order.toMap(),
          where: 'orderId = ?',
          whereArgs: [order.orderId],
        );

        // 2. Delete existing related data
        await txn.delete(
          'order_products',
          where:
              'companyOrderId IN (SELECT companyOrderId FROM order_companies WHERE orderId = ?)',
          whereArgs: [order.orderId],
        );

        await txn.delete(
          'order_companies',
          where: 'orderId = ?',
          whereArgs: [order.orderId],
        );

        // 3. Insert updated companies and their products
        for (var company in order.companies) {
          final companyMap = company.toMap();
          companyMap['orderId'] = order.orderId;
          companyMap.remove('companyOrderId');

          int companyOrderId = await txn.insert('order_companies', companyMap);

          for (var product in company.products) {
            final productMap = product.toMap();
            productMap['companyOrderId'] = companyOrderId;
            productMap.remove('orderProductId');

            await txn.insert('order_products', productMap);
          }
        }

        if (kDebugMode) {
          print('Order ${order.orderId} updated successfully');
        }

        return true;
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error updating order: $e');
      }
      return false;
    }
  }

  @override
  Future<bool> deleteOrderLocal({required int orderId}) async {
    try {
      var dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        int deletedRows = await txn.delete(
          'orders',
          where: 'orderId = ?',
          whereArgs: [orderId],
        );

        if (kDebugMode) {
          print('Deleted order $orderId. Rows affected: $deletedRows');
        }

        return deletedRows > 0;
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error deleting order: $e');
      }
      return false;
    }
  }
}
