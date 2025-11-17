import 'package:flutter/foundation.dart';

import 'package:sqflite/sqflite.dart';

import '../../../../home/presentation/barrel.dart';

// ============================================================================
// ABSTRACT INTERFACE
// ============================================================================

abstract interface class CustomerLocalDataSource {
  // Read operations
  Future<List<GetCustomersModel>> getAllLocalCustomers();
  Future<List<GetSubAreaListModel>> getAllLocalTowns();
  Future<List<GetAreaListModel>> getAllLocalSectors();
  Future<GetCustomersModel?> getLocalCustomerById({required String customerId});

  // Insert operations
  Future<List<int>> insertLocalCustomers(List<GetCustomersModel> customers);
  Future<List<int>> insertLocalTowns(List<GetSubAreaListModel> towns);
  Future<List<int>> insertLocalSectors(List<GetAreaListModel> sectors);

  // Clear operations
  Future<bool> clearLocalCustomers();
  Future<bool> clearLocalTowns();
  Future<bool> clearLocalSectors();
}

// ============================================================================
// IMPLEMENTATION
// ============================================================================

class CustomerLocalDataSourceImpl implements CustomerLocalDataSource {
  final PharmaDatabase databaseHelper;

  CustomerLocalDataSourceImpl({required this.databaseHelper});

  // Table names
  static const String customerTable = 'customers';
  static const String townTable = 'subareas';
  static const String sectorTable = 'areas';

  // ==========================================================================
  // CLEAR OPERATIONS
  // ==========================================================================

  @override
  Future<bool> clearLocalCustomers() async {
    return await databaseHelper.clearTable(customerTable);
  }

  @override
  Future<bool> clearLocalTowns() async {
    return await databaseHelper.clearTable(townTable);
  }

  @override
  Future<bool> clearLocalSectors() async {
    return await databaseHelper.clearTable(sectorTable);
  }

  // ==========================================================================
  // READ OPERATIONS
  // ==========================================================================

  @override
  Future<List<GetCustomersModel>> getAllLocalCustomers() async {
    try {
      final dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        final customerData = await txn.query(customerTable);

        final customers = customerData.map((customer) {
          return GetCustomersModelDbX.fromDbJson(customer);
        }).toList();

        if (kDebugMode) {
          print('Retrieved ${customers.length} customers from database');
        }

        return customers;
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error getting customers from database: $e');
      }
      return [];
    }
  }

  @override
  Future<List<GetSubAreaListModel>> getAllLocalTowns() async {
    try {
      final dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        final maps = await txn.query(townTable);

        final towns = maps.map((map) {
          return GetSubAreaListModel.fromJson(map);
        }).toList();

        if (kDebugMode) {
          print('Retrieved ${towns.length} towns from database');
        }

        return towns;
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error getting towns from database: $e');
      }
      return [];
    }
  }

  @override
  Future<List<GetAreaListModel>> getAllLocalSectors() async {
    try {
      final dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        final maps = await txn.query(sectorTable);

        final sectors = maps.map((map) {
          return GetAreaListModel.fromJson(map);
        }).toList();

        if (kDebugMode) {
          print('Retrieved ${sectors.length} sectors from database');
        }

        return sectors;
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error getting sectors from database: $e');
      }
      return [];
    }
  }

  // ==========================================================================
  // INSERT OPERATIONS
  // ==========================================================================

  @override
  Future<List<int>> insertLocalCustomers(
    List<GetCustomersModel> customers,
  ) async {
    try {
      final dbClient = await databaseHelper.database;
      final results = <int>[];

      await dbClient!.transaction((txn) async {
        for (final customer in customers) {
          try {
            final result = await txn.insert(
              customerTable,
              customer.toDbJson(),
              conflictAlgorithm: ConflictAlgorithm.replace,
            );
            results.add(result);
          } catch (e) {
            if (kDebugMode) {
              print('Error inserting individual customer: $e');
              print('Customer data: ${customer.toJson()}');
            }
          }
        }
      });

      if (kDebugMode) {
        print(
          'Successfully inserted ${results.length} customers out of ${customers.length}',
        );
      }

      return results;
    } catch (e) {
      if (kDebugMode) {
        print('Error inserting customers: $e');
      }
      return [];
    }
  }

  @override
  Future<List<int>> insertLocalTowns(List<GetSubAreaListModel> towns) async {
    try {
      final dbClient = await databaseHelper.database;
      final results = <int>[];

      await dbClient!.transaction((txn) async {
        for (final town in towns) {
          try {
            final result = await txn.insert(
              townTable,
              town.toJson(),
              conflictAlgorithm: ConflictAlgorithm.replace,
            );
            results.add(result);
          } catch (e) {
            if (kDebugMode) {
              print('Error inserting individual town: $e');
              print('Town data: ${town.toJson()}');
            }
          }
        }
      });

      if (kDebugMode) {
        print(
          'Successfully inserted ${results.length} towns out of ${towns.length}',
        );
      }

      return results;
    } catch (e) {
      if (kDebugMode) {
        print('Error inserting towns: $e');
      }
      return [];
    }
  }

  @override
  Future<List<int>> insertLocalSectors(List<GetAreaListModel> sectors) async {
    try {
      final dbClient = await databaseHelper.database;
      final results = <int>[];

      await dbClient!.transaction((txn) async {
        for (final sector in sectors) {
          try {
            final result = await txn.insert(
              sectorTable,
              sector.toJson(),
              conflictAlgorithm: ConflictAlgorithm.replace,
            );
            results.add(result);
          } catch (e) {
            if (kDebugMode) {
              print('Error inserting individual sector: $e');
              print('Sector data: ${sector.toJson()}');
            }
          }
        }
      });

      if (kDebugMode) {
        print(
          'Successfully inserted ${results.length} sectors out of ${sectors.length}',
        );
      }

      return results;
    } catch (e) {
      if (kDebugMode) {
        print('Error inserting sectors: $e');
      }
      return [];
    }
  }

  @override
  Future<GetCustomersModel?> getLocalCustomerById({
    required String customerId,
  }) async {
    try {
      var dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        List<Map<String, dynamic>> maps = await txn.query(
          'customers',
          where: 'ID = ?',
          whereArgs: [customerId],
          limit: 1,
        );

        if (maps.isNotEmpty) {
          return GetCustomersModelDbX.fromDbJson(maps.first);
        }
        return null;
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error getting customer by ID: $e');
      }
      return null;
    }
  }
}

extension GetCustomersModelDbX on GetCustomersModel {
  /// Convert model to SQLite map
  Map<String, dynamic> toDbJson() {
    return {
      'id': id,
      'customerName': customerName,
      'ordSubAreaId': ordSubAreaId ?? 0,
      'city': city,
      'contactPerson': contactPerson,
      'phone1': phone1,
      'email': email,
      'customerType': customerType,
      'ordersCount': ordersCount ?? 0,
      'isActive': (isActive ?? false) ? 1 : 0,
      'creditLimit': creditLimit ?? 0,
      'openingBalance': openingBalance ?? 0,
      'currentBalance': currentBalance ?? 0,
      'isFiler': (isFiler ?? false) ? 1 : 0,
    };
  }

  /// Static helper to create a model from SQLite map
  static GetCustomersModel fromDbJson(Map<String, dynamic> json) {
    return GetCustomersModel(
      id: json['id'] as int?,
      customerName: json['customerName'] as String?,
      ordSubAreaId: json['ordSubAreaId'] as int?,
      city: json['city'] as String?,
      contactPerson: json['contactPerson'] as String?,
      phone1: json['phone1'] as String?,
      email: json['email'] as String?,
      customerType: json['customerType'] as String?,
      ordersCount: json['ordersCount'] as int? ?? 0,
      isActive: (json['isActive'] as int? ?? 0) == 1,
      creditLimit: (json['creditLimit'] as num?)?.toDouble() ?? 0.0,
      openingBalance: (json['openingBalance'] as num?)?.toDouble() ?? 0.0,
      currentBalance: (json['currentBalance'] as num?)?.toDouble() ?? 0.0,
      isFiler: (json['isFiler'] as int? ?? 0) == 1,
    );
  }
}
