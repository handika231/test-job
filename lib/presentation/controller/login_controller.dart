import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool isRemember = false.obs;
  int currentIndex = 0;

  RxBool isPasswordVisible = false.obs;

  late final PageController pageController;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: currentIndex);
  }

  @override
  void onClose() {
    super.onClose();
    pageController.dispose();
  }

  changeIndex(int index) {
    currentIndex = index;
    update();
  }
}
