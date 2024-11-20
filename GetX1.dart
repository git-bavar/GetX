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
                    Get.snackbar(
                      'title', 'message',
                      animationDuration: Duration(seconds: 1),
                      duration: Duration(seconds: 3),
                      forwardAnimationCurve: Curves.easeInOut,
                      reverseAnimationCurve: Curves.easeOutSine,
                      //backgroundColor: Colors.green
                      barBlur: 1,
                      borderColor: Colors.black45,
                      borderWidth: 0.5,
                      borderRadius: 10.0,
                      //colorText: Colors.red
                      snackPosition: SnackPosition.BOTTOM,
                      icon: Icon(Icons.favorite),
                      isDismissible: false,
                      margin: EdgeInsets.all(20.0),
                      shouldIconPulse: true,
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
