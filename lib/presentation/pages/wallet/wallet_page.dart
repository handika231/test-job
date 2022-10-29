import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_app/common/extension.dart';
import 'package:money_app/common/style.dart';
import 'package:money_app/presentation/pages/detail/detail_page.dart';

import 'widgets/item_price_widget.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    Row(
                      children: [
                        Image.asset(
                          'card-1'.path,
                          height: 170,
                          width: 170,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Image.asset(
                          'card-2'.path,
                          height: 170,
                          fit: BoxFit.contain,
                          width: 170,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Total Spending',
                      style: TextStyle(fontSize: 18, fontWeight: semiBold),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                        color: greyCard,
                      ),
                      padding: const EdgeInsets.all(16),
                      child: DefaultTextStyle(
                        style: TextStyle(
                          fontSize: 12,
                          color: greyText,
                          fontWeight: semiBold,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Day'),
                            Column(
                              children: [
                                Text(
                                  'Week',
                                  style: TextStyle(
                                    color: black,
                                  ),
                                ),
                                Container(
                                  height: 8,
                                  width: 8,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: blueCard,
                                  ),
                                )
                              ],
                            ),
                            const Text('Month'),
                            const Text('Custom range'),
                          ],
                        ),
                      ),
                    ),
                    Image.asset(
                      'chart'.path,
                      width: Get.width,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    DefaultTextStyle(
                      style: TextStyle(
                        color: blackText,
                        fontWeight: semiBold,
                        fontSize: 12,
                      ),
                      child: Row(
                        children: const [
                          ItemPriceWidget(
                            title: 'Weekly spend',
                            price: '1,454.00',
                          ),
                          ItemPriceWidget(
                            title: 'Shopping',
                            price: '890.00',
                          ),
                          ItemPriceWidget(
                            title: 'Others',
                            price: '564.00',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
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
