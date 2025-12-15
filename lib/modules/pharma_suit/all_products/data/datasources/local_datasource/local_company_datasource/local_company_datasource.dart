import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import '../../../../../../../core/local_storage/database/database_helper.dart';
import '../../../models/get_companies_model/companies_model.dart';


// ==================== ABSTRACT INTERFACE ====================

abstract interface class LocalCompanyDatasource {
  /// Insert multiple companies into local database
  Future<List<int>> insertCompanies(List<CompaniesModel> companies);

  /// Retrieve all companies from local database
  Future<List<CompaniesModel>> getAllCompanies();

  /// Get a specific company by ID
  Future<CompaniesModel?> getCompanyById(String companyId);

  /// Clear all companies from local database
  Future<bool> clearCompanies();
}

// ==================== IMPLEMENTATION ====================

class LocalCompanyDatasourceImpl implements LocalCompanyDatasource {
  final SoftronixBookingDatabase _databaseHelper;

  /// Table name constant
  static const String _tableName = 'companies';

  // Constructor injection
  LocalCompanyDatasourceImpl({required SoftronixBookingDatabase databaseHelper})
    : _databaseHelper = databaseHelper;

  // ==================== CREATE OPERATIONS ====================

  @override
  Future<List<int>> insertCompanies(List<CompaniesModel> companies) async {
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
              company.toJson(),
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
  Future<List<CompaniesModel>> getAllCompanies() async {
    try {
      final dbClient = await _databaseHelper.database;
      if (dbClient == null) {
        throw Exception('Database client is null');
      }

      return await dbClient.transaction((txn) async {
        final maps = await txn.query(_tableName);

        final companies = maps
            .map((company) => CompaniesModel.fromJson(company))
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
  Future<CompaniesModel?> getCompanyById(String companyId) async {
    try {
      final dbClient = await _databaseHelper.database;
      if (dbClient == null) {
        throw Exception('Database client is null');
      }

      return await dbClient.transaction((txn) async {
        final companies = await txn.query(
          _tableName,
          where: 'id = ?',
          whereArgs: [companyId],
          limit: 1,
        );

        if (companies.isEmpty) {
          if (kDebugMode) {
            print('No company found with ID: $companyId');
          }
          return null;
        }

        final company = CompaniesModel.fromJson(companies.first);

        if (kDebugMode) {
          print('Retrieved company: ${company.name}');
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
}
