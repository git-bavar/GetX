import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get14/screen1.dart';
import 'package:get14/screen2.dart';
import 'package:get14/screen3.dart';

void main() {
  runApp(const Diniask());
}

class Diniask extends StatelessWidget {
  const Diniask({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/screen1', page: () => Screen1()),
        GetPage(name: '/screen2', page: () => Screen2()),
        GetPage(name: '/screen3', page: () => Screen3()),
      ],
      initialRoute: '/screen1',
    );
  }
}

//un_named navigation
//Get.tonamed  -->> به صفحه دیگر می رود 
//Get.offnamed -->> صفحه جاری را می بندد و به صفحه خاص می رود 
//Get.offallnamed -->> تمام صفحات را می بندد و به صفحه خاص می رود 
