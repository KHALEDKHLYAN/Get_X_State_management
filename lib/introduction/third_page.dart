import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_statemanagement/introduction/controllers/list_controller.dart';
import 'package:get_x_statemanagement/introduction/controllers/tap_controller.dart';

import 'my_home_page.dart';

/// A stateless widget that represents the ThirdPage in the application.
class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Registers an instance of ListController with GetX, allowing dependency injection.
    Get.put(ListController());

    return Scaffold(
      // The main content of the page is a scrollable ListView.
      body: ListView(
        children: [
          // A column to align widgets vertically in the center.
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Obx widget to reactively update the UI based on changes in observable variables.
              Obx(
                () => Column(
                  children: [
                    // Displaying the total value calculated in TapController.
                    Container(
                      margin: EdgeInsets.all(20), // Margin around the container.
                      width: double.maxFinite, // Full width container.
                      height: 100, // Fixed height.
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // Rounded corners.
                        color: Color(0xFF89dad0), // Background color.
                      ),
                      child: Center(
                        child: Text(
                          "Total Value ${Get.find<TapController>().z.toString()}", // Displays total value from TapController.
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    // Displaying the Y value from TapController.
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
                          "Y value ${Get.find<TapController>().y.value.toString()}", // Displays Y value.
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Button to navigate back to MyHomePage.
              GestureDetector(
                onTap: () {
                  Get.to(() => MyHomePage()); // Uses GetX's navigation to MyHomePage.
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
                      "X value ${Get.find<TapController>().x}", // Displays X value from TapController.
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              // Button to increase the Y value in TapController.
              GestureDetector(
                onTap: () {
                  Get.find<TapController>().increaseY(); // Calls method to increase Y value.
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
                      "Increase Y", // Button label.
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              // Button to calculate the total of X + Y.
              GestureDetector(
                onTap: () {
                  Get.find<TapController>().totalValue(); // Calls method to calculate total.
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
                      "Total X+Y", // Button label.
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              // Button to save the calculated total to ListController.
              GestureDetector(
                onTap: () {
                  // Calls method in ListController to save the total value.
                  Get.find<ListController>().setValues(Get.find<TapController>().z);
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
                      "Save Total", // Button label.
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
