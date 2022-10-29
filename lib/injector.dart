import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:money_app/data/auth_repository.dart';
import 'package:money_app/presentation/controller/login_controller.dart';
import 'package:money_app/presentation/controller/main_controller.dart';

import 'data/product_repository.dart';

final locator = GetIt.instance;

init() {
  locator.registerLazySingleton(() => Dio());
  locator.registerLazySingleton(() => AuthRepository(locator()));
  locator.registerLazySingleton(() => LoginController(locator()));
  locator.registerLazySingleton(() => ProductRepository(locator()));
  locator.registerLazySingleton(() => MainController(locator()));
}
