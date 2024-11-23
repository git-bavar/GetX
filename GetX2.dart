import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const myask());
}

class myask extends StatelessWidget {
  const myask({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX snackbar'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                      title: 'style',
                      titleStyle: TextStyle(fontSize: 18),
                      middleText: 'middleText',
                      middleTextStyle: TextStyle(fontSize: 16),
                      backgroundColor: Colors.blueGrey[100],
                      radius: 15,
                      textCancel: 'cancel',
                      cancelTextColor: Colors.black,
                      onCancel: () {
                        print('cancel');
                      },
                      textConfirm: 'confirm',
                      confirmTextColor: Colors.white,
                      onConfirm: () {
                        print('confirm');
                      },
                      buttonColor: Colors.green,
                      barrierDismissible: false,
                      
                    );
                  },
                  child: Text('snackbar'))
            ],
          ),
        ),
      ),
    );
  }
}
