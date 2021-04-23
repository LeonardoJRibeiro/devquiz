import 'package:flutter/cupertino.dart';

class ChallengController {
  final currentPageNotifier = ValueNotifier<int>(1);
  int get currentPage => currentPageNotifier.value;
  set currentPage(int newValue) => currentPageNotifier.value = newValue;

  int answersRight = 0;
}
