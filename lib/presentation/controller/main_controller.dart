import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_app/data/product_repository.dart';
import 'package:money_app/domain/model/products/products.dart';
import 'package:money_app/presentation/pages/home/home_page.dart';
import 'package:money_app/presentation/pages/wallet/wallet_page.dart';

class MainController extends GetxController {
  final ProductRepository _repository;
  MainController(this._repository);
  var currentIndex = 0.obs;

  Future<List<Products>> getProduct() async {
    final response = await _repository.getProduct();
    return response;
  }

  changeIndex(int index) {
    currentIndex.value = index;
  }

  List<Widget> children = [
    const HomePage(),
    const WalletPage(),
    const Center(
      child: Text('Gift Page'),
    ),
    const Center(
      child: Text('Person Page'),
    ),
  ];
}
