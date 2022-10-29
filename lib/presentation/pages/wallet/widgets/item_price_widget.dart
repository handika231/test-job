import 'package:flutter/material.dart';

import '../../../../common/style.dart';

class ItemPriceWidget extends StatelessWidget {
  final String title, price;
  const ItemPriceWidget({Key? key, required this.price, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: greyCard,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            const SizedBox(
              height: 8,
            ),
            Text(
              '\$$price',
              style: const TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
