import '../../home/presentation/barrel.dart';
import '../controllers/order_details_on_date_controller.dart';

class OrderDetailsOnDateBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => Get.find<GetAllLocalProductsUsecase>());
    // Get.lazyPut(() => Get.find<GetAllLocalCompaniesUsecase>());
    Get.lazyPut(() => Get.find<GetAllLocalAreasUsecase>());
    Get.lazyPut(() => Get.find<GetAllLocalSubAreasUsecase>());
    Get.lazyPut<OrderDetailsOnDateController>(
      () => OrderDetailsOnDateController(
        getAllLocalSectorsUsecase: Get.find<GetAllLocalAreasUsecase>(),
        getAllLocalTownsUsecase: Get.find<GetAllLocalSubAreasUsecase>(),
        // getAllLocalProductsUsecase: Get.find<GetAllLocalProductsUsecase>(),
        //getAllLocalCompaniesUsecase: Get.find<GetAllLocalCompaniesUsecase>(),
      ),
    );
  }
}
