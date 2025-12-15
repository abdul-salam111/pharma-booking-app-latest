class OrderItemsForLocal {
  final int? orderId;
  final String customerId;
  final String customerName;
  final String customerAddress;
  final List<OrderCompanies> companies;
  final DateTime orderDate;
  final DateTime? syncDate;
  final String syncedStatus;
  final double totalAmount;
  final int totalItems;
  final String? guid;

  OrderItemsForLocal({
    this.orderId,
    required this.customerId,
    required this.customerName,
    required this.customerAddress,
    required this.companies,
    required this.orderDate,
    this.syncDate,
    this.syncedStatus = 'No',
    required this.totalAmount,
    required this.totalItems,
    this.guid,
  });

  Map<String, dynamic> toMap() {
    return {
      'orderId': orderId,
      'customerId': customerId,
      'customerName': customerName,
      'customerAddress': customerAddress,
      'orderDate': orderDate.toIso8601String(),
      'syncDate': syncDate?.toIso8601String(),
      'synced': syncedStatus,
      'grandTotalProducts': totalItems,
      'grandTotalAmount': totalAmount,
      'guid': guid,
    };
  }

  factory OrderItemsForLocal.fromMap(Map<String, dynamic> map) {
    return OrderItemsForLocal(
      orderId: map['orderId'],
      customerId: map['customerId'],
      customerName: map['customerName'],
      companies: [], // Will be populated separately
      orderDate: DateTime.parse(map['orderDate']),
      syncDate: map['syncDate'] != null
          ? DateTime.parse(map['syncDate'])
          : null,
      syncedStatus: map['synced'],
      totalAmount: map['grandTotalAmount'],
      totalItems: map['grandTotalProducts'],
      customerAddress: map['customerAddress'] ?? '',
      guid: map['guid'],
    );
  }

  /// copyWith method
  OrderItemsForLocal copyWith({
    int? orderId,
    String? customerId,
    String? customerName,
    List<OrderCompanies>? companies,
    DateTime? orderDate,
    DateTime? syncDate,
    String? syncedStatus,
    double? totalAmount,
    int? totalItems,
    String? customerAddress,
    String? guid,
  }) {
    return OrderItemsForLocal(
      orderId: orderId ?? this.orderId,
      customerId: customerId ?? this.customerId,
      customerName: customerName ?? this.customerName,
      customerAddress: customerAddress ?? this.customerAddress,
      companies: companies ?? this.companies,
      orderDate: orderDate ?? this.orderDate,
      syncDate: syncDate ?? this.syncDate,
      syncedStatus: syncedStatus ?? this.syncedStatus,
      totalAmount: totalAmount ?? this.totalAmount,
      totalItems: totalItems ?? this.totalItems,
      guid: guid ?? this.guid,
    );
  }
}

class OrderCompanies {
  final int? companyOrderId;
  final int? orderId;
  final String companyId;
  final String companyName;
  final List<OrderProducts> products;
  final double companyTotalAmount;
  final int companyTotalItems;

  OrderCompanies({
    this.companyOrderId,
    this.orderId,
    required this.companyId,
    required this.companyName,
    required this.products,

    required this.companyTotalAmount,
    required this.companyTotalItems,
  });

  Map<String, dynamic> toMap() {
    return {
      'companyOrderId': companyOrderId,
      'orderId': orderId,
      'companyId': companyId,
      'companyName': companyName,
      'totalCompanyProducts': companyTotalItems,
      'totalCompanyAmount': companyTotalAmount,
    };
  }

  factory OrderCompanies.fromMap(Map<String, dynamic> map) {
    return OrderCompanies(
      companyOrderId: map['companyOrderId'],
      orderId: map['orderId'],
      companyId: map['companyId'],
      companyName: map['companyName'],
      products: [], // Will be populated separately
      companyTotalAmount: map['totalCompanyAmount'],
      companyTotalItems: map['totalCompanyProducts'],
    );
  }

  /// copyWith method
  OrderCompanies copyWith({
    int? companyOrderId,
    int? orderId,
    String? companyId,
    String? companyName,
    String? companyAddress,
    List<OrderProducts>? products,
    double? companyTotalAmount,
    int? companyTotalItems,
  }) {
    return OrderCompanies(
      companyOrderId: companyOrderId ?? this.companyOrderId,
      orderId: orderId ?? this.orderId,
      companyId: companyId ?? this.companyId,
      companyName: companyName ?? this.companyName,
      products: products ?? this.products,
      companyTotalAmount: companyTotalAmount ?? this.companyTotalAmount,
      companyTotalItems: companyTotalItems ?? this.companyTotalItems,
    );
  }
}

class OrderProducts {
  final int? orderProductId;
  final int? companyOrderId;
  final String productId;
  final String productName;
  final int quantityPack;
  final int? quantityLose;
  final double pricePack;
  final double? priceLose;
  final double? discPercent;
  final double? discValue;
  final int? packingId;
  final int? multiplier;
  final String? packingName;
  final int bonus;
  final double rowTotal;

  OrderProducts({
    this.orderProductId,
    this.companyOrderId,
    required this.productId,

    required this.productName,
    required this.quantityPack,
    this.quantityLose,
    required this.pricePack,
    this.priceLose,
    this.discPercent,
    this.discValue,
    this.multiplier,
    this.packingName,
    this.packingId,
    this.bonus = 0,
    this.rowTotal = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'orderProductId': orderProductId,
      'companyOrderId': companyOrderId,
      'productId': productId,
      'productName': productName,
      'quantityPack': quantityPack,
      'quantityLose': quantityLose,
      'pricePack': pricePack,
      'priceLose': priceLose,
      'discPercent': discPercent,
      'discValue': discValue,
      'multiplier': multiplier,
      'packingName': packingName,
      'packingId': packingId,
      'bonus': bonus,
      'rowTotal': rowTotal,
    };
  }

  factory OrderProducts.fromMap(Map<String, dynamic> map) {
    return OrderProducts(
      orderProductId: map['orderProductId'],
      companyOrderId: map['companyOrderId'],
      productId: map['productId'],
      productName: map['productName'],
      quantityPack: map['quantityPack'],
      quantityLose: map['quantityLose'],
      pricePack: map['pricePack'],
      priceLose: map['priceLose'],
      discPercent: map['discPercent'],
      discValue: map['discValue'],
      multiplier: map['multiplier'],
      packingName: map['packingName'],
      packingId: map['packingId'],
      bonus: map['bonus'],
      rowTotal: map['rowTotal'],
    );
  }

  /// copyWith method
  OrderProducts copyWith({
    int? orderProductId,
    int? companyOrderId,
    String? productId,
    String? productName,
    int? quantityPack,
    int? quantityLose,
    double? discPercent,
    double? discValue,
    double? pricePack,
    double? priceLose,
    int? multiplier,
    int? packingId,
    String? packingName,

    int? bonus,
    double? rowTotal,
  }) {
    return OrderProducts(
      orderProductId: orderProductId ?? this.orderProductId,
      companyOrderId: companyOrderId ?? this.companyOrderId,
      productId: productId ?? this.productId,
      productName: productName ?? this.productName,
      quantityPack: quantityPack ?? this.quantityPack,
      quantityLose: quantityLose ?? this.quantityLose,
      pricePack: pricePack ?? this.pricePack,
      priceLose: priceLose ?? this.priceLose,
      discPercent: discPercent ?? this.discPercent,
      discValue: discValue ?? this.discValue,
      multiplier: multiplier ?? this.multiplier,
      packingName: packingName ?? this.packingName,
      packingId: packingId ?? this.packingId,
      bonus: bonus ?? this.bonus,
      rowTotal: rowTotal ?? this.rowTotal,
    );
  }
}
