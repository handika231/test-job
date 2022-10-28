import 'package:flutter/material.dart';
import 'package:money_app/common/extension.dart';
import 'package:money_app/common/style.dart';

import 'header_login_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
            Expanded(
              child: PageView(
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Stack(
                          children: [
                            Image.asset(
                              'footer-img'.path,
                              fit: BoxFit.fitWidth,
                            ),
                            Positioned(
                              bottom: 20,
                              right: 0,
                              left: 0,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'finger'.path,
                                    width: 70,
                                  ),
                                  const Text('Date')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
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
                              height: 50,
                            ),
                            const TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: Icon(Icons.visibility),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: CheckboxListTile(
                                    contentPadding: EdgeInsets.zero,
                                    value: false,
                                    onChanged: (value) {},
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    title: const Text('Remember me'),
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
                            const Text(
                              'Or Connect With',
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Wrap(
                              alignment: WrapAlignment.center,
                              spacing: 16,
                              children: [
                                Image.asset(
                                  'fb'.path,
                                  width: 40,
                                ),
                                Image.asset(
                                  'ig'.path,
                                  width: 40,
                                ),
                                Image.asset(
                                  'pinterest'.path,
                                  width: 40,
                                ),
                                Image.asset(
                                  'linkedin'.path,
                                  width: 40,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
