import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_app/common/style.dart';
import 'package:money_app/presentation/pages/detail/detail_page.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
                bottom: 24,
                top: 50,
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      Text(
                        'Wallet',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: blueCircle,
                        child: IconButton(
                          onPressed: () {
                            Get.to(() => const DetailPage());
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
