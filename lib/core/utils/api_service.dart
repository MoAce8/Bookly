import 'package:dio/dio.dart';

class ApiService{
  ApiService(this._dio);

  final _baseURL = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

  Future<Map<String,dynamic>> get({required String endPoint})async{
    var response = await _dio.get(_baseURL+endPoint);
    return response.data;
  }
}