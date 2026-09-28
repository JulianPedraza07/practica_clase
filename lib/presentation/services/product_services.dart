import 'package:dio/dio.dart';
import 'package:practica_clase/models/product_model.dart';

class ProductService {
  final Dio _dio = Dio();
  Future<List<ProducModel>> getProduct() async{
    final response = await _dio.get("https://fakestoreapi.com/products");
    if(response.statusCode != 200){
      return [];
    }

    final List<dynamic> data = response.data;
    return data.map( (elemento)=> ProducModel.fromJson(elemento) ).toList();
  }
}