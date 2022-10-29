import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:money_app/data/product_repository.dart';

import 'product_repository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Dio>()])
main() {
  final data = [
    {
      "id": 1,
      "name": "Apple",
      "description": "Fresh apple from choosed farmer",
      "price": 5,
      "date": "2022-01-31",
      "image": "apple.jpg",
      "created_at": "2022-01-31T17:36:55.000000Z",
      "updated_at": "2022-01-31T17:36:55.000000Z"
    },
    {
      "id": 2,
      "name": "Banana",
      "description": "Fresh banana from choosed farmer",
      "price": 4,
      "date": "2022-01-31",
      "image": "banana.jpg",
      "created_at": "2022-01-31T17:36:55.000000Z",
      "updated_at": "2022-01-31T17:36:55.000000Z"
    },
    {
      "id": 3,
      "name": "Strawberry",
      "description": "Fresh strawberry from choosed farmer",
      "price": 3,
      "date": "2022-01-31",
      "image": "strawberry.jpg",
      "created_at": "2022-01-31T17:36:55.000000Z",
      "updated_at": "2022-01-31T17:36:55.000000Z"
    }
  ];
  late ProductRepository productRepository;
  late Dio dio;
  setUp(() {
    dio = Dio();
    productRepository = ProductRepository(dio);
  });
  group('Fetch Products', () {
    test('return if products complete', () async {
      final client = MockDio();
      when(client.get(any)).thenAnswer(
        (_) async => Response(
          data: data,
          requestOptions: RequestOptions(path: ''),
        ),
      );
      final result = await productRepository.getProduct();
      expect(result.length, 3);
    });
  });
}
