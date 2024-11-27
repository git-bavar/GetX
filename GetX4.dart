import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get14/screen1.dart';

void main() {
  runApp(const Diniask());
}

class Diniask extends StatelessWidget {
  const Diniask({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}
