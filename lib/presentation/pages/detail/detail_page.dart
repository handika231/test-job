import 'package:flutter/material.dart';
import 'package:money_app/common/style.dart';

import 'widgets/content_detail_widget.dart';
import 'widgets/header_detail_widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          HeaderDetailWidget(),
          ContentDetailWidget(),
        ],
      ),
    );
  }
}
