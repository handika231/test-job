import 'package:flutter/material.dart';
import 'package:money_app/common/extension.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
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
    );
  }
}
