import 'package:flutter/material.dart';

class CurrentPage with ChangeNotifier {
  int currentPageIndex = 2;

  void setCurrentPageIndex(int pageIndex) {
    currentPageIndex = pageIndex;
    notifyListeners();
  }
}
