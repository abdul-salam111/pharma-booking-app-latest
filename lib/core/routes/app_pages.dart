import 'package:get/get.dart';
import 'package:pharma_booking_app/modules/intellibiz/create_order_intellibiz/presentation/bindings/create_order_intellibiz_binding.dart';
import 'package:pharma_booking_app/modules/intellibiz/create_order_intellibiz/presentation/views/create_order_intellibiz_view.dart';
import 'package:pharma_booking_app/modules/intellibiz/order_details_on_date_intellibiz/bindings/order_details_on_date_binding_intellibiz.dart';
import 'package:pharma_booking_app/modules/intellibiz/order_details_on_date_intellibiz/views/order_details_on_date_view_intellibiz.dart';

import '../../modules/intellibiz/all_products_intellibiz/bindings/all_products_intellibiz_binding.dart';
import '../../modules/intellibiz/all_products_intellibiz/views/all_products_intellibiz_view.dart';
import '../../modules/common/home/presentation/bindings/home_binding.dart';
import '../../modules/common/home/presentation/views/home_view.dart';
import '../../modules/common/login_screen/presentation/bindings/login_screen_binding.dart';
import '../../modules/common/login_screen/presentation/views/login_screen_view.dart';
import '../../modules/common/recovery/bindings/recovery_binding.dart';
import '../../modules/common/recovery/views/recovery_view.dart';
import '../../modules/common/select_customer/presentation/bindings/select_customer_binding.dart';
import '../../modules/common/select_customer/presentation/views/select_customer_view.dart';
import '../../modules/common/splash_screen/bindings/splash_screen_binding.dart';
import '../../modules/common/splash_screen/views/splash_screen_view.dart';
import '../../modules/pharma_suit/create_order_pharmasuit/presentation/bindings/create_order_binding.dart';
import '../../modules/pharma_suit/create_order_pharmasuit/presentation/views/create_order_view.dart';
import '../../modules/pharma_suit/order_details_on_date/bindings/order_details_on_date_binding.dart';
import '../../modules/pharma_suit/order_details_on_date/views/order_details_on_date_view.dart';
import '../../modules/common/orders_on_date/presentation/bindings/orders_on_date_binding.dart';
import '../../modules/common/orders_on_date/presentation/views/orders_on_date_view.dart';
import '../../modules/common/orders_summary/presentation/bindings/orders_summary_binding.dart';
import '../../modules/common/orders_summary/presentation/views/orders_summary_view.dart';
import '../../modules/pharma_suit/all_products/presentation/bindings/all_products_binding.dart';
import '../../modules/pharma_suit/all_products/presentation/views/all_products_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => const LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.SELECT_CUSTOMER,
      page: () => const SelectCustomerView(),
      binding: SelectCustomerBinding(),
    ),
    GetPage(
      name: _Paths.ALL_PRODUCTS,
      page: () => const AllProductsView(),
      binding: AllProductsBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_ORDER,
      page: () => const CreateOrderView(),
      binding: CreateOrderBinding(),
    ),
    GetPage(
      name: _Paths.ORDERS_SUMMARY,
      page: () => const OrdersSummaryView(),
      binding: OrdersSummaryBinding(),
    ),
    GetPage(
      name: _Paths.ORDERS_ON_DATE,
      page: () => const OrdersOnDateView(),
      binding: OrdersOnDateBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_DETAILS_ON_DATE,
      page: () => const OrderDetailsOnDateView(),
      binding: OrderDetailsOnDateBinding(),
    ),
    GetPage(
      name: _Paths.RECOVERY,
      page: () => const RecoveryView(),
      binding: RecoveryBinding(),
    ),
    GetPage(
      name: _Paths.ALL_PRODUCTS_INTELLIBIZ,
      page: () => const AllProductsIntellibizView(),
      binding: AllProductsIntellibizBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_ORDER_INTELLIBIZ,
      page: () => const CreateOrderIntellibizView(),
      binding: CreateOrderIntellibizBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_DETAILS_ON_DATE_INTELLIBIZ,
      page: () => const OrderDetailsOnDateViewIntellibiz(),
      binding: OrderDetailsOnDateBindingIntellibiz(),
    ),
  ];
}
