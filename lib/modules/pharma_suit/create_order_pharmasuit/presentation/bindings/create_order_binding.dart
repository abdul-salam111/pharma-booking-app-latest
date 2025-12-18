

import '../../../../common/presentations/home/presentation/barrel.dart';
import '../../../../common/domain/create_order_domain/domain/usecases/local_usecases/manage_order_local_usecases/create_order_local_usecase.dart';
import '../../../../common/domain/create_order_domain/domain/usecases/local_usecases/manage_order_local_usecases/update_order_local_usecase.dart';
import '../controllers/create_order_controller.dart';

class CreateOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => CreateOrderLocalUsecase(
        repository: Get.find<CreateOrdersRepository>(),
      ),
    );
    Get.lazyPut(
      () => UpdateOrderLocalUsecase(
        repository: Get.find<CreateOrdersRepository>(),
      ),
    );
    Get.lazyPut<CreateOrderController>(
      () => CreateOrderController(
        createOrderLocalUsecase: Get.find<CreateOrderLocalUsecase>(),
        updateOrderLocalUsecase: Get.find<UpdateOrderLocalUsecase>(),
      ),
    );
  }
}
