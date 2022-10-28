import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/main_controller.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.changeIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: ''),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_rounded),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        );
      }),
      body: Obx(() {
        return controller.children[controller.currentIndex.value];
      }),
    );
  }
}
