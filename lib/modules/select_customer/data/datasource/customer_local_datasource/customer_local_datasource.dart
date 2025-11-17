import 'package:flutter/foundation.dart';

import 'package:sqflite/sqflite.dart';

import '../../../../home/presentation/barrel.dart';
import '../../models/get_customers_model/get_customers_model.dart';
import '../../models/get_salesman_model/get_salesman_model.dart';
import '../../models/get_sectors_model/get_sectors_model.dart';
import '../../models/get_towns_model/get_towns_model.dart';

// ============================================================================
// ABSTRACT INTERFACE
// ============================================================================

abstract interface class CustomerLocalDataSource {
  // Read operations
  Future<List<GetCustomersModel>> getAllLocalCustomers();
  Future<List<GetTownsModel>> getAllLocalTowns();
  Future<List<GetSectorsModel>> getAllLocalSectors();
  Future<GetSalesmanModel?> getLocalSalesmanById({required String salesmanId});
  Future<GetCustomersModel?> getLocalCustomerById({required String customerId});

  // Insert operations
  Future<List<int>> insertLocalCustomers(List<GetCustomersModel> customers);
  Future<List<int>> insertLocalTowns(List<GetTownsModel> towns);
  Future<List<int>> insertLocalSectors(List<GetSectorsModel> sectors);
  Future<List<int>> insertLocalSalesmans(List<GetSalesmanModel> salesmans);

  // Clear operations
  Future<bool> clearLocalCustomers();
  Future<bool> clearLocalTowns();
  Future<bool> clearLocalSectors();
  Future<bool> clearLocalSalesmans();
}

// ============================================================================
// IMPLEMENTATION
// ============================================================================

class CustomerLocalDataSourceImpl implements CustomerLocalDataSource {
  final PharmaDatabase databaseHelper;

  CustomerLocalDataSourceImpl({required this.databaseHelper});

  // Table names
  static const String customerTable = 'customers';
  static const String townTable = 'towns';
  static const String sectorTable = 'sectors';
  static const String salesmanTable = 'salesman';

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

  @override
  Future<bool> clearLocalSalesmans() async {
    return await databaseHelper.clearTable(salesmanTable);
  }

  // ==========================================================================
  // READ OPERATIONS
  // ==========================================================================

  @override
  Future<List<GetCustomersModel>> getAllLocalCustomers() async {
    try {
      final dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        final maps = await txn.query(customerTable);

        final customers = maps.map((map) {
          return GetCustomersModel.fromJson({
            'CustomerId': map['CustomerId'],
            'ActualTownId': map['ActualTownId'],
            'CustomerName': map['CustomerName'],
            'Address': map['Address'],
            'City': map['City'],
            'ContactPerson': map['ContactPerson'],
            'Phone1': map['Phone1'],
            'Phone2': map['Phone2'],
            'Phone3': map['Phone3'],
            'GSM': map['GSM'],
            'Email': map['Email'],
            'NTN': map['NTN'],
            'STN': map['STN'],
            'CustomerType': map['CustomerType'],
            'CNIC': map['CNIC'],
            'ID': map['ID'],
            'TenantID': map['TenantID'],
          });
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
  Future<List<GetTownsModel>> getAllLocalTowns() async {
    try {
      final dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        final maps = await txn.query(townTable);

        final towns = maps.map((map) {
          return GetTownsModel.fromJson({
            'ActualSectorId': map['ActualSectorId'],
            'ActualTownId': map['ActualTownId'],
            'TownName': map['TownName'],
            'ID': map['ID'],
            'TenantID': map['TenantID'],
          });
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
  Future<List<GetSectorsModel>> getAllLocalSectors() async {
    try {
      final dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        final maps = await txn.query(sectorTable);

        final sectors = maps.map((map) {
          return GetSectorsModel.fromJson({
            'ActualSectorId': map['ActualSectorId'],
            'SectorName': map['SectorName'],
            'ID': map['ID'],
            'TenantID': map['TenantID'],
          });
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

  @override
  Future<GetSalesmanModel?> getLocalSalesmanById({
    required String salesmanId,
  }) async {
    try {
      var dbClient = await databaseHelper.database;

      return await dbClient!.transaction((txn) async {
        List<Map<String, dynamic>> maps = await txn.query(
          salesmanTable,
          where: 'SalesmanId = ?',
          whereArgs: [salesmanId],
          limit: 1,
        );

        if (maps.isNotEmpty) {
          return GetSalesmanModel(
            allowChangeBonus: maps[0]['AllowChangeBonus'] == "false"
                ? false
                : true,
            allowChangePrice: maps[0]['AllowChangePrice'] == "false"
                ? false
                : true,
            allowChangeDiscount: maps[0]['AllowChangeDiscount'] == "false"
                ? false
                : true,
            id: maps[0]['ID'],
            password: maps[0]['Password'],
            salesmanId: maps[0]['SalesmanId'],
            salesmanName: maps[0]['SalesmanName'],
            tenantId: maps[0]['TenantID'],
            city: maps[0]['City'],
            mobileNumber: maps[0]['MobileNumber'],
          );
        }
        return null;
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error getting salesman by ID: $e');
      }
      return null;
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
              _convertCustomerToDbFormat(customer),
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
  Future<List<int>> insertLocalTowns(List<GetTownsModel> towns) async {
    try {
      final dbClient = await databaseHelper.database;
      final results = <int>[];

      await dbClient!.transaction((txn) async {
        for (final town in towns) {
          try {
            final result = await txn.insert(
              townTable,
              _convertTownToDbFormat(town),
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
  Future<List<int>> insertLocalSectors(List<GetSectorsModel> sectors) async {
    try {
      final dbClient = await databaseHelper.database;
      final results = <int>[];

      await dbClient!.transaction((txn) async {
        for (final sector in sectors) {
          try {
            final result = await txn.insert(
              sectorTable,
              _convertSectorToDbFormat(sector),
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
  Future<List<int>> insertLocalSalesmans(
    List<GetSalesmanModel> salesmans,
  ) async {
    try {
      final dbClient = await databaseHelper.database;
      final results = <int>[];

      await dbClient!.transaction((txn) async {
        for (final salesman in salesmans) {
          try {
            final result = await txn.insert(
              salesmanTable,
              _convertSalesmanToDbFormat(salesman),
              conflictAlgorithm: ConflictAlgorithm.replace,
            );
            results.add(result);
          } catch (e) {
            if (kDebugMode) {
              print('Error inserting individual salesman: $e');
              print('Salesman data: ${salesman.toJson()}');
            }
          }
        }
      });

      if (kDebugMode) {
        print(
          'Successfully inserted ${results.length} salesmen out of ${salesmans.length}',
        );
      }

      return results;
    } catch (e) {
      if (kDebugMode) {
        print('Error inserting salesmen: $e');
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
          return GetCustomersModel.fromJson({
            'CustomerId': maps[0]['CustomerId'],
            'ActualTownId': maps[0]['ActualTownId'],
            'CustomerName': maps[0]['CustomerName'],
            'Address': maps[0]['Address'],
            'City': maps[0]['City'],
            'ContactPerson': maps[0]['ContactPerson'],
            'Phone1': maps[0]['Phone1'],
            'Phone2': maps[0]['Phone2'],
            'Phone3': maps[0]['Phone3'],
            'GSM': maps[0]['GSM'],
            'Email': maps[0]['Email'],
            'NTN': maps[0]['NTN'],
            'STN': maps[0]['STN'],
            'CustomerType': maps[0]['CustomerType'],
            'CNIC': maps[0]['CNIC'],
            'ID': maps[0]['ID'],
            'TenantID': maps[0]['TenantID'],
          });
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

  // ==========================================================================
  // PRIVATE CONVERSION METHODS
  // ==========================================================================

  Map<String, dynamic> _convertCustomerToDbFormat(GetCustomersModel customer) {
    return {
      // 'CustomerId': customer.customerId,
      // 'ActualTownId': customer.actualTownId,
      // 'companyName': null,
      // 'CustomerName': customer.customerName,
      // 'Address': customer.address,
      // 'City': customer.city,
      // 'ContactPerson': customer.contactPerson,
      // 'Phone1': customer.phone1,
      // 'Phone2': customer.phone2,
      // 'Phone3': customer.phone3,
      // 'GSM': customer.gsm,
      // 'Email': customer.email,
      // 'NTN': customer.ntn,
      // 'STN': customer.stn,
      // 'CustomerType': customer.customerType,
      // 'CNIC': customer.cnic,
      // 'ID': customer.id,
      // 'TenantID': customer.tenantId,
    };
  }

  Map<String, dynamic> _convertTownToDbFormat(GetTownsModel town) {
    return {
      'ActualSectorId': town.actualSectorId,
      'ActualTownId': town.actualTownId,
      'TownName': town.townName,
      'ID': town.id,
      'TenantID': town.tenantId,
    };
  }

  Map<String, dynamic> _convertSectorToDbFormat(GetSectorsModel sector) {
    return {
      'ActualSectorId': sector.actualSectorId,
      'SectorName': sector.sectorName,
      'ID': sector.id,
      'TenantID': sector.tenantId,
    };
  }

  Map<String, dynamic> _convertSalesmanToDbFormat(GetSalesmanModel salesman) {
    return {
      'SalesmanId': salesman.salesmanId,
      'SalesmanName': salesman.salesmanName,
      'City': salesman.city,
      'MobileNumber': salesman.mobileNumber,
      'Password': salesman.password,
      'AllowChangePrice': salesman.allowChangePrice == true ? "1" : "0",
      'AllowChangeDiscount': salesman.allowChangeDiscount == true ? "1" : "0",
      'AllowChangeBonus': salesman.allowChangeBonus == true ? "1" : "0",
      'ID': salesman.id,
      'TenantID': salesman.tenantId,
    };
  }
}
