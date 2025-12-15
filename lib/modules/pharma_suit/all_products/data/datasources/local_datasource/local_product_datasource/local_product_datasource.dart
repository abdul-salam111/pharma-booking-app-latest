import 'package:flutter/foundation.dart';
import 'package:pharma_booking_app/modules/pharma_suit/all_products/data/models/get_products_packing/get_packings.dart';
import 'package:sqflite/sqflite.dart';
import '../../../../../../../core/local_storage/database/database_helper.dart';
import '../../../models/get_products_model/get_all_products_model.dart';

abstract interface class LocalProductDatasource {
  Future<List<int>> insertProductsLocal(List<GetAllProductsModel> products);
  Future<List<int>> insertPackingsLocal(List<GetPackings> packings);
  Future<List<GetAllProductsModel>> getAllLocalProducts();
  Future<List<GetPackings>> getAllLocalPackings();
  Future<bool> clearLocalProducts();
  Future<bool> clearLocalPackings();
  Future<GetPackings> getPackingsById({required int packingId});
  Future<GetAllProductsModel?> getLocalProductById({required int productId});
}

class LocalProductDatasourceImpl implements LocalProductDatasource {
  final SoftronixBookingDatabase databaseHelper;
  const LocalProductDatasourceImpl({required this.databaseHelper});

  static const String _tableName = 'products';
  static const String _packingTable = 'product_pakings';

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
  Future<List<int>> insertPackingsLocal(List<GetPackings> packings) async {
    try {
      final db = await databaseHelper.database;
      final List<int> results = [];

      await db!.transaction((txn) async {
        for (final packing in packings) {
          try {
            final result = await txn.insert(
              _packingTable,
              packing.toJson(),

              conflictAlgorithm: ConflictAlgorithm.replace,
            );
            results.add(result);
          } catch (e) {
            _logError('Insert Error: $e');
            _logError('Packing: ${packing.toJson()}');
          }
        }
      });

      _logInfo('Inserted ${results.length}/${packings.length} packings');
      return results;
    } catch (e) {
      _logError('Insert Packings Error: $e');
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
  Future<List<GetPackings>> getAllLocalPackings() async {
    try {
      final db = await databaseHelper.database;

      return await db!.transaction((txn) async {
        final List<Map<String, dynamic>> maps = await txn.query(_packingTable);

        final packings = maps.map((map) => GetPackings.fromJson(map)).toList();

        _logInfo('Fetched ${packings.length} local packings');
        return packings;
      });
    } catch (e) {
      _logError('Get Packings Error: $e');
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
  Future<bool> clearLocalPackings() async {
    try {
      final db = await databaseHelper.database;
      final count = await db!.delete(_packingTable);

      _logInfo('Cleared packings table ($count rows)');
      return true;
    } catch (e) {
      _logError('Clear Packings Error: $e');
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

  @override
  Future<GetPackings> getPackingsById({required int packingId}) async {
    try {
      final db = await databaseHelper.database;

      return await db!.transaction((txn) async {
        final maps = await txn.query(
          _packingTable,
          where: 'id = ?',
          whereArgs: [packingId],
          limit: 1,
        );

        if (maps.isNotEmpty) {
          return GetPackings.fromJson(maps.first);
        }
        throw Exception('Packing with ID $packingId not found');
      });
    } catch (e) {
      _logError('Get Packing by ID Error: $e');
      rethrow;
    }
  }
}
