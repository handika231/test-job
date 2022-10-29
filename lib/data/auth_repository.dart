import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:money_app/common/constanta.dart';
import 'package:money_app/presentation/pages/home/home_page.dart';

class AuthRepository {
  final Dio _dio;

  AuthRepository(this._dio);

  Future login(String email, String password) async {
    try {
      final response = await _dio.post(
        '${BASE_URL}api/login',
        data: {
          'email': email,
          'password': password,
        },
      );
      if (response.statusCode == 200) {
        Get.offAll(() => const HomePage());
        return response.data;
      }
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

  Future register(String email, String password, String name) async {
    try {
      final response = await _dio.post(
        '${BASE_URL}api/register',
        data: {
          'email': email,
          'password': password,
          'name': name,
        },
      );
      if (response.statusCode == 200) {
        Get.offAll(() => const HomePage());
        return response.data;
      }
    } on DioError catch (e) {
      return e.response!.data;
    }
  }
}
