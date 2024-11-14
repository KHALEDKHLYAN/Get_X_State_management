import 'package:get/get.dart';
import 'package:get_x_statemanagement/introduction/controllers/tap_controller.dart';
import '../introduction/controllers/list_controller.dart';

/// Initialization function for dependency injection using GetX.
/// This function registers controllers for use throughout the application.
Future<void> init() async {
  
  // Registers `TapController` as a lazy-loaded dependency.
  // This means `TapController` will only be created the first time it is used.
  Get.lazyPut(
    () => TapController(),
  );

  // Registers `ListController` as a lazy-loaded dependency.
  // `ListController` will also only be created when it's first needed.
  Get.lazyPut(
    () => ListController(),
  );
}
