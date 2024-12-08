import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get14/screen1.dart';
import 'package:get14/screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen1State();
}

class _Screen1State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    var get = Get;
    var sizedBox = SizedBox(
        width: get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  get.to(Screen1());
                },
                child: const Text('Go to screen 3'))
          ],
        ),
      );
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: sizedBox,
    );
  }
}
