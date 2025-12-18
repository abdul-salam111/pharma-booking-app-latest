import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';

import '../../../../../../core/local_storage/database/database_helper.dart';
import '../../../../../../core/shared/models/post_models/create_order_for_local.dart';

abstract interface class CreateOrdersLocalDatasource {
  Future<List<OrderItemsForLocal>> getUnsyncedOrders();
  Future<int> countUnsyncedOrders();
  Future<int> getSyncTries(int orderId);
  Future<bool> getFailedStatus(int orderId);
  Future<bool> updateOrderSyncStatus(int orderId, bool isSynced);
  Future<int> insertOrderLocal({required OrderItemsForLocal order});
  Future<bool> updateOrderLocal({required OrderItemsForLocal order});
  Future<bool> deleteOrderLocal({required int orderId});
  Future<int> incrementSyncTries(int orderId);
  Future<int> markOrderAsFailed(int orderId);
  Future<int> markOrderAsNotFailed(int orderId);
  Future<int> resetSyncTries(int orderId);
  Future<List<OrderItemsForLocal>> getFailedOrders();
}

class CreateOrdersLocalDatasourceImpl implements CreateOrdersLocalDatasource {
  final SoftronixBookingDatabase databaseHelper;
  CreateOrdersLocalDatasourceImpl({required this.databaseHelper});

  static final String tableName = 'orders';

  // ==================== GET METHODS ====================

  @override
  Future<List<OrderItemsForLocal>> getUnsyncedOrders() async {
    try {
      var dbClient = await databaseHelper.database;
      return await dbClient!.transaction((txn) async {
        List<Map<String, dynamic>> orderMaps = await txn.query(
          tableName,
          where: 'synced = ?',
          whereArgs: ['No'],
        );

        List<OrderItemsForLocal> orders = [];

        for (var orderMap in orderMaps) {
          OrderItemsForLocal order = OrderItemsForLocal.fromMap(orderMap);

          List<Map<String, dynamic>> companyMaps = await txn.query(
            'order_companies',
            where: 'orderId = ?',
            whereArgs: [order.orderId],
          );

          List<OrderCompanies> companies = [];
          for (var companyMap in companyMaps) {
            OrderCompanies company = OrderCompanies.fromMap(companyMap);

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
  Future<int> getSyncTries(int orderId) async {
    try {
      var dbClient = await databaseHelper.database;

      var result = await dbClient!.query(
        tableName,
        columns: ['syncTries'],
        where: 'orderId = ?',
        whereArgs: [orderId],
      );

      if (result.isNotEmpty) {
        return result.first['syncTries'] as int? ?? 0;
      }
      return 0;
    } catch (e) {
      if (kDebugMode) {
        print('Error getting sync tries: $e');
      }
      return 0;
    }
  }

  @override
  Future<bool> getFailedStatus(int orderId) async {
    try {
      var dbClient = await databaseHelper.database;

      var result = await dbClient!.query(
        tableName,
        columns: ['isFailed'],
        where: 'orderId = ?',
        whereArgs: [orderId],
      );

      if (result.isNotEmpty) {
        final isFailed = result.first['isFailed'] as int?;
        return isFailed == 1;
      }
      return false;
    } catch (e) {
      if (kDebugMode) {
        print('Error getting failed status: $e');
      }
      return false;
    }
  }

 @override
Future<List<OrderItemsForLocal>> getFailedOrders() async {
  try {
    var dbClient = await databaseHelper.database;
    return await dbClient!.transaction((txn) async {
      List<Map<String, dynamic>> orderMaps = await txn.query(
        tableName,
        where: 'isFailed = ?',
        whereArgs: [1],
      );

      List<OrderItemsForLocal> orders = [];

      for (var orderMap in orderMaps) {
        OrderItemsForLocal order = OrderItemsForLocal.fromMap(orderMap);

        List<Map<String, dynamic>> companyMaps = await txn.query(
          'order_companies',
          where: 'orderId = ?',
          whereArgs: [order.orderId],
        );

        List<OrderCompanies> companies = [];
        for (var companyMap in companyMaps) {
          OrderCompanies company = OrderCompanies.fromMap(companyMap);

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

      return orders;
    });
  } catch (e) {
    if (kDebugMode) {
      print('Error getting failed orders: $e');
    }
    return [];
  }
}

  // ==================== UPDATE METHODS ====================

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
  Future<int> incrementSyncTries(int orderId) async {
    try {
      var dbClient = await databaseHelper.database;

      int currentTries = await getSyncTries(orderId);

      return await dbClient!.update(
        tableName,
        {'syncTries': currentTries + 1},
        where: 'orderId = ?',
        whereArgs: [orderId],
      );
    } catch (e) {
      if (kDebugMode) {
        print('Error incrementing sync tries: $e');
      }
      return 0;
    }
  }

  @override
  Future<int> markOrderAsFailed(int orderId) async {
    try {
      var dbClient = await databaseHelper.database;

      return await dbClient!.update(
        tableName,
        {'isFailed': 1},
        where: 'orderId = ?',
        whereArgs: [orderId],
      );
    } catch (e) {
      if (kDebugMode) {
        print('Error marking order as failed: $e');
      }
      return 0;
    }
  }

  @override
  Future<int> markOrderAsNotFailed(int orderId) async {
    try {
      var dbClient = await databaseHelper.database;

      return await dbClient!.update(
        tableName,
        {'isFailed': 0},
        where: 'orderId = ?',
        whereArgs: [orderId],
      );
    } catch (e) {
      if (kDebugMode) {
        print('Error marking order as not failed: $e');
      }
      return 0;
    }
  }

  @override
  Future<int> resetSyncTries(int orderId) async {
    try {
      var dbClient = await databaseHelper.database;

      return await dbClient!.update(
        tableName,
        {'syncTries': 0},
        where: 'orderId = ?',
        whereArgs: [orderId],
      );
    } catch (e) {
      if (kDebugMode) {
        print('Error resetting sync tries: $e');
      }
      return 0;
    }
  }

  // ==================== INSERT/UPDATE/DELETE METHODS ====================

  @override
  Future<int> insertOrderLocal({required OrderItemsForLocal order}) async {
    try {
      var dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        int orderId = await txn.insert(tableName, order.toMap());

        for (var company in order.companies) {
          int companyOrderId = await txn.insert(
            'order_companies',
            company.copyWith(orderId: orderId).toMap(),
          );

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
        await txn.update(
          tableName,
          order.toMap(),
          where: 'orderId = ?',
          whereArgs: [order.orderId],
        );

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
          tableName,
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
