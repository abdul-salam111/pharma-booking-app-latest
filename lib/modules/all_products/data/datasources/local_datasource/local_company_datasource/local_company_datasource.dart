import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import '../../../../../../core/local_storage/database/database_helper.dart';
import '../../../models/get_companies_model/get_companies_model.dart';

// ==================== ABSTRACT INTERFACE ====================

abstract interface class LocalCompanyDatasource {
  /// Insert multiple companies into local database
  Future<List<int>> insertCompanies(List<GetCompaniesModel> companies);

  /// Retrieve all companies from local database
  Future<List<GetCompaniesModel>> getAllCompanies();

  /// Get a specific company by ID
  Future<GetCompaniesModel?> getCompanyById(String companyId);

  /// Clear all companies from local database
  Future<bool> clearCompanies();
}

// ==================== IMPLEMENTATION ====================

class LocalCompanyDatasourceImpl implements LocalCompanyDatasource {
  final PharmaDatabase _databaseHelper;

  /// Table name constant
  static const String _tableName = 'companies';

  // Constructor injection
  LocalCompanyDatasourceImpl({required PharmaDatabase databaseHelper})
    : _databaseHelper = databaseHelper;

  // ==================== CREATE OPERATIONS ====================

  @override
  Future<List<int>> insertCompanies(List<GetCompaniesModel> companies) async {
    try {
      final dbClient = await _databaseHelper.database;
      if (dbClient == null) {
        throw Exception('Database client is null');
      }

      final List<int> results = [];

      await dbClient.transaction((txn) async {
        for (final company in companies) {
          try {
            final result = await txn.insert(
              _tableName,
              _convertCompanyToDbFormat(company),
              conflictAlgorithm: ConflictAlgorithm.replace,
            );
            results.add(result);
          } catch (e) {
            if (kDebugMode) {
              print('Error inserting individual company: $e');
              print('Company data: ${company.toJson()}');
            }
          }
        }
      });

      if (kDebugMode) {
        print(
          'Successfully inserted ${results.length} companies out of ${companies.length}',
        );
      }

      return results;
    } catch (e) {
      if (kDebugMode) {
        print('Error inserting companies: $e');
      }
      rethrow;
    }
  }

  // ==================== READ OPERATIONS ====================

  @override
  Future<List<GetCompaniesModel>> getAllCompanies() async {
    try {
      final dbClient = await _databaseHelper.database;
      if (dbClient == null) {
        throw Exception('Database client is null');
      }

      return await dbClient.transaction((txn) async {
        final maps = await txn.query(_tableName);

        final companies = maps
            .map((map) => GetCompaniesModel.fromJson(_mapToJson(map)))
            .toList();

        if (kDebugMode) {
          print('Retrieved ${companies.length} companies from database');
        }

        return companies;
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error getting companies from database: $e');
      }
      rethrow;
    }
  }

  @override
  Future<GetCompaniesModel?> getCompanyById(String companyId) async {
    try {
      final dbClient = await _databaseHelper.database;
      if (dbClient == null) {
        throw Exception('Database client is null');
      }

      return await dbClient.transaction((txn) async {
        final maps = await txn.query(
          _tableName,
          where: 'CompanyId = ?',
          whereArgs: [companyId],
          limit: 1,
        );

        if (maps.isEmpty) {
          if (kDebugMode) {
            print('No company found with ID: $companyId');
          }
          return null;
        }

        final company = GetCompaniesModel.fromJson(_mapToJson(maps.first));

        if (kDebugMode) {
          print('Retrieved company: ${company.companyName}');
        }

        return company;
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error getting company by ID: $e');
      }
      rethrow;
    }
  }

  // ==================== DELETE OPERATIONS ====================

  @override
  Future<bool> clearCompanies() async {
    try {
      final dbClient = await _databaseHelper.database;
      if (dbClient == null) {
        throw Exception('Database client is null');
      }

      final deletedRows = await dbClient.delete(_tableName);

      if (kDebugMode) {
        print('Companies table cleared. Deleted $deletedRows rows');
      }

      return true;
    } catch (e) {
      if (kDebugMode) {
        print('Error clearing companies: $e');
      }
      rethrow;
    }
  }

  // ==================== HELPER METHODS ====================

  /// Convert GetCompaniesModel to database format
  Map<String, dynamic> _convertCompanyToDbFormat(GetCompaniesModel company) {
    return {
      'CompanyId': company.companyId,
      'CompanyName': company.companyName,
      'ASMTitle': company.asmTitle,
      'DistributionCode': company.distributionCode,
      'ID': company.id,
      'TenantID': company.tenantId,
    };
  }

  /// Convert database map to JSON format for model
  Map<String, dynamic> _mapToJson(Map<String, dynamic> map) {
    return {
      'CompanyId': map['CompanyId'],
      'CompanyName': map['CompanyName'],
      'ASMTitle': map['ASMTitle'],
      'DistributionCode': map['DistributionCode'],
      'ID': map['ID'],
      'TenantID': map['TenantID'],
    };
  }
}
