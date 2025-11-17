import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import '../../../../../../core/local_storage/database/database_helper.dart';
import '../../../models/get_products_model/get_all_products_model.dart';

abstract interface class LocalProductDatasource {
  Future<List<int>> insertProductsLocal(List<GetAllProductsModel> products);
  Future<List<GetAllProductsModel>> getAllLocalProducts();
  Future<bool> clearLocalProducts();
  Future<GetAllProductsModel?> getLocalProductById({required int productId});
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
      final db = await databaseHelper.database;
      final List<int> results = [];

      await db!.transaction((txn) async {
        for (final product in products) {
          try {
            final result = await txn.insert(
              _tableName,
              product.toJson(),
              conflictAlgorithm: ConflictAlgorithm.replace,
            );
            results.add(result);
          } catch (e) {
            _logError('Insert Error: $e');
            _logError('Product: ${product.toJson()}');
          }
        }
      });

      _logInfo('Inserted ${results.length}/${products.length} products');
      return results;
    } catch (e) {
      _logError('Insert Products Error: $e');
      return [];
    }
  }

  @override
  Future<List<GetAllProductsModel>> getAllLocalProducts() async {
    try {
      final db = await databaseHelper.database;

      return await db!.transaction((txn) async {
        final List<Map<String, dynamic>> maps = await txn.query(_tableName);

        final products = maps
            .map((map) => GetAllProductsModel.fromJson(map))
            .toList();

        _logInfo('Fetched ${products.length} local products');
        return products;
      });
    } catch (e) {
      _logError('Get Products Error: $e');
      return [];
    }
  }

  @override
  Future<bool> clearLocalProducts() async {
    try {
      final db = await databaseHelper.database;
      final count = await db!.delete(_tableName);

      _logInfo('Cleared products table ($count rows)');
      return true;
    } catch (e) {
      _logError('Clear Products Error: $e');
      return false;
    }
  }

  @override
  Future<GetAllProductsModel?> getLocalProductById({
    required int productId,
  }) async {
    try {
      final db = await databaseHelper.database;

      return await db!.transaction((txn) async {
        final maps = await txn.query(
          _tableName,
          where: 'id = ?',
          whereArgs: [productId],
          limit: 1,
        );

        if (maps.isNotEmpty) {
          return GetAllProductsModel.fromJson(maps.first);
        }
        return null;
      });
    } catch (e) {
      _logError('Get Product by ID Error: $e');
      return null;
    }
  }

  void _logInfo(String msg) {
    if (kDebugMode) print('ℹ️ $msg');
  }

  void _logError(String msg) {
    if (kDebugMode) print('❌ $msg');
  }
}
