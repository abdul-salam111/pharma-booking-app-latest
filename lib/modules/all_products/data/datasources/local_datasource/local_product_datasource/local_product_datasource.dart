import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import '../../../../../../core/local_storage/database/database_helper.dart';
import '../../../models/get_products_model/get_all_products_model.dart';

abstract interface class LocalProductDatasource {
  Future<List<int>> insertProductsLocal(List<GetAllProductsModel> products);
  Future<List<GetAllProductsModel>> getAllLocalProducts();
  Future<bool> clearLocalProducts();
  Future<GetAllProductsModel?> getLocalProductById({required String productId});
}

class LocalProductDatasourceImpl implements LocalProductDatasource {
  final PharmaDatabase databaseHelper;
  const LocalProductDatasourceImpl({required this.databaseHelper});
  static const String _tableName = 'products';
  @override
  Future<List<int>> insertProductsLocal(
    List<GetAllProductsModel> products,
  ) async {
    try {
      final dbClient = await databaseHelper.database;
      final List<int> results = [];

      await dbClient!.transaction((txn) async {
        for (final product in products) {
          try {
            final result = await txn.insert(
              _tableName,
              _convertProductToDbFormat(product),
              conflictAlgorithm: ConflictAlgorithm.replace,
            );
            results.add(result);
          } catch (e) {
            _logError('Error inserting individual product: $e');
            _logError('Product data: ${product.toJson()}');
          }
        }
      });

      _logInfo(
        'Successfully inserted ${results.length} products out of ${products.length}',
      );

      return results;
    } catch (e) {
      _logError('Error inserting products: $e');
      return [];
    }
  }

  @override
  Future<List<GetAllProductsModel>> getAllLocalProducts() async {
    try {
      final dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        final List<Map<String, dynamic>> maps = await txn.query(_tableName);

        final products = maps
            .map(
              (map) => GetAllProductsModel.fromJson({
                'CompanyId': map['CompanyId'],
                'StrCompanyId': map['StrCompanyId'],
                'ProductId': map['ProductId'],
                'GroupId': map['GroupId'],
                'ProductName': map['ProductName'],
                'Packing': map['Packing'],
                'TradePrice': map['TradePrice'],
                'SaleDiscRatio': map['SaleDiscRatio'],
                'CurrentStock': map['CurrentStock'],
                'IsInActive': map['IsInActive'] == 1,
                'ID': map['ID'],
                'TenantID': map['TenantID'],
              }),
            )
            .toList();

        _logInfo('Retrieved ${products.length} products from database');

        return products;
      });
    } catch (e) {
      _logError('Error getting products from database: $e');
      return [];
    }
  }

  @override
  Future<bool> clearLocalProducts() async {
    try {
      final dbClient = await databaseHelper.database;
      final deletedRows = await dbClient!.delete(_tableName);

      _logInfo('Products table cleared. Deleted $deletedRows rows');
      return true;
    } catch (e) {
      _logError('Error clearing products: $e');
      rethrow;
    }
  }

  /// Convert GetAllProductsModel to database format
  /// Note: Converts boolean IsInActive to integer (0/1)
  Map<String, dynamic> _convertProductToDbFormat(GetAllProductsModel product) {
    return {
      'CompanyId': product.companyId,
      'StrCompanyId': product.strCompanyId,
      'ProductId': product.productId,
      'GroupId': product.groupId,
      'ProductName': product.productName,
      'Packing': product.packing,
      'TradePrice': product.tradePrice,
      'SaleDiscRatio': product.saleDiscRatio,
      'CurrentStock': product.currentStock,
      'IsInActive': product.isInActive == true ? 1 : 0,
      'ID': product.id,
      'TenantID': product.tenantId,
    };
  }

  @override
  Future<GetAllProductsModel?> getLocalProductById({
    required String productId,
  }) async {
    try {
      var dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        List<Map<String, dynamic>> maps = await txn.query(
          'products',
          where: 'ID = ?',
          whereArgs: [productId],
          limit: 1,
        );

        if (maps.isNotEmpty) {
          return GetAllProductsModel.fromJson({
            'CompanyId': maps[0]['CompanyId'],
            'StrCompanyId': maps[0]['StrCompanyId'],
            'ProductId': maps[0]['ProductId'],
            'GroupId': maps[0]['GroupId'],
            'ProductName': maps[0]['ProductName'],
            'Packing': maps[0]['Packing'],
            'TradePrice': maps[0]['TradePrice'],
            'SaleDiscRatio': maps[0]['SaleDiscRatio'],
            'CurrentStock': maps[0]['CurrentStock'],
            'IsInActive':
                maps[0]['IsInActive'] == 1, // Convert integer back to boolean
            'ID': maps[0]['ID'],
            'TenantID': maps[0]['TenantID'],
          });
        }
        return null;
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error getting product by ID: $e');
      }
      return null;
    }
  }

  void _logInfo(String message) {
    if (kDebugMode) {
      print(message);
    }
  }

  void _logError(String message) {
    if (kDebugMode) {
      print(message);
    }
  }
}
