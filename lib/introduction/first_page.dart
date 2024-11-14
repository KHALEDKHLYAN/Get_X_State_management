import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_statemanagement/introduction/controllers/tap_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
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
                controller.decreaseX();
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
                  "Decrease X",
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
