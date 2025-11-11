// To parse this JSON data, do
//
//     final syncOrdersModel = syncOrdersModelFromJson(jsonString);

import 'dart:convert';

SyncOrdersModel syncOrdersModelFromJson(String str) =>
    SyncOrdersModel.fromJson(json.decode(str));

String syncOrdersModelToJson(SyncOrdersModel data) =>
    json.encode(data.toJson());

class SyncOrdersModel {
  final Security? security;
  final List<DataList>? dataList;

  SyncOrdersModel({this.security, this.dataList});

  SyncOrdersModel copyWith({Security? security, List<DataList>? dataList}) =>
      SyncOrdersModel(
        security: security ?? this.security,
        dataList: dataList ?? this.dataList,
      );

  factory SyncOrdersModel.fromJson(Map<String, dynamic> json) =>
      SyncOrdersModel(
        security: json["Security"] == null
            ? null
            : Security.fromJson(json["Security"]),
        dataList: json["DataList"] == null
            ? []
            : List<DataList>.from(
                json["DataList"]!.map((x) => DataList.fromJson(x)),
              ),
      );

  Map<String, dynamic> toJson() => {
    "Security": security?.toJson(),
    "DataList": dataList == null
        ? []
        : List<dynamic>.from(dataList!.map((x) => x.toJson())),
  };
}

class DataList {
  final int? tenantOrderId;
  final int? salesmanOrderId;
  final int? deviceOrderId;
  final int? customerId;
  final int? salesmanId;
  final DateTime? orderTime;
  final DateTime? syncDate;
  final List<OrderRowForSync>? orderRows;
  final int? id;
  final int? tenantId;
  final String? guid;

  DataList({
    this.tenantOrderId,
    this.salesmanOrderId,
    this.deviceOrderId,
    this.customerId,
    this.salesmanId,
    this.orderTime,
    this.syncDate,
    this.orderRows,
    this.id,
    this.tenantId,
    this.guid,
  });

  DataList copyWith({
    int? tenantOrderId,
    int? salesmanOrderId,
    int? deviceOrderId,
    int? customerId,
    int? salesmanId,
    DateTime? orderTime,
    DateTime? syncDate,
    List<OrderRowForSync>? orderRows,
    int? id,
    int? tenantId,
    String? guid,
  }) => DataList(
    tenantOrderId: tenantOrderId ?? this.tenantOrderId,
    salesmanOrderId: salesmanOrderId ?? this.salesmanOrderId,
    deviceOrderId: deviceOrderId ?? this.deviceOrderId,
    customerId: customerId ?? this.customerId,
    salesmanId: salesmanId ?? this.salesmanId,
    orderTime: orderTime ?? this.orderTime,
    syncDate: syncDate ?? this.syncDate,
    orderRows: orderRows ?? this.orderRows,
    id: id ?? this.id,
    tenantId: tenantId ?? this.tenantId,
    guid: guid ?? this.guid,
  );

  factory DataList.fromJson(Map<String, dynamic> json) => DataList(
    tenantOrderId: json["TenantOrderId"],
    salesmanOrderId: json["SalesmanOrderId"],
    deviceOrderId: json["DeviceOrderID"],
    customerId: json["CustomerId"],
    salesmanId: json["SalesmanId"],
    orderTime: json["OrderTime"] == null
        ? null
        : DateTime.parse(json["OrderTime"]),
    syncDate: json["SyncDate"] == null
        ? null
        : DateTime.parse(json["SyncDate"]),
    orderRows: json["OrderRows"] == null
        ? []
        : List<OrderRowForSync>.from(
            json["OrderRows"]!.map((x) => OrderRowForSync.fromJson(x)),
          ),
    id: json["ID"],
    tenantId: json["TenantID"],
    guid: json["guid"],
  );

  Map<String, dynamic> toJson() => {
    "TenantOrderId": tenantOrderId,
    "SalesmanOrderId": salesmanOrderId,
    "DeviceOrderID": deviceOrderId,
    "CustomerId": customerId,
    "SalesmanId": salesmanId,
    "OrderTime": orderTime?.toIso8601String(),
    "SyncDate": syncDate?.toIso8601String(),
    "OrderRows": orderRows == null
        ? []
        : List<dynamic>.from(orderRows!.map((x) => x.toJson())),
    "ID": id,
    "TenantID": tenantId,
    "guid": guid,
  };
}

class OrderRowForSync {
  final int? orderId;
  final String? productId;
  final String? tenantProdId;
  final int? qty;
  final int? bonus;
  final double? discRatio;
  final double? price;
  final int? id;
  final int? tenantId;

  OrderRowForSync({
    this.orderId,
    this.productId,
    this.tenantProdId,
    this.qty,
    this.bonus,
    this.discRatio,
    this.price,
    this.id,
    this.tenantId,
  });

  OrderRowForSync copyWith({
    int? orderId,
    String? productId,
    String? tenantProdId,
    int? qty,
    int? bonus,
    double? discRatio,
    double? price,
    int? id,
    int? tenantId,
  }) => OrderRowForSync(
    orderId: orderId ?? this.orderId,
    productId: productId ?? this.productId,
    tenantProdId: tenantProdId ?? this.tenantProdId,
    qty: qty ?? this.qty,
    bonus: bonus ?? this.bonus,
    discRatio: discRatio ?? this.discRatio,
    price: price ?? this.price,
    id: id ?? this.id,
    tenantId: tenantId ?? this.tenantId,
  );

  factory OrderRowForSync.fromJson(Map<String, dynamic> json) =>
      OrderRowForSync(
        orderId: json["OrderId"],
        productId: json["ProductId"],
        tenantProdId: json["TenantProdId"],
        qty: json["Qty"],
        bonus: json["Bonus"],
        discRatio: json["DiscRatio"],
        price: json["Price"],
        id: json["ID"],
        tenantId: json["TenantID"],
      );

  Map<String, dynamic> toJson() => {
    "OrderId": orderId,
    "ProductId": productId,
    "TenantProdId": tenantProdId,
    "Qty": qty,
    "Bonus": bonus,
    "DiscRatio": discRatio,
    "Price": price,
    "ID": id,
    "TenantID": tenantId,
  };
}

class Security {
  final String? mobileNo;
  final String? password;
  final String? customerKey;
  final int? tenantId;

  Security({this.mobileNo, this.password, this.customerKey, this.tenantId});

  Security copyWith({
    String? mobileNo,
    String? password,
    String? customerKey,
    int? tenantId,
  }) => Security(
    mobileNo: mobileNo ?? this.mobileNo,
    password: password ?? this.password,
    customerKey: customerKey ?? this.customerKey,
    tenantId: tenantId ?? this.tenantId,
  );

  factory Security.fromJson(Map<String, dynamic> json) => Security(
    mobileNo: json["MobileNo"],
    password: json["Password"],
    customerKey: json["CustomerKey"],
    tenantId: json["TenantID"],
  );

  Map<String, dynamic> toJson() => {
    "MobileNo": mobileNo,
    "Password": password,
    "CustomerKey": customerKey,
    "TenantID": tenantId,
  };
}
