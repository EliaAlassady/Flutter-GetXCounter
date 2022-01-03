import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/Screens/SecondScreen.dart';

import '../Controllers/CounterController.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Clicks ${counterController.counter.value} '),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        counterController.increment();
                      },
                      child: Icon(Icons.add),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        counterController.reset();
                      },
                      child: Icon(Icons.person),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(SecondScreen());
                  },
                  child: Text('Second Screen'),
                )
              ],
            ),
          )),
    );
  }
}
