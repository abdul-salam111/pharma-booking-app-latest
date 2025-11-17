

// import '../../../home/presentation/barrel.dart';
// import '../../../select_customer/domain/customer_repository/customer_repository.dart';
// import '../../../select_customer/domain/usecases/local_usecases/get_salesman_by_id_usecase.dart';
// import '../controllers/all_products_controller.dart';

// class AllProductsBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(
//       () => GetLocalSalesmanByIdUsecase(
//         customerRepository: Get.find<CustomerAbstractRepository>(),
//       ),
//     );

//     Get.lazyPut<AllProductsController>(
//       () => AllProductsController(
//         getLocalSalesmanByIdUsecase: Get.find<GetLocalSalesmanByIdUsecase>(),
//       ),
//     );
//   }
// }
