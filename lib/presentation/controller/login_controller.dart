import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/auth_repository.dart';

class LoginController extends GetxController {
  RxBool isRemember = false.obs;
  int currentIndex = 0;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailRegisterController = TextEditingController();
  TextEditingController passwordRegisterController = TextEditingController();
  TextEditingController nameRegisterController = TextEditingController();

  RxBool isPasswordVisible = false.obs;

  late final PageController pageController;

  final AuthRepository _authRepository;

  LoginController(this._authRepository);

  Future login() async {
    final response = await _authRepository.login(
        emailController.text, passwordController.text);
    return response;
  }

  Future register() async {
    final response = await _authRepository.register(
      emailRegisterController.text,
      passwordRegisterController.text,
      nameRegisterController.text,
    );
    return response;
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: currentIndex);
  }

  @override
  void onClose() {
    super.onClose();
    pageController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  changeIndex(int index) {
    currentIndex = index;
    update();
  }
}
