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
  Future<GetCustomersModel?> getLocalCustomerById({required int customerId});

  // Insert operations
  Future<List<int>> insertLocalCustomers(List<GetCustomersModel> customers);
  Future<List<int>> insertLocalTowns(List<GetSubAreaListModel> towns);
  Future<List<int>> insertLocalSectors(List<GetAreaListModel> sectors);

  // Clear operations
  Future<bool> clearLocalCustomers();
  Future<bool> clearLocalTowns();
  Future<bool> clearLocalSectors();

  // Count operations
  Future<int> getCustomersCount();
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
    try {
      return await databaseHelper.clearTable(customerTable);
    } catch (e) {
      if (kDebugMode) {
        print('Error clearing customers: $e');
      }
      return false;
    }
  }

  @override
  Future<bool> clearLocalTowns() async {
    try {
      return await databaseHelper.clearTable(townTable);
    } catch (e) {
      if (kDebugMode) {
        print('Error clearing towns: $e');
      }
      return false;
    }
  }

  @override
  Future<bool> clearLocalSectors() async {
    try {
      return await databaseHelper.clearTable(sectorTable);
    } catch (e) {
      if (kDebugMode) {
        print('Error clearing sectors: $e');
      }
      return false;
    }
  }

  // ==========================================================================
  // COUNT OPERATIONS
  // ==========================================================================

  @override
  Future<int> getCustomersCount() async {
    try {
      final dbClient = await databaseHelper.database;
      if (dbClient == null) return 0;

      final result = await dbClient.rawQuery(
        'SELECT COUNT(*) as count FROM $customerTable',
      );
      final count = Sqflite.firstIntValue(result) ?? 0;

      if (kDebugMode) {
        print('Total customers in database: $count');
      }

      return count;
    } catch (e) {
      if (kDebugMode) {
        print('Error getting customers count: $e');
      }
      return 0;
    }
  }

  // ==========================================================================
  // READ OPERATIONS
  // ==========================================================================

  @override
  Future<List<GetCustomersModel>> getAllLocalCustomers() async {
    try {
      final dbClient = await databaseHelper.database;
      if (dbClient == null) {
        if (kDebugMode) {
          print('Database client is null');
        }
        return [];
      }

      return await dbClient.transaction((txn) async {
        final customerData = await txn.query(
          customerTable,
          orderBy: 'customerName ASC',
        );

        if (kDebugMode) {
          print('Raw query returned ${customerData.length} records');
          if (customerData.isNotEmpty) {
            print('First customer data: ${customerData.first}');
          }
        }

        final customers = customerData.map((customer) {
          try {
            return GetCustomersModelDbX.fromDbJson(customer);
          } catch (e) {
            if (kDebugMode) {
              print('Error parsing customer: $e');
              print('Customer data: $customer');
            }
            rethrow;
          }
        }).toList();

        if (kDebugMode) {
          print(
            'Successfully parsed ${customers.length} customers from database',
          );
        }

        return customers;
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error getting customers from database: $e');
        print('Stack trace: ${StackTrace.current}');
      }
      return [];
    }
  }

  @override
  Future<GetCustomersModel?> getLocalCustomerById({
    required int customerId,
  }) async {
    try {
      final dbClient = await databaseHelper.database;
      if (dbClient == null) return null;

      return await dbClient.transaction((txn) async {
        final maps = await txn.query(
          customerTable,
          where: 'id = ?',
          whereArgs: [customerId],
          limit: 1,
        );

        if (maps.isNotEmpty) {
          if (kDebugMode) {
            print('Found customer with ID $customerId');
          }
          return GetCustomersModelDbX.fromDbJson(maps.first);
        }

        if (kDebugMode) {
          print('No customer found with ID $customerId');
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

  @override
  Future<List<GetSubAreaListModel>> getAllLocalTowns() async {
    try {
      final dbClient = await databaseHelper.database;
      if (dbClient == null) return [];

      return await dbClient.transaction((txn) async {
        final maps = await txn.query(townTable, orderBy: 'name ASC');

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
      if (dbClient == null) return [];

      return await dbClient.transaction((txn) async {
        final maps = await txn.query(sectorTable, orderBy: 'name ASC');

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
      if (dbClient == null) {
        if (kDebugMode) {
          print('Database client is null, cannot insert customers');
        }
        return [];
      }

      final results = <int>[];
      int successCount = 0;

      await dbClient.transaction((txn) async {
        for (int i = 0; i < customers.length; i++) {
          final customer = customers[i];
          try {
            final dbJson = customer.toDbJson();

            if (kDebugMode && i == 0) {
              print('First customer DB JSON: $dbJson');
            }

            final result = await txn.insert(
              customerTable,
              dbJson,
              conflictAlgorithm: ConflictAlgorithm.replace,
            );

            results.add(result);
            successCount++;

            if (kDebugMode && (i % 100 == 0 || i == customers.length - 1)) {
              print('Inserted ${i + 1}/${customers.length} customers');
            }
          } catch (e) {
            if (kDebugMode) {
              print(
                'Error inserting customer ${customer.id} (${customer.customerName}): $e',
              );
              print('Customer data: ${customer.toJson()}');
            }
          }
        }
      });

      if (kDebugMode) {
        print('Successfully inserted: $successCount');
      }

      return results;
    } catch (e) {
      if (kDebugMode) {
        print('Fatal error inserting customers: $e');
        print('Stack trace: ${StackTrace.current}');
      }
      return [];
    }
  }

  @override
  Future<List<int>> insertLocalTowns(List<GetSubAreaListModel> towns) async {
    try {
      final dbClient = await databaseHelper.database;
      if (dbClient == null) return [];

      final results = <int>[];

      await dbClient.transaction((txn) async {
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
              print('Error inserting town: $e');
              print('Town data: ${town.toJson()}');
            }
          }
        }
      });

      if (kDebugMode) {
        print('Successfully inserted ${results.length}/${towns.length} towns');
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
      if (dbClient == null) return [];

      final results = <int>[];

      await dbClient.transaction((txn) async {
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
              print('Error inserting sector: $e');
              print('Sector data: ${sector.toJson()}');
            }
          }
        }
      });

      if (kDebugMode) {
        print(
          'Successfully inserted ${results.length}/${sectors.length} sectors',
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
}
