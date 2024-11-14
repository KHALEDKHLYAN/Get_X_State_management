import 'package:get/get.dart';

/// Controller class for managing a reactive list.
class ListController extends GetxController {
  // Defining a reactive list using RxList, which enables automatic updates in the UI when the list changes.
  RxList _list = [].obs;

  // Getter to access the reactive list outside the class.
  RxList get list => _list;

  /// Adds a value to the list.
  /// This method is used to add an integer value to the reactive list.
  void setValues(int x) {
    _list.add(x); // Adds the value 'x' to the list, automatically notifying any listeners.
  }
}
