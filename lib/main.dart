import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introducao_getx/modules/home/home_binding.dart';

import 'modules/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
          name: '/',
          binding: HomeBinding(),
          page: () => const HomePage(),
        )
      ],
    );
  }
}
