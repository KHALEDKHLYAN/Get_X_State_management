import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_statemanagement/introduction/third_page.dart';

/// A stateless widget representing the SecondPage.
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Defines the main structure of the page with a body containing a container.
      body: Container(
        padding: EdgeInsets.all(10), // Adds padding around the container.
        width: double.maxFinite, // Sets the container's width to the maximum available.
        height: double.maxFinite, // Sets the container's height to the maximum available.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically.
          children: [
            // A button that navigates to the ThirdPage when tapped.
            GestureDetector(
              onTap: () {
                // Navigates to ThirdPage using GetX's `Get.to()`.
                Get.to(() => ThirdPage());
              },
              child: Container(
                margin: EdgeInsets.all(20), // Adds margin around the button.
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // Adds rounded corners.
                  color: Color(0xFF89dad0), // Sets the background color.
                ),
                child: Center(
                  child: Text(
                    "Third Page", // Text displayed on the button.
                    style: TextStyle(fontSize: 20, color: Colors.white), // Text styling.
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
