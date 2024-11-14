import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_statemanagement/introduction/first_page.dart';
import 'package:get_x_statemanagement/introduction/second_page.dart';

import 'controllers/tap_controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (_) {
              return Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0),
                ),
                child: Center(
                    child: Text(
                  controller.x.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              );
            }),
            GestureDetector(
              onTap: () {
                controller.increaseX();
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0),
                ),
                child: Center(
                    child: Text(
                  "Tap",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(()=>FirstPage());
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0),
                ),
                child: Center(
                    child: Text(
                  "Get to the First_Page",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(()=>SecondPage());
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0),
                ),
                child: Center(
                    child: Text(
                  "Second Page",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0),
                ),
                child: Center(
                    child: Text(
                  "Tap",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
