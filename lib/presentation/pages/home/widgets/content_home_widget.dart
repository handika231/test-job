import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_app/common/constanta.dart';
import 'package:money_app/domain/model/products/products.dart';
import 'package:money_app/presentation/controller/main_controller.dart';

import '../../../../common/style.dart';
import 'feature_item_widget.dart';

class ContentHomeWidget extends StatelessWidget {
  final controller = Get.find<MainController>();
  ContentHomeWidget({
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
          FutureBuilder(
            future: controller.getProduct(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting ||
                  snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                List<Products> products = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, int index) {
                    Products product = products[index];
                    return ListTile(
                      trailing: Text(
                        '\$ ${product.price}',
                        style: TextStyle(
                          color: blackText,
                          fontWeight: semiBold,
                        ),
                      ),
                      leading: Image.network(
                        '${BASE_URL}storage/product_images/${product.image}',
                        width: 50,
                        height: 50,
                      ),
                      title: Text(product.name ?? ''),
                      subtitle: Text(product.date ?? ''),
                    );
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
