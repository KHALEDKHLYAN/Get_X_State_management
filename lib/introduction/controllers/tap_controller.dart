import 'package:get/get.dart';

/// Controller class to manage integer values and handle operations on them.
/// This controller uses GetX's reactive and non-reactive state management.
class TapController extends GetxController {
  
  // Non-reactive integer field `_x` with getter `x`.
  // This value requires manual UI update using `update()`.
  int _x = 0;
  int get x => _x;

  // Reactive integer `_y` using `RxInt` type, allowing automatic UI updates.
  RxInt _y = 0.obs;
  RxInt get y => _y;

  // Reactive integer `_z` with a non-reactive getter `z`.
  // This field requires direct access to `.value` to retrieve its data.
  RxInt _z = 0.obs;
  int get z => _z.value;

  /// Method to increment `_x` and update UI.
  void increaseX() {
    _x++;
    update(); // Triggers UI update for GetBuilder or GetX listeners.
  }

  /// Method to decrement `_x` and update UI.
  void decreaseX() {
    _x--;
    update();
  }

  /// Method to increment reactive `_y`.
  /// No `update()` call is needed as `_y` is reactive.
  void increaseY() {
    _y++;
  }

  /// Method to decrement reactive `_y`.
  void decreaseY() {
    _y--;
  }

  /// Method to calculate the sum of `x` and `_y`.
  /// Assigns the result to `_z`, automatically updating any UI bound to `_z`.
  void totalValue() {
    _z.value = x + _y.value;
  }
}
