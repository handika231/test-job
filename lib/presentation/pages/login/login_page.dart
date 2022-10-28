import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_app/common/style.dart';

import '../../controller/login_controller.dart';
import 'widgets/footer_login_widget.dart';
import 'widgets/header_login_widget.dart';
import 'widgets/login_widget.dart';
import 'widgets/register_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            const FooterLoginWidget(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const HeaderLoginWidget(),
                GetBuilder<LoginController>(
                  builder: (controller) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            controller.pageController.animateToPage(
                              0,
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight:
                                  controller.currentIndex == 0 ? bold : light,
                              color: controller.currentIndex == 0
                                  ? black
                                  : greyText,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            controller.pageController.animateToPage(
                              1,
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight:
                                  controller.currentIndex == 1 ? bold : light,
                              color: controller.currentIndex == 1
                                  ? black
                                  : greyText,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                Flexible(child: GetBuilder<LoginController>(
                  builder: (controller) {
                    return PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      pageSnapping: true,
                      controller: controller.pageController,
                      onPageChanged: controller.changeIndex,
                      children: const [
                        LoginWidget(),
                        RegisterWidget(),
                      ],
                    );
                  },
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
