import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_app/common/style.dart';
import 'package:money_app/presentation/controller/login_controller.dart';

import 'social_widget.dart';

class LoginWidget extends StatelessWidget {
  final loginController = Get.find<LoginController>();
  LoginWidget({
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
          const TextField(
            decoration: InputDecoration(
              hintText: 'Email',
              prefixIcon: Icon(Icons.email),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Obx(
            () => TextField(
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
          Row(
            children: [
              Expanded(
                child: Obx(
                  () => CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    value: loginController.isRemember.value,
                    onChanged: (value) {
                      loginController.isRemember.toggle();
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text('Remember me'),
                  ),
                ),
              ),
              const Expanded(
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 45),
            ),
            onPressed: () {},
            child: const Text(
              "Login",
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
          const SocialWidget()
        ],
      ),
    );
  }
}
