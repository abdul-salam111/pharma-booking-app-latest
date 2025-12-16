import 'package:pharma_booking_app/modules/pharma_suit/all_products/domain/usecases/products_usecases/product_local_usecases/get_all_local_packings_usecase.dart';

import '../../../common/home/presentation/barrel.dart';
import '../controllers/order_details_on_date_controller_intellibiz.dart';

class OrderDetailsOnDateBindingIntellibiz extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Get.find<GetAllLocalProductsUsecase>());
    Get.lazyPut(() => Get.find<GetAllLocalCompaniesUsecase>());
    Get.lazyPut(() => Get.find<GetAllLocalAreasUsecase>());
    Get.lazyPut(() => Get.find<GetAllLocalSubAreasUsecase>());
    Get.lazyPut(
      () => GetAllLocalPackingsUsecase(productAbstractRepository: Get.find()),
    );
    Get.lazyPut<OrderDetailsOnDateControllerIntellibiz>(
      () => OrderDetailsOnDateControllerIntellibiz(
        getAllLocalSectorsUsecase: Get.find<GetAllLocalAreasUsecase>(),
        getAllLocalTownsUsecase: Get.find<GetAllLocalSubAreasUsecase>(),
        getAllLocalProductsUsecase: Get.find<GetAllLocalProductsUsecase>(),
        getAllLocalCompaniesUsecase: Get.find<GetAllLocalCompaniesUsecase>(),
        getAllLocalPackingsUsecase: Get.find<GetAllLocalPackingsUsecase>(),
      ),
    );
  }
}
