import 'package:get/get.dart';
import '../../../../../../core/local_storage/database/database_helper.dart';
import '../../../../data/orders_summary_data/data/datasource/order_summary_local_datasource/order_summary_local_datasource.dart';
import '../../../../data/orders_summary_data/data/repository_impl/order_summary_repository_impl.dart';
import '../../../../domain/order_summary_domain/domain/repository/orders_summary_repository.dart';
import '../../../../domain/order_summary_domain/domain/usecases/get_all_local_orders_usecase.dart';
import '../controllers/orders_summary_controller.dart';

class OrdersSummaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderSummaryLocalDatasource>(
      () => OrderSummaryLocalDatasourceImpl(
        databaseHelper: Get.find<SoftronixBookingDatabase>(),
      ),
      fenix: true,
    );
    Get.lazyPut<OrderSummaryRepository>(
      () => OrderSummaryRepositoryImpl(
        orderSummaryLocalDatasource: Get.find<OrderSummaryLocalDatasource>(),
      ),
      fenix: true,
    );

    Get.lazyPut(
      () => GetAllLocalOrdersUsecase(
        repository: Get.find<OrderSummaryRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<OrdersSummaryController>(
      () => OrdersSummaryController(
        getAllLocalOrdersUsecase: Get.find<GetAllLocalOrdersUsecase>(),
      ),
    );
  }
}
