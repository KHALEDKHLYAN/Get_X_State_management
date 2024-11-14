import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'introduction/my_home_page.dart'; // Importing the MyHomePage widget from the 'introduction' directory.
import 'helpers/init_controllers.dart'
    as di; // Importing the init_controllers file, using 'di' as an alias.

/// Main entry point of the application.
Future<void> main() async {
  // Ensures that Flutter bindings are initialized before app startup.
  WidgetsFlutterBinding.ensureInitialized();

  // Calls an initialization function for dependencies or services in init_controllers.dart.
  await di.init();

  // Starts the Flutter application by running the MyApp widget as the root of the app.
  runApp(const MyApp());
}

/// Main application widget.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// Builds the application and sets up the main configuration.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:
          false, // Hides the debug banner in the top-right corner.
      title: 'Flutter Demo', // Sets the title of the app.

      // Defines the app's theme with a color scheme generated from a seed color.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // Enables Material Design 3 (if supported).
      ),

      home: const MyHomePage(), // Sets MyHomePage as the initial screen.
    );
  }
}
