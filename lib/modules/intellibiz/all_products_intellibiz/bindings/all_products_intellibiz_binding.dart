import 'package:get/get.dart';

import '../../../modules.dart';

class AllProductsIntellibizBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllProductsController>(() => AllProductsController());
  }
}
