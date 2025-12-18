import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';

import '../../../../../../../core/local_storage/database/database_helper.dart';
import '../../../../../../../core/shared/models/post_models/create_order_for_local.dart';

// ╔══════════════════════════════════════════════════════════════════════════════╗
// ║                              ABSTRACT INTERFACE                              ║
// ╚══════════════════════════════════════════════════════════════════════════════╝

abstract interface class CreateOrdersLocalDatasource {
  // Query Methods
  Future<List<OrderItemsForLocal>> getUnsyncedOrders();
  Future<List<OrderItemsForLocal>> getFailedOrders();
  Future<int> countUnsyncedOrders();
  Future<int> getSyncTries(int orderId);
  Future<bool> getFailedStatus(int orderId);

  // Sync Status Methods
  Future<bool> updateOrderSyncStatus(int orderId, bool isSynced);
  Future<int> incrementSyncTries(int orderId);
  Future<int> resetSyncTries(int orderId);
  Future<int> markOrderAsFailed(int orderId);
  Future<int> markOrderAsNotFailed(int orderId);

  // CRUD Methods
  Future<int> insertOrderLocal({required OrderItemsForLocal order});
  Future<bool> updateOrderLocal({required OrderItemsForLocal order});
  Future<bool> deleteOrderLocal({required int orderId});
}

// ╔══════════════════════════════════════════════════════════════════════════════╗
// ║                            DATASOURCE IMPLEMENTATION                         ║
// ╚══════════════════════════════════════════════════════════════════════════════╝

/// Implementation of CreateOrdersLocalDatasource using SQLite
class CreateOrdersLocalDatasourceImpl implements CreateOrdersLocalDatasource {
  final SoftronixBookingDatabase databaseHelper;
  static const String tableName = 'orders';

  CreateOrdersLocalDatasourceImpl({required this.databaseHelper});

  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║                              QUERY METHODS                                   ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝

  @override
  Future<List<OrderItemsForLocal>> getUnsyncedOrders() async {
    try {
      final dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        final orderMaps = await txn.query(
          tableName,
          where: 'synced = ?',
          whereArgs: ['No'],
        );

        return await _buildOrdersFromMaps(txn, orderMaps);
      });
    } catch (e) {
      _logError('Error getting unsynced orders', e);
      return [];
    }
  }

  @override
  Future<List<OrderItemsForLocal>> getFailedOrders() async {
    try {
      final dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        final orderMaps = await txn.query(
          tableName,
          where: 'isFailed = ?',
          whereArgs: [1],
        );

        return await _buildOrdersFromMaps(txn, orderMaps);
      });
    } catch (e) {
      _logError('Error getting failed orders', e);
      return [];
    }
  }

  @override
  Future<int> countUnsyncedOrders() async {
    try {
      final dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        final result = await txn.rawQuery(
          'SELECT COUNT(*) FROM $tableName WHERE synced = ?',
          ['No'],
        );

        final count = Sqflite.firstIntValue(result) ?? 0;
        _logDebug('Unsynced orders count: $count');

        return count;
      });
    } catch (e) {
      _logError('Error counting unsynced orders', e);
      return 0;
    }
  }

  @override
  Future<int> getSyncTries(int orderId) async {
    try {
      final dbClient = await databaseHelper.database;

      final result = await dbClient!.query(
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
      _logError('Error getting sync tries', e);
      return 0;
    }
  }

  @override
  Future<bool> getFailedStatus(int orderId) async {
    try {
      final dbClient = await databaseHelper.database;

      final result = await dbClient!.query(
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
      _logError('Error getting failed status', e);
      return false;
    }
  }

  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║                          SYNC STATUS METHODS                                 ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝

  @override
  Future<bool> updateOrderSyncStatus(int orderId, bool isSynced) async {
    try {
      final dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        final updatedRows = await txn.update(
          tableName,
          {
            'synced': isSynced ? 'Yes' : 'No',
            'syncDate': isSynced ? DateTime.now().toString() : null,
          },
          where: 'orderId = ?',
          whereArgs: [orderId],
        );

        _logDebug(
          'Order $orderId sync status updated to: ${isSynced ? "Yes" : "No"}',
        );

        return updatedRows > 0;
      });
    } catch (e) {
      _logError('Error updating order sync status', e);
      return false;
    }
  }

  @override
  Future<int> incrementSyncTries(int orderId) async {
    try {
      final dbClient = await databaseHelper.database;
      final currentTries = await getSyncTries(orderId);

      return await dbClient!.update(
        tableName,
        {'syncTries': currentTries + 1},
        where: 'orderId = ?',
        whereArgs: [orderId],
      );
    } catch (e) {
      _logError('Error incrementing sync tries', e);
      return 0;
    }
  }

  @override
  Future<int> resetSyncTries(int orderId) async {
    try {
      final dbClient = await databaseHelper.database;

      return await dbClient!.update(
        tableName,
        {'syncTries': 0},
        where: 'orderId = ?',
        whereArgs: [orderId],
      );
    } catch (e) {
      _logError('Error resetting sync tries', e);
      return 0;
    }
  }

  @override
  Future<int> markOrderAsFailed(int orderId) async {
    try {
      final dbClient = await databaseHelper.database;

      return await dbClient!.update(
        tableName,
        {'isFailed': 1},
        where: 'orderId = ?',
        whereArgs: [orderId],
      );
    } catch (e) {
      _logError('Error marking order as failed', e);
      return 0;
    }
  }

  @override
  Future<int> markOrderAsNotFailed(int orderId) async {
    try {
      final dbClient = await databaseHelper.database;

      return await dbClient!.update(
        tableName,
        {'isFailed': 0},
        where: 'orderId = ?',
        whereArgs: [orderId],
      );
    } catch (e) {
      _logError('Error marking order as not failed', e);
      return 0;
    }
  }

  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║                              CRUD METHODS                                    ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝

  @override
  Future<int> insertOrderLocal({required OrderItemsForLocal order}) async {
    try {
      final dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        final orderId = await txn.insert(tableName, order.toMap());

        for (final company in order.companies) {
          final companyOrderId = await txn.insert(
            'order_companies',
            company.copyWith(orderId: orderId).toMap(),
          );

          for (final product in company.products) {
            await txn.insert(
              'order_products',
              product.copyWith(companyOrderId: companyOrderId).toMap(),
            );
          }
        }

        _logDebug('Order inserted successfully with ID: $orderId');
        return orderId;
      });
    } catch (e) {
      _logError('Error inserting order', e);
      return -1;
    }
  }

  @override
  Future<bool> updateOrderLocal({required OrderItemsForLocal order}) async {
    try {
      final dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        // Update main order record
        await txn.update(
          tableName,
          order.toMap(),
          where: 'orderId = ?',
          whereArgs: [order.orderId],
        );

        // Delete existing related records
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

        // Insert updated related records
        for (final company in order.companies) {
          final companyMap = company.toMap();
          companyMap['orderId'] = order.orderId;
          companyMap.remove('companyOrderId');

          final companyOrderId = await txn.insert('order_companies', companyMap);

          for (final product in company.products) {
            final productMap = product.toMap();
            productMap['companyOrderId'] = companyOrderId;
            productMap.remove('orderProductId');

            await txn.insert('order_products', productMap);
          }
        }

        _logDebug('Order ${order.orderId} updated successfully');
        return true;
      });
    } catch (e) {
      _logError('Error updating order', e);
      return false;
    }
  }

  @override
  Future<bool> deleteOrderLocal({required int orderId}) async {
    try {
      final dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        final deletedRows = await txn.delete(
          tableName,
          where: 'orderId = ?',
          whereArgs: [orderId],
        );

        _logDebug('Deleted order $orderId. Rows affected: $deletedRows');
        return deletedRows > 0;
      });
    } catch (e) {
      _logError('Error deleting order', e);
      return false;
    }
  }

  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║                            PRIVATE HELPER METHODS                            ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝

  /// Builds a list of OrderItemsForLocal from database maps with related data
  Future<List<OrderItemsForLocal>> _buildOrdersFromMaps(
    Transaction txn,
    List<Map<String, dynamic>> orderMaps,
  ) async {
    final orders = <OrderItemsForLocal>[];

    for (final orderMap in orderMaps) {
      var order = OrderItemsForLocal.fromMap(orderMap);

      // Fetch related companies
      final companyMaps = await txn.query(
        'order_companies',
        where: 'orderId = ?',
        whereArgs: [order.orderId],
      );

      final companies = <OrderCompanies>[];

      for (final companyMap in companyMaps) {
        var company = OrderCompanies.fromMap(companyMap);

        // Fetch related products
        final productMaps = await txn.query(
          'order_products',
          where: 'companyOrderId = ?',
          whereArgs: [company.companyOrderId],
        );

        company = company.copyWith(
          products: productMaps.map((map) => OrderProducts.fromMap(map)).toList(),
        );

        companies.add(company);
      }

      order = order.copyWith(companies: companies);
      orders.add(order);
    }

    return orders;
  }

  /// Logs debug messages when in debug mode
  void _logDebug(String message) {
    if (kDebugMode) {
      print(message);
    }
  }

  /// Logs error messages when in debug mode
  void _logError(String message, Object error) {
    if (kDebugMode) {
      print('$message: $error');
    }
  }
}