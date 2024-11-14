import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_statemanagement/introduction/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

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
            GestureDetector(
              onTap: () {
                // controller.decreaseX();
                Get.to(()=>ThirdPage());
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
                  "Third Page",
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
