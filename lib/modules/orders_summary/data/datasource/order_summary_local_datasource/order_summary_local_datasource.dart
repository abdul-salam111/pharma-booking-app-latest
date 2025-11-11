import 'package:flutter/foundation.dart';

import '../../../../home/presentation/barrel.dart';

abstract interface class OrderSummaryLocalDatasource {
  Future<List<OrderItemsForLocal>> getAllOrders();
}

class OrderSummaryLocalDatasourceImpl implements OrderSummaryLocalDatasource {
  final PharmaDatabase databaseHelper;

  OrderSummaryLocalDatasourceImpl({required this.databaseHelper});
  @override
  Future<List<OrderItemsForLocal>> getAllOrders() async {
    try {
      var dbClient = await databaseHelper.database;

      // Use transaction for consistent data retrieval
      return await dbClient!.transaction((txn) async {
        // Get all order records
        List<Map<String, dynamic>> orderMaps = await txn.query('orders');
        List<OrderItemsForLocal> orders = [];

        // Build complete order objects with their relationships
        for (var orderMap in orderMaps) {
          OrderItemsForLocal order = OrderItemsForLocal.fromMap(orderMap);

          // Get all companies for this specific order
          List<Map<String, dynamic>> companyMaps = await txn.query(
            'order_companies',
            where: 'orderId = ?',
            whereArgs: [order.orderId],
          );

          List<OrderCompanies> companies = [];

          // Build company objects with their products
          for (var companyMap in companyMaps) {
            OrderCompanies company = OrderCompanies.fromMap(companyMap);

            // Get all products for this specific company in this order
            List<Map<String, dynamic>> productMaps = await txn.query(
              'order_products',
              where: 'companyOrderId = ?',
              whereArgs: [company.companyOrderId],
            );

            // Add products to the company
            company = company.copyWith(
              products: productMaps
                  .map((map) => OrderProducts.fromMap(map))
                  .toList(),
            );

            companies.add(company);
          }

          // Add companies to the order
          order = order.copyWith(companies: companies);
          orders.add(order);
        }

        if (kDebugMode) {
          print('Retrieved ${orders.length} orders from database');
        }

        return orders;
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error getting orders: $e');
      }
      return [];
    }
  }
}
