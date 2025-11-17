// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;
import 'package:path/path.dart';

class PharmaDatabase {
  // ==================== SINGLETON PATTERN ====================

  /// Private static instance of the database
  static Database? _db;

  /// Database version for migration management
  static const int _databaseVersion = 1;

  /// Database name
  static const String _databaseName = "pharmaApp.db";

  // ==================== DATABASE INITIALIZATION ====================

  /// Get the database instance (singleton pattern)
  /// Creates the database if it doesn't exist
  Future<Database?> get database async {
    if (_db != null) return _db;
    _db = await initializeDatabase();
    return _db;
  }

  /// Initialize the SQLite database
  /// Sets up the database file path and handles creation/upgrade
  Future<Database> initializeDatabase() async {
    try {
      // Get the application documents directory
      io.Directory documentDirectory = await getApplicationDocumentsDirectory();
      String path = join(documentDirectory.path, _databaseName);

      // Open/create the database with version control
      var db = await openDatabase(
        path,
        version: _databaseVersion,
        onCreate: _onCreate,
        onUpgrade: _onUpgrade,
      );

      if (kDebugMode) {
        print('Database initialized successfully at: $path');
      }

      return db;
    } catch (e) {
      if (kDebugMode) {
        print('Error initializing database: $e');
      }
      rethrow;
    }
  }

  /// Create database tables when database is first created
  /// This method is called only once when the database is created
 Future<void> _onCreate(Database db, int version) async {
  try {
    await db.transaction((txn) async {

      // ============== COMPANIES TABLE ==============
      await txn.execute('''
        CREATE TABLE companies(
          id INTEGER,
          name TEXT
        )
      ''');

      // ============== AREAS TABLE ==============
      await txn.execute('''
        CREATE TABLE areas(
          id INTEGER,
          name TEXT
        )
      ''');

      // ============== SUBAREAS TABLE ==============
      await txn.execute('''
        CREATE TABLE subareas(
          id INTEGER,
          name TEXT,
          ordAreaId INTEGER
        )
      ''');

      // ============== CUSTOMERS TABLE ==============
      await txn.execute('''
        CREATE TABLE customers(
          id INTEGER,
          customerName TEXT,
          ordSubAreaId INTEGER,
          city TEXT,
          contactPerson TEXT,
          phone1 TEXT,
          email TEXT,
          customerType TEXT,
          ordersCount INTEGER,
          isActive INTEGER,
          creditLimit REAL,
          openingBalance REAL,
          currentBalance REAL,
          isFiler INTEGER
        )
      ''');

      // ============== PRODUCTS TABLE ==============
      await txn.execute('''
        CREATE TABLE products(
          id INTEGER,
          productName TEXT,
          companyId INTEGER,
          pricePackPur REAL,
          retailPrice REAL,
          discRatioPur REAL,
          saleDiscRatio REAL,
          pricePackSal1 REAL,
          pricePackSal2 REAL,
          pricePackSal3 REAL,
          discRatioSal1 REAL,
          discRatioSal2 REAL,
          discRatioSal3 REAL,
          sTaxRatio REAL,
          sTaxValPack REAL,
          isSTaxOnBnsSal INTEGER,
          displayOrder INTEGER,
          tradePrice REAL,
          packings TEXT
        )
      ''');

    });

    if (kDebugMode) print("All database tables created successfully");
  } catch (e) {
    if (kDebugMode) print("Error creating tables: $e");
    rethrow;
  }
}


  /// Handle database upgrades when version changes
  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < newVersion) {
      if (kDebugMode) {
        print("Database upgraded from $oldVersion to $newVersion");
      }
      // Add migration logic here when needed
      // Example: ALTER TABLE statements, new table creation, etc.
    }
  }

  // ==================== CLEAR/DELETE METHODS ====================
  // These methods handle data cleanup and table management
  /// Clear a specific table by name
  /// Generic method that can clear any table
  Future<bool> clearTable(String tableName) async {
    try {
      var dbClient = await database;
      int deletedRows = await dbClient!.delete(tableName);

      if (kDebugMode) {
        print(
          'Table $tableName cleared successfully. Deleted $deletedRows rows',
        );
      }
      return true;
    } catch (e) {
      if (kDebugMode) {
        print('Error clearing table $tableName: $e');
      }
      rethrow;
    }
  }

  /// Delete all orders and their related data from the database
  /// This will remove all records from orders, order_companies, and order_products tables
  /// Returns the number of orders deleted or -1 on error
  Future<int> deleteAllOrders() async {
    try {
      var dbClient = await database;

      return await dbClient!.transaction((txn) async {
        // Delete all order products first (due to foreign key constraints)
        int orderProductsDeleted = await txn.delete('order_products');

        // Delete all order companies
        int orderCompaniesDeleted = await txn.delete('order_companies');

        // Delete all orders
        int ordersDeleted = await txn.delete('orders');

        if (kDebugMode) {
          print(
            'Deleted all orders: $ordersDeleted orders, '
            '$orderCompaniesDeleted companies, '
            '$orderProductsDeleted products',
          );
        }

        return ordersDeleted;
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error deleting all orders: $e');
      }
      return -1;
    }
  }
}
