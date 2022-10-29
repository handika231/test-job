import 'package:flutter/material.dart';
import 'package:money_app/common/extension.dart';

import '../../../../common/style.dart';

class FeatureItemWidget extends StatelessWidget {
  final bool isShadow;
  const FeatureItemWidget({Key? key, this.isShadow = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        boxShadow: isShadow
            ? [
                BoxShadow(
                  blurRadius: 4,
                  color: black.withOpacity(0.2),
                  offset: const Offset(0, 5), // changes position of shadow
                ),
              ]
            : [],
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
