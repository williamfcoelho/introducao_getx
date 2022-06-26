import 'package:get/get.dart';
import 'package:introducao_getx/repository/product_repository.dart';

class HomeController extends GetxController { 

  final product = <String>[].obs;
  final product_repository = Get.find<ProductRepository>();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {

     final productAll = product_repository.getProduct();  
    product.assignAll(productAll);
    super.onReady();
  }



}