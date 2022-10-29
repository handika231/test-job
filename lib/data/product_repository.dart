import 'package:dio/dio.dart';
import 'package:money_app/common/constanta.dart';
import 'package:money_app/domain/model/products/products.dart';

class ProductRepository {
  final Dio _dio;
  ProductRepository(this._dio);

  Future<List<Products>> getProduct() async {
    List<Products> products = [];
    try {
      final response = await _dio.get('${BASE_URL}api/products');
      if (response.statusCode == 200) {
        products =
            response.data.map<Products>((e) => Products.fromJson(e)).toList();
      }
    } on DioError catch (e) {
      return e.response!.data;
    }
    return products;
  }
}
