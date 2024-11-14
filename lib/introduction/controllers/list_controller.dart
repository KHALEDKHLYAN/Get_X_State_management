import 'package:get/get.dart';

class ListController extends GetxController{
  // ignore: prefer_final_fields
  RxList _list = [].obs;

  RxList get list => _list;

  void setValues(int x){
    _list.add(x);
  }
}