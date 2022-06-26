import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introducao_getx/modules/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME PAGE'),
      ),
      body: Obx(
        () {
          return ListView.builder(
            itemCount: controller.product.length,
            itemBuilder: (context, index) {
              final productData = controller.product[index];
              return ListTile(
                title: Text(productData),
              );
            },
          );
        },
      ),
    );
  }
}
