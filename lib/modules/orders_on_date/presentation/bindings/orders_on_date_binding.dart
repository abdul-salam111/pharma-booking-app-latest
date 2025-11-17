
import '../../../home/presentation/barrel.dart';
import '../../../select_customer/domain/usecases/local_usecases/get_local_customer_by_id_usecase.dart';
import '../controllers/orders_on_date_controller.dart';

class OrdersOnDateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Get.find<PharmaDatabase>());
  
    // Get.lazyPut(
    //   () => GetProductByIdUsecase(
    //     productRepository: Get.find<ProductAbstractRepository>(),
    //   ),
    // );
    Get.lazyPut(
      () => GetLocalCustomerByIdUsecase(
        repository: Get.find<CustomerAbstractRepository>(),
      ),
    );
    Get.lazyPut<OrdersOnDateController>(
      () => OrdersOnDateController(
      

        // getProductByIdUsecase: Get.find<GetProductByIdUsecase>(),
        getLocalCustomerByIdUsecase: Get.find<GetLocalCustomerByIdUsecase>(),
      ),
    );
  }
}
