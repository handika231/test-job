import 'package:flutter/material.dart';
import 'package:money_app/common/extension.dart';

import '../../../../common/style.dart';

class HeaderDetailWidget extends StatelessWidget {
  const HeaderDetailWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 50,
        left: 24,
        right: 24,
        bottom: 24,
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('profile'.path),
            radius: 30,
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            'Good day,Zesan',
            style: TextStyle(
              fontSize: 18,
              fontWeight: semiBold,
              color: black,
            ),
          ),
          const Spacer(),
          CircleAvatar(
            radius: 30,
            backgroundColor: blueCircle,
            child: Icon(
              Icons.search,
              color: black,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
