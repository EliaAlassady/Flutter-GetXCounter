import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controllers/CounterController.dart';

class SecondScreen extends StatelessWidget {
  // const SecondScreen({Key? key}) : super(key: key);
  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Second screen was click ${_counterController.counter.value} times.'),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Back'),
              ),
            ],
          )),
    );
  }
}
