import 'package:get/get.dart';
import 'package:pharma_booking_app/modules/intellibiz/create_order_intellibiz/presentation/controllers/create_order_intellibiz_controller.dart';

import '../../../../pharma_suit/create_order_pharmasuit/domain/repository/create_orders_repository.dart';
import '../../../../pharma_suit/create_order_pharmasuit/domain/usecases/local_usecases/create_order_local_usecase.dart';
import '../../../../pharma_suit/create_order_pharmasuit/domain/usecases/local_usecases/update_order_local_usecase.dart';

class CreateOrderIntellibizBinding extends Bindings {
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
    Get.lazyPut<CreateOrderIntellibizController>(
      () => CreateOrderIntellibizController(
        createOrderLocalUsecase: Get.find<CreateOrderLocalUsecase>(),
        updateOrderLocalUsecase: Get.find<UpdateOrderLocalUsecase>(),
      ),
    );
  }
}
