import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/style.dart';
import '../../../controller/login_controller.dart';
import 'social_widget.dart';

class RegisterWidget extends StatelessWidget {
  final loginController = Get.find<LoginController>();
  RegisterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        left: 40,
        right: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: loginController.emailRegisterController,
            decoration: const InputDecoration(
              hintText: 'Email',
              prefixIcon: Icon(Icons.email),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: loginController.nameRegisterController,
            decoration: const InputDecoration(
              hintText: 'Name',
              prefixIcon: Icon(Icons.person),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Obx(
            () => TextField(
              controller: loginController.passwordRegisterController,
              obscureText: loginController.isPasswordVisible.value,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    loginController.isPasswordVisible.toggle();
                  },
                  icon: Icon(
                    loginController.isPasswordVisible.value
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 45),
            ),
            onPressed: () {
              loginController.register();
            },
            child: const Text(
              "Register",
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Or Connect With',
            style: TextStyle(
              color: greyText,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 16,
          ),
          const SocialWidget(),
        ],
      ),
    );
  }
}
