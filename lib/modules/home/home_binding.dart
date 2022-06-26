import 'package:get/get.dart';
import 'package:introducao_getx/modules/home/home_controller.dart';
import 'package:introducao_getx/repository/product_repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ProductRepository());
    Get.put(HomeController());
  }
}