import 'package:flutter/material.dart';
import 'package:money_app/common/style.dart';

import 'widgets/feature_item_widget.dart';
import 'widgets/header_home_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const HeaderHomeWidget(),
              Container(
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
                          FeatureItemWidget(),
                          SizedBox(
                            width: 12,
                          ),
                          FeatureItemWidget(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
