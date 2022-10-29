import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_app/common/extension.dart';

import '../../../../common/style.dart';

class HeaderHomeWidget extends StatelessWidget {
  const HeaderHomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 24,
        right: 24,
        bottom: 24,
        top: 50,
      ),
      child: Column(
        children: [
          Row(
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
          const SizedBox(
            height: 24,
          ),
          Container(
            height: 170,
            width: Get.width,
            decoration: BoxDecoration(
              color: blueCard,
              borderRadius: BorderRadius.circular(6),
            ),
            child: DefaultTextStyle(
              style: TextStyle(
                color: white,
                fontWeight: light,
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$6,190.00',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: semiBold,
                          ),
                        ),
                        const Text('Total balance')
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 10,
                    left: 10,
                    child: Text('Ebl titanium account'),
                  ),
                  const Positioned(
                    top: 10,
                    right: 10,
                    child: Text('Arian zesan'),
                  ),
                  const Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text('Added card:05'),
                  ),
                  const Positioned(
                    bottom: 10,
                    right: 10,
                    child: Text('Ac. no. 2234521'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
