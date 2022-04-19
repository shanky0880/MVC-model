import 'package:dio/dio.dart';
import 'package:mvvm_model/authentication/domain/ab_productlist.dart';
import 'package:mvvm_model/authentication/domain/product_creation_model.dart';
import 'package:mvvm_model/core/presentation/urls.dart';

class RemoteAuth implements Abproduct {
  final Dio dio;

  RemoteAuth(this.dio);
  @override
  Future<List<Product>> getproduct() async {
    try {
      final response = await dio.get(AppUrl.baseUrl);
      print(response.data);
      final productdata = response.data as List;
      return productdata
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (e) {
      print('error $e');
    }
    throw UnimplementedError();
  }
}
