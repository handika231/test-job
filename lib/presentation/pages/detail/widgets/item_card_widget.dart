import 'package:flutter/material.dart';
import 'package:money_app/common/extension.dart';

import '../../../../common/style.dart';

class ItemCardWidget extends StatelessWidget {
  final String imgPath, text;
  final bool isActive;
  const ItemCardWidget(
      {Key? key,
      required this.imgPath,
      required this.text,
      this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 16,
      ),
      decoration: BoxDecoration(
        color: isActive ? blueCard : greyCard,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset(
            imgPath.path,
            width: 27,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            text,
            style: TextStyle(
              color: isActive ? white : black,
            ),
          )
        ],
      ),
    );
  }
}
