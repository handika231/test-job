import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_app/presentation/pages/home/home_page.dart';

class MainController extends GetxController {
  var currentIndex = 0.obs;

  changeIndex(int index) {
    currentIndex.value = index;
  }

  List<Widget> children = [
    const HomePage(),
    const Scaffold(
      body: Center(
        child: Text('Wallet Page'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('Gift Page'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('Person Page'),
      ),
    )
  ];
}
