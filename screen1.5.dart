import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get14/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    var get = Get;
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: SizedBox(
        width: get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  get.to(const Screen2());
                  //get.off(Screen2());
                },
                child: const Text('Go to screen 2'))
          ],
        ),
      ),
    );
  }
}
