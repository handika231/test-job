import 'package:flutter/material.dart';

import '../../../../common/style.dart';
import 'feature_item_widget.dart';

class ContentHomeWidget extends StatelessWidget {
  const ContentHomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Features',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                'See more',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          DefaultTextStyle(
            style: TextStyle(
              color: blackText,
              fontWeight: semiBold,
            ),
            child: Row(
              children: const [
                FeatureItemWidget(),
                SizedBox(
                  width: 12,
                ),
                FeatureItemWidget(isShadow: true),
                SizedBox(
                  width: 12,
                ),
                FeatureItemWidget(),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Product',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
              DropdownButton<String>(
                value: 'All',
                items: const [
                  DropdownMenuItem(
                    value: 'All',
                    child: Text('All'),
                  ),
                ],
                onChanged: (val) {},
                hint: const Text('All'),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: List.generate(
              20,
              (index) => ListTile(
                title: Text('Product $index'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
