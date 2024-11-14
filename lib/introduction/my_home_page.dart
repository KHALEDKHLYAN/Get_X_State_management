import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_statemanagement/introduction/first_page.dart'; // Importing the FirstPage widget.
import 'package:get_x_statemanagement/introduction/second_page.dart'; // Importing the SecondPage widget.

import 'controllers/tap_controller.dart'; // Importing the TapController for state management.

/// Main Home Page widget.
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Using GetX to locate and retrieve the TapController instance.
    TapController controller = Get.find();

    return Scaffold(
      // Scaffold widget for basic page structure with app bar and body.
      body: Container(
        padding: EdgeInsets.all(10), // Adds padding around the container.
        width: double.maxFinite, // Sets the width to the maximum available.
        height: double.maxFinite, // Sets the height to the maximum available.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically.
          children: [
            // Dynamic container displaying the value of `controller.x`.
            GetBuilder<TapController>(builder: (_) {
              return Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0), // Sets background color.
                ),
                child: Center(
                  child: Text(
                    controller.x.toString(), // Displays the current value of `x`.
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              );
            }),
            
            // Tap button to increase the value of `x`.
            GestureDetector(
              onTap: () {
                controller.increaseX(); // Calls increaseX() on TapController.
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
                  ),
                ),
              ),
            ),

            // Button to navigate to the FirstPage using GetX.
            GestureDetector(
              onTap: () {
                Get.to(() => FirstPage()); // Navigates to FirstPage.
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
                  ),
                ),
              ),
            ),

            // Button to navigate to the SecondPage using GetX.
            GestureDetector(
              onTap: () {
                Get.to(() => SecondPage()); // Navigates to SecondPage.
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
                  ),
                ),
              ),
            ),

            // Another Tap button with no functionality.
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
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
