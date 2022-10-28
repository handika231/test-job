import 'package:flutter/material.dart';
import 'package:money_app/common/style.dart';

import 'widgets/footer_login_widget.dart';
import 'widgets/header_login_widget.dart';
import 'widgets/login_widget.dart';
import 'widgets/register_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: bold,
                          color: black,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 16,
                          color: greyText,
                        ),
                      ),
                    ),
                  ],
                ),
                Flexible(
                  child: PageView(
                    children: const [
                      LoginWidget(),
                      RegisterWidget(),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
