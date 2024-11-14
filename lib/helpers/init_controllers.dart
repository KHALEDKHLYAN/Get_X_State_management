import 'package:get/get.dart';
import 'package:get_x_statemanagement/introduction/controllers/tap_controller.dart';
import '../introduction/controllers/list_controller.dart';

Future<void> init() async {
  Get.lazyPut(
    () => TapController(),
  );
  Get.lazyPut(
    () => ListController(),
  );
}
