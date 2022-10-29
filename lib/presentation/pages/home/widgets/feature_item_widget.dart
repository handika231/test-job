import 'package:flutter/material.dart';
import 'package:money_app/common/extension.dart';

import '../../../../common/style.dart';

class FeatureItemWidget extends StatelessWidget {
  const FeatureItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: greyFeature,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'send'.path,
            width: 24,
          ),
          const SizedBox(
            width: 10,
          ),
          const Text('Send')
        ],
      ),
    );
  }
}
