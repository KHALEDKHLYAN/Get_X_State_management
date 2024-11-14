# GetX State Management Example

This project demonstrates how to use **GetX** for state management in a Flutter app. It covers setting up controllers, dependency injection, and navigating between pages using GetX.

## Features

- State management using GetX controllers.
- Navigation between pages without using `Navigator`.
- Dependency injection for controllers.
- Reactive updates to the UI.

## Project Structure

The main components of this example are:
- `TapController` - A controller that manages counter values.
- `ListController` - A controller that stores a list of values.
- Pages - Three different pages (`MyHomePage`, `FirstPage`, `SecondPage`, and `ThirdPage`) demonstrating navigation and state management.

## Getting Started

### Prerequisites

- Flutter installed
- Add the GetX package to your `pubspec.yaml`:
  ```yaml
  dependencies:
    flutter:
      sdk: flutter
    get: ^4.6.5  # check for latest version
  ```

### Running the App

1. Clone this repository.
2. Install dependencies with `flutter pub get`.
3. Run the app on your emulator or physical device using `flutter run`.

## Code Walkthrough

### 1. Setting Up Dependency Injection

The `init()` function in `helpers/init_controllers.dart` registers the controllers. This allows GetX to manage the state efficiently.

```dart
import 'package:get/get.dart';
import 'package:get_x_statemanagement/introduction/controllers/tap_controller.dart';
import '../introduction/controllers/list_controller.dart';

Future<void> init() async {
  Get.lazyPut(() => TapController());
  Get.lazyPut(() => ListController());
}
```

This registers `TapController` and `ListController` as lazy-loaded dependencies. They are only created when first accessed, saving memory and processing power.

### 2. Main App Setup

In `main.dart`, ensure `init()` is called before running the app, and wrap the app in a `GetMaterialApp`:

```dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'introduction/my_home_page.dart';
import 'helpers/init_controllers.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
```

### 3. Using Controllers

#### `TapController` Example

The `TapController` manages integer values (`x`, `y`, and `z`). It updates the UI reactively using `update()` and `.obs` observables.

```dart
import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0;
  int get x => _x;

  RxInt _y = 0.obs;
  RxInt get y => _y;

  RxInt _z = 0.obs;
  int get z => _z.value;

  void increaseX() {
    _x++;
    update();  // Triggers UI update
  }

  void decreaseX() {
    _x--;
    update();
  }

  void increaseY() {
    _y++;
  }

  void decreaseY() {
    _y--;
  }

  void totalValue() {
    _z.value = x + _y.value;
  }
}
```

#### `ListController` Example

The `ListController` manages a reactive list of integers using `RxList`. 

```dart
import 'package:get/get.dart';

class ListController extends GetxController {
  RxList _list = [].obs;
  RxList get list => _list;

  void setValues(int x) {
    _list.add(x);
  }
}
```

### 4. Using Controllers in the UI

#### `MyHomePage` Example

The `MyHomePage` screen demonstrates how to access `TapController` and update its values. Use `Get.find<TapController>()` to retrieve the controller instance.

```dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/tap_controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      body: Column(
        children: [
          GetBuilder<TapController>(
            builder: (_) {
              return Text(controller.x.toString());
            },
          ),
          GestureDetector(
            onTap: controller.increaseX,
            child: Text("Increase X"),
          ),
        ],
      ),
    );
  }
}
```

#### `ThirdPage` Example

The `ThirdPage` screen demonstrates reactive data binding with `Obx` and using `Get.to()` for navigation.

```dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/tap_controller.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Text("Y Value: ${Get.find<TapController>().y}")),
          GestureDetector(
            onTap: () {
              Get.find<TapController>().increaseY();
            },
            child: Text("Increase Y"),
          ),
        ],
      ),
    );
  }
}
```

### 5. Navigation with GetX

You can navigate between pages with `Get.to()`, and go back with `Get.back()`:

```dart
Get.to(() => ThirdPage());
Get.back();
```

## Conclusion

This example shows how to use GetX for state management, dependency injection, and navigation in Flutter. You can extend this approach to handle more complex state and navigation scenarios as needed.

## Additional Resources

For more on GetX, check out the official [GetX documentation](https://pub.dev/packages/get).
```

This `README.md` file provides a complete explanation of how to use GetX for state management with the code you provided, covering dependency injection, state updates, and navigation.
