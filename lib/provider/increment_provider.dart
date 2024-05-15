import 'package:flutter/material.dart';

class IncrementProvider extends ChangeNotifier{

  int n=0;
  void Increment(){
      n++;
      notifyListeners();
  }


  void Decrement(){
    n--;
    notifyListeners();
  }

}