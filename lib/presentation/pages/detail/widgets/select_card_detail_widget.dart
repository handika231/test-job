import 'package:flutter/material.dart';

import '../../../../common/style.dart';
import 'item_card_widget.dart';

class SelectCardDetailWidget extends StatelessWidget {
  const SelectCardDetailWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        top: 25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select Card',
            style: TextStyle(
              fontWeight: semiBold,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ItemCardWidget(
                  text: 'Physical ebl card',
                  imgPath: 'master-card',
                  isActive: true,
                ),
                ItemCardWidget(
                  text: 'Virtual ebl card',
                  imgPath: 'visa',
                ),
                ItemCardWidget(
                  text: 'Ebl debit card',
                  imgPath: 'american',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
