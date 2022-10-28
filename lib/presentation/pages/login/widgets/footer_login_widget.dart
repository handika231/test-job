import 'package:flutter/material.dart';
import 'package:money_app/common/extension.dart';

class FooterLoginWidget extends StatelessWidget {
  const FooterLoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Stack(
        children: [
          Image.asset(
            'footer-img'.path,
            width: double.infinity,
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Image.asset(
                  'finger'.path,
                  width: 70,
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  'Login with touch ID',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
