// 📦 Barrel file for syncing usecases, models, and services
// This file re-exports all imports required by the sync controller

// Core
export 'package:flutter/material.dart';
export 'package:get/get.dart';
export 'package:pharma_booking_app/core/core.dart';

export '../../../../core/services/session_manager.dart';
export '../../../../core/local_storage/storage.dart';
export '../../../../core/routes/app_pages.dart';
export 'package:pharma_booking_app/core/shared/domain/usecases/usecase.dart';

// 🧾 Create Order Usecases
export 'package:pharma_booking_app/modules/pharma_suit/create_order/domain/usecases/local_usecases/get_unsync_orders_usecase.dart';
export 'package:pharma_booking_app/modules/pharma_suit/create_order/domain/usecases/local_usecases/get_count_unsyncorders_usecase.dart';
export 'package:pharma_booking_app/modules/pharma_suit/create_order/domain/usecases/local_usecases/update_orders_sync_status_usecase.dart';
export 'package:pharma_booking_app/modules/pharma_suit/create_order/domain/usecases/remote_usecases/create_orders_remotely_usecase.dart';

// 🧪 Product Usecases
export 'package:pharma_booking_app/modules/pharma_suit/all_products/domain/usecases/products_usecases/product_local_usecases/get_all_local_products_usecase.dart';
export 'package:pharma_booking_app/modules/pharma_suit/all_products/domain/usecases/products_usecases/product_local_usecases/insert_products_locally_usecase.dart';
export 'package:pharma_booking_app/modules/pharma_suit/all_products/domain/usecases/products_usecases/product_local_usecases/clear_local_products_usecase.dart';
export 'package:pharma_booking_app/modules/pharma_suit/all_products/domain/usecases/products_usecases/product_remote_usecases/get_all_remote_products_usecase.dart';

// 🏢 Company Usecases
export 'package:pharma_booking_app/modules/pharma_suit/all_products/domain/usecases/companies_usecases/company_local_usecases/get_all_local_companies_usecase.dart';
export 'package:pharma_booking_app/modules/pharma_suit/all_products/domain/usecases/companies_usecases/company_local_usecases/insert_local_companies_usecase.dart';
export 'package:pharma_booking_app/modules/pharma_suit/all_products/domain/usecases/companies_usecases/company_local_usecases/clear_local_companies_usecase.dart';
export 'package:pharma_booking_app/modules/pharma_suit/all_products/domain/usecases/companies_usecases/company_remote_usecases/get_all_companies_usecase.dart';

// 👥 Customer Remote Usecases
export 'package:pharma_booking_app/modules/common/select_customer/domain/usecases/remote_usecases/get_all_customers_usecase.dart';

export 'package:pharma_booking_app/modules/common/select_customer/domain/usecases/remote_usecases/get_all_sectors_usecase.dart';
export 'package:pharma_booking_app/modules/common/select_customer/domain/usecases/remote_usecases/get_all_towns_usecase.dart';

// 👥 Customer Local Usecases
export 'package:pharma_booking_app/modules/common/select_customer/domain/usecases/local_usecases/get_all_local_customers_usecase.dart';

export 'package:pharma_booking_app/modules/common/select_customer/domain/usecases/local_usecases/get_all_local_areas_usecase.dart';
export 'package:pharma_booking_app/modules/common/select_customer/domain/usecases/local_usecases/get_all_local_sub_areas_usecase.dart';
export 'package:pharma_booking_app/modules/common/select_customer/domain/usecases/local_usecases/insert_customers_local_usecase.dart';

export 'package:pharma_booking_app/modules/common/select_customer/domain/usecases/local_usecases/insert_areas_local_usecase.dart';

export 'package:pharma_booking_app/modules/common/select_customer/domain/usecases/local_usecases/clear_customers_local_usecase.dart';

export 'package:pharma_booking_app/modules/common/select_customer/domain/usecases/local_usecases/clear_sectors_local_usecase.dart';
export 'package:pharma_booking_app/modules/common/select_customer/domain/usecases/local_usecases/clear_towns_local_usecase.dart';

export 'package:pharma_booking_app/core/shared/models/post_models/create_order_for_local.dart';
export 'package:pharma_booking_app/core/shared/models/post_models/sync_orders_model.dart';

export 'package:pharma_booking_app/modules/pharma_suit/all_products/data/models/get_companies_model/companies_model.dart';
export 'package:pharma_booking_app/modules/pharma_suit/all_products/data/models/get_products_model/get_all_products_model.dart';
export 'package:pharma_booking_app/modules/common/select_customer/data/models/get_customers_model/get_customers_model.dart';
export 'package:pharma_booking_app/modules/common/select_customer/data/models/get_salesman_model/get_salesman_model.dart';
export 'package:pharma_booking_app/modules/common/select_customer/data/models/get_area_list_model/get_area_list_model.dart';
export 'package:pharma_booking_app/modules/common/select_customer/data/models/get_sub_area_list_model/get_sub_area_list_model.dart';

// 📦 Barrel file for Home Module Dependency Injection
// Exports all repositories, datasources, and usecases required by HomeController

export 'package:pharma_booking_app/core/local_storage/database/database_helper.dart';
export 'package:pharma_booking_app/core/networks/network_manager/dio_helper.dart';

export 'controllers/home_controller.dart';

// 🧾 CREATE ORDER MODULE
export 'package:pharma_booking_app/modules/pharma_suit/create_order/data/datasources/create_orders_local_datasource/create_orders_local_datasource.dart';
export 'package:pharma_booking_app/modules/pharma_suit/create_order/data/datasources/create_orders_remote_datasource/create_orders_remote_datasource.dart';
export 'package:pharma_booking_app/modules/pharma_suit/create_order/data/repository_impl/create_orders_repository_impl.dart';
export 'package:pharma_booking_app/modules/pharma_suit/create_order/domain/repository/create_orders_repository.dart';

// 👥 CUSTOMER MODULE
export 'package:pharma_booking_app/modules/common/select_customer/data/datasource/customer_local_datasource/customer_local_datasource.dart';
export 'package:pharma_booking_app/modules/common/select_customer/data/datasource/customer_remote_datasource/customer_remote_datasource.dart';
export 'package:pharma_booking_app/modules/common/select_customer/data/repository_impl/customer_repository_impl.dart';
export 'package:pharma_booking_app/modules/common/select_customer/domain/customer_repository/customer_repository.dart';

// 🧩 PRODUCT MODULE
export 'package:pharma_booking_app/modules/pharma_suit/all_products/data/datasources/local_datasource/local_product_datasource/local_product_datasource.dart';
export 'package:pharma_booking_app/modules/pharma_suit/all_products/data/datasources/remote_datasource/remote_product_datasource/remote_product_datasource.dart';
export 'package:pharma_booking_app/modules/pharma_suit/all_products/data/repository_impl/products_repo_impl/product_repo_impl.dart';
export 'package:pharma_booking_app/modules/pharma_suit/all_products/domain/repository/product_repository/product_repository.dart';

// 🏢 COMPANY MODULE
export 'package:pharma_booking_app/modules/pharma_suit/all_products/data/datasources/local_datasource/local_company_datasource/local_company_datasource.dart';
export 'package:pharma_booking_app/modules/pharma_suit/all_products/data/datasources/remote_datasource/remote_companies_datasource/remote_companies_datasource.dart';
export 'package:pharma_booking_app/modules/pharma_suit/all_products/data/repository_impl/companies_repo_impl/companies_repo_impl.dart';
export 'package:pharma_booking_app/modules/pharma_suit/all_products/domain/repository/companies_repository/companies_repository.dart';
