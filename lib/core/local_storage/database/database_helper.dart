// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;
import 'package:path/path.dart';

class SoftronixBookingDatabase {
  // ==================== SINGLETON PATTERN ====================

  /// Private static instance of the database
  static Database? _db;

  /// Database version for migration management
  static const int _databaseVersion = 1;

  /// Database name
  static const String _databaseName = "softronixbookingApp.db";

  // ==================== DATABASE INITIALIZATION ====================

  /// Get the database instance (singleton pattern)
  /// Creates the database if it doesn't exist
  Future<Database?> get database async {
    if (_db != null) return _db;
    _db = await initializeDatabase();
    return _db;
  }

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
          areaId INTEGER
        )
      ''');

        // ============== CUSTOMERS TABLE ==============
        await txn.execute('''
  CREATE TABLE customers(
    id INTEGER PRIMARY KEY,
    customerName TEXT,
    address TEXT,
    city TEXT,
    contactPerson TEXT,
    phone1 TEXT,
    mobile TEXT,
    email TEXT,
    ntn TEXT,
    stn TEXT,
    customerType TEXT,
    ordersCount INTEGER,
    priceLevel INTEGER,
    isActive INTEGER,
    creditDays INTEGER,
    creditLimit INTEGER,
    currentBalance INTEGER,
    lastOrderDate TEXT,
    lastPaymentDate TEXT,
    isFiler INTEGER,
    latitude REAL,
    longitude REAL,
    ordSubAreaId INTEGER,
    subAreaName TEXT,
    areaId INTEGER,
    defaultPrice INTEGER
  )
''');
        // ============== PRODUCTS TABLE ==============
        await txn.execute('''
    CREATE TABLE products(
      id INTEGER,
      productName TEXT,
      companyId INTEGER,
      groupId INTEGER,
      purPackingId INTEGER,
      salPackingId INTEGER,
      pricePackSal1 REAL,
      pricePackSal2 REAL,
      pricePackSal3 REAL,
      saleDiscRatio REAL,
      discRatioSal1 REAL,
      discRatioSal2 REAL,
      discRatioSal3 REAL,
      discValPackSal1 INTEGER,
      isValueB4Ratio INTEGER,
      sTaxRatio REAL,
      isSTaxOnBnsSal INTEGER,
      size TEXT,
      unit TEXT,
      packSize TEXT,
      tradePrice REAL,
      currentStock INTEGER,
      packings TEXT
    )
  ''');
        // Create product packings table
        await txn.execute('''
          CREATE TABLE product_pakings(
            id INTEGER,
           packingName TEXT,
           abbrevation TEXT
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
            isFailed INTEGER DEFAULT 0,
            syncTries INTEGER DEFAULT 0,
            grandTotalProducts INTEGER DEFAULT 0,
            grandTotalAmount REAL DEFAULT 0,
            orderLat REAL,
            orderLng REAL,
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
    quantityPack INTEGER,
    quantityLose INTEGER,
    pricePack REAL,
    priceLose REAL,
    discRatio REAL,
    discValuePack REAL,
    multiplier INTEGER,
    packingId INTEGER,
    packingName TEXT,     
    bonus INTEGER DEFAULT 0,
    sTaxRatio REAL,
    rowTotal REAL,
    
    FOREIGN KEY (companyOrderId) REFERENCES order_companies(companyOrderId) ON DELETE CASCADE
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
