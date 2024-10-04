import 'package:dio/dio.dart';

class ApiService{
  ApiService(this.dio);

  final baseURL = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  Future<Map<String,dynamic>> get({required String endPoint})async{
    var response = await dio.get(baseURL+endPoint);
    return response.data;
  }
}