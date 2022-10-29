import 'package:flutter/material.dart';
import 'package:money_app/common/style.dart';

import 'widgets/content_home_widget.dart';
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
              ContentHomeWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
