import 'package:flutter/material.dart';
class SwitchProvider extends ChangeNotifier{
  bool isswitch=false;

  void getSwitchValue(value){
  isswitch=value;
  notifyListeners();


}

}