import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_statemanagement/introduction/controllers/tap_controller.dart';

import 'my_home_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0),
                    ),
                    child: Center(
                        child: Text(
                      "Total Value ${Get.find<TapController>().z.toString()}",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0),
                    ),
                    child: Center(
                        child: Text(
                      "Y value ${Get.find<TapController>().y.value.toString()}",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => MyHomePage());
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
                  "X value ${Get.find<TapController>().x}",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.find<TapController>().increaseY();
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
                  "Increase Y",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.find<TapController>().totalValue();
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
                  "Total X+Y",
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
