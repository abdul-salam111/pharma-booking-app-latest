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
      // Execute all table creation in a single transaction
      await db.transaction((txn) async {
        // Create companies table
        await txn.execute('''
          CREATE TABLE companies(
            CompanyId TEXT,
            CompanyName TEXT,
            ASMTitle TEXT,
            DistributionCode TEXT,
            ID INTEGER,
            TenantID INTEGER
          )
        ''');

        // Create sectors table
        await txn.execute('''
          CREATE TABLE sectors(
            ActualSectorId INTEGER,
            SectorName TEXT,
            ID INTEGER,
            TenantID INTEGER
          )
        ''');

        // Create towns table
        await txn.execute('''
          CREATE TABLE towns(
            ActualSectorId INTEGER,
            ActualTownId INTEGER,
            TownName TEXT,
            ID INTEGER,
            TenantID INTEGER
          )
        ''');

        // Create customers table
        await txn.execute('''
          CREATE TABLE customers(
            CustomerId TEXT,
            ActualTownId INTEGER,
            companyName TEXT,
            CustomerName TEXT,
            Address TEXT,
            City TEXT,
            ContactPerson TEXT,
            Phone1 TEXT,
            Phone2 TEXT,
            Phone3 TEXT,
            GSM TEXT,
            Email TEXT,
            NTN TEXT,
            STN TEXT,
            CustomerType TEXT,
            CNIC TEXT,
            ID INTEGER,
            TenantID INTEGER
          )
        ''');

        // Create salesman table
        await txn.execute('''
          CREATE TABLE salesman(
            SalesmanId TEXT,
            SalesmanName TEXT,
            City TEXT,
            MobileNumber TEXT,
            Password TEXT,
            AllowChangePrice TEXT,
            AllowChangeDiscount TEXT,
            AllowChangeBonus TEXT,
            ID INTEGER,
            TenantID INTEGER
          )
        ''');

        // Create products table
        await txn.execute('''
          CREATE TABLE products(
            CompanyId INTEGER,
            StrCompanyId TEXT,
            ProductId TEXT,
            GroupId INTEGER,
            ProductName TEXT,
            Packing TEXT,
            TradePrice REAL,
            SaleDiscRatio REAL,
            CurrentStock INTEGER,
            IsInActive INTEGER,
            ID INTEGER,
            TenantID INTEGER
          )
        ''');

        // Create orders table
        await txn.execute('''
          CREATE TABLE orders(
            orderId INTEGER PRIMARY KEY AUTOINCREMENT,
            customerId TEXT,
            customerName TEXT,
            customerAddress TEXT,
            orderDate TEXT,
            syncDate TEXT,
            synced TEXT DEFAULT 'No',
            grandTotalProducts INTEGER DEFAULT 0,
            grandTotalAmount REAL DEFAULT 0,
            guid TEXT
          )
        ''');

        // Create order companies table (junction table for orders and companies)
        await txn.execute('''
          CREATE TABLE order_companies(
            companyOrderId INTEGER PRIMARY KEY AUTOINCREMENT,
            orderId INTEGER,
            companyId TEXT,
            companyName TEXT,
            totalCompanyProducts INTEGER DEFAULT 0,
            totalCompanyAmount REAL DEFAULT 0,
            FOREIGN KEY (orderId) REFERENCES orders(orderId) ON DELETE CASCADE
          )
        ''');

        // Create order products table (stores individual products in each order)
        await txn.execute('''
          CREATE TABLE order_products(
            orderProductId INTEGER PRIMARY KEY AUTOINCREMENT,
            companyOrderId INTEGER,
            productId TEXT,
            productName TEXT,
            quantity INTEGER,
            bonus INTEGER DEFAULT 0,
            discRatio REAL DEFAULT 0,
            price REAL,
            FOREIGN KEY (companyOrderId) REFERENCES order_companies(companyOrderId) ON DELETE CASCADE
          )
        ''');
      });

      if (kDebugMode) {
        print('All database tables created successfully');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error creating database tables: $e');
      }
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
