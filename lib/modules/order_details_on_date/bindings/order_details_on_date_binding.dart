
import '../../home/presentation/barrel.dart';
import '../controllers/order_details_on_date_controller.dart';

class OrderDetailsOnDateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Get.find<GetAllLocalProductsUsecase>());
    Get.lazyPut(() => Get.find<GetAllLocalCompaniesUsecase>());
    Get.lazyPut(() => Get.find<GetAllLocalSectorsUsecase>());
    Get.lazyPut(() => Get.find<GetAllLocalTownsUsecase>());
    Get.lazyPut<OrderDetailsOnDateController>(
      () => OrderDetailsOnDateController(
        getAllLocalSectorsUsecase: Get.find<GetAllLocalSectorsUsecase>(),
        getAllLocalTownsUsecase: Get.find<GetAllLocalTownsUsecase>(),
        getAllLocalProductsUsecase: Get.find<GetAllLocalProductsUsecase>(),
        getAllLocalCompaniesUsecase: Get.find<GetAllLocalCompaniesUsecase>(),
      ),
    );
  }
}
