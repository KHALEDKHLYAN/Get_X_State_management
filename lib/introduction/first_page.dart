import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_statemanagement/introduction/controllers/tap_controller.dart';

/// A stateless widget representing the FirstPage.
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieves an instance of TapController using GetX's dependency injection.
    TapController controller = Get.find();

    return Scaffold(
      // A basic page structure with an app bar and body.
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back(); // Navigates back to the previous screen using GetX.
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black, // Sets the icon color to black.
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10), // Adds padding around the container.
        width: double.maxFinite, // Sets the width to the maximum available.
        height: double.maxFinite, // Sets the height to the maximum available.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers children vertically.
          children: [
            // Displays the current value of `controller.x` in a styled container.
            GetBuilder<TapController>(builder: (_) {
              return Container(
                margin: EdgeInsets.all(20), // Margin around the container.
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // Rounded corners.
                  color: Color(0xFF89dad0), // Background color.
                ),
                child: Center(
                  child: Text(
                    controller.x.toString(), // Displays `x` value from TapController.
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              );
            }),

            // A button to decrease the value of `x` in the controller.
            GestureDetector(
              onTap: () {
                controller.decreaseX(); // Calls decreaseX() on TapController.
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
                    "Decrease X", // Text displayed on the button.
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
