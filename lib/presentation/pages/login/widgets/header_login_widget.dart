import 'package:flutter/material.dart';

import '../../../../common/style.dart';

class HeaderLoginWidget extends StatelessWidget {
  const HeaderLoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Login',
            style: TextStyle(
              fontSize: 40,
              fontWeight: bold,
            ),
          ),
          const SizedBox(height: 10),
          DefaultTextStyle(
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
            ),
            child: Text.rich(
              TextSpan(
                text: 'By signing in you are agreeing our\n',
                style: TextStyle(
                  color: blackText,
                ),
                children: [
                  TextSpan(
                    text: 'Term and privacy policy',
                    style: TextStyle(
                      color: blueText,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
