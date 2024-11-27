import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Diniask());
}

class Diniask extends StatelessWidget {
  const Diniask({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX'),
          centerTitle: true,
          backgroundColor: Colors.green,
          elevation: 0,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.bottomSheet(Container(
                      color: Colors.white,
                      child: Wrap(
                        children: [
                          ListTile(
                            leading: Icon(Icons.wb_incandescent),
                            title: Text('Light Them'),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.wb_incandescent_outlined),
                            title: Text('Dark Them'),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                        ],
                      ),
                    ));
                  },
                  child: Text('snackbar'))
            ],
          ),
        ),
      ),
    );
  }
}
