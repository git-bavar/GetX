import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen1State();
}

class _Screen1State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    var get = Get;
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 59, 149, 222),
        elevation: 0,
      ),
      body: SizedBox(
        width: get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  get.back();
                },
                child: const Text('back'))
          ],
        ),
      ),
    );
  }
}
