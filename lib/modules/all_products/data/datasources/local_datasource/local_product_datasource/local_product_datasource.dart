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
                'id': map['id'],
                'productName': map['productName'],
                'companyId': map['companyId'],
                'pricePackPur': map['pricePackPur'],
                'retailPrice': map['retailPrice'],
                'discRatioPur': map['discRatioPur'],
                'saleDiscRatio': map['saleDiscRatio'],
                'pricePackSal1': map['pricePackSal1'],
                'pricePackSal2': map['pricePackSal2'],
                'pricePackSal3': map['pricePackSal3'],
                'discRatioSal1': map['discRatioSal1'],
                'discRatioSal2': map['discRatioSal2'],
                'discRatioSal3': map['discRatioSal3'],
                'sTaxRatio': map['sTaxRatio'],
                'sTaxValPack': map['sTaxValPack'],
                'isSTaxOnBnsSal': map['isSTaxOnBnsSal'] == 1,
                'displayOrder': map['displayOrder'],
                'tradePrice': map['tradePrice'],
                'packings': map['packings'] != null
                    ? (map['packings'] as String).split(',') // Example parsing
                    : [],
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
      'id': product.id,
      'productName': product.productName,
      'companyId': product.companyId,
      'pricePackPur': product.pricePackPur,
      'retailPrice': product.retailPrice,
      'discRatioPur': product.discRatioPur,
      'saleDiscRatio': product.saleDiscRatio,
      'pricePackSal1': product.pricePackSal1,
      'pricePackSal2': product.pricePackSal2,
      'pricePackSal3': product.pricePackSal3,
      'discRatioSal1': product.discRatioSal1,
      'discRatioSal2': product.discRatioSal2,
      'discRatioSal3': product.discRatioSal3,
      'sTaxRatio': product.sTaxRatio,
      'sTaxValPack': product.sTaxValPack,
      'isSTaxOnBnsSal': product.isSTaxOnBnsSal == true ? 1 : 0,
      'displayOrder': product.displayOrder,
      'tradePrice': product.tradePrice,
      'packings': product.packings?.join(','),
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
          where: 'id = ?',
          whereArgs: [productId],
          limit: 1,
        );

        if (maps.isNotEmpty) {
          return GetAllProductsModel.fromJson({
            'id': maps.first['id'],
            'productName': maps.first['productName'],
            'companyId': maps.first['companyId'],
            'pricePackPur': maps.first['pricePackPur'],
            'retailPrice': maps.first['retailPrice'],
            'discRatioPur': maps.first['discRatioPur'],
            'saleDiscRatio': maps.first['saleDiscRatio'],
            'pricePackSal1': maps.first['pricePackSal1'],
            'pricePackSal2': maps.first['pricePackSal2'],
            'pricePackSal3': maps.first['pricePackSal3'],
            'discRatioSal1': maps.first['discRatioSal1'],
            'discRatioSal2': maps.first['discRatioSal2'],
            'discRatioSal3': maps.first['discRatioSal3'],
            'sTaxRatio': maps.first['sTaxRatio'],
            'sTaxValPack': maps.first['sTaxValPack'],
            'isSTaxOnBnsSal': maps.first['isSTaxOnBnsSal'] == 1,
            'displayOrder': maps.first['displayOrder'],
            'tradePrice': maps.first['tradePrice'],
            'packings': maps.first['packings'] != null
                ? (maps.first['packings'] as String).split(',')
                : [],
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
