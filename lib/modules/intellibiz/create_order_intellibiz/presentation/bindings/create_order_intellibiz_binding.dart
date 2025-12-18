import 'package:get/get.dart';
import 'package:pharma_booking_app/modules/intellibiz/create_order_intellibiz/presentation/controllers/create_order_intellibiz_controller.dart';

import '../../../../common/domain/create_order_domain/domain/repository/create_orders_repository.dart';
import '../../../../common/domain/create_order_domain/domain/usecases/local_usecases/manage_order_local_usecases/create_order_local_usecase.dart';
import '../../../../common/domain/create_order_domain/domain/usecases/local_usecases/manage_order_local_usecases/update_order_local_usecase.dart';

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
