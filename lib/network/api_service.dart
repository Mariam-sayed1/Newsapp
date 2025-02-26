import 'package:dio/dio.dart';
class ApiService{
  final _baseUrl ="https://newsapi.org/";
  final dio = Dio();

  get({required String endPoints})async{
    var responce =  await dio.get("$_baseUrl$endPoints");
    return responce.data;
  }
  post({required String endPoints})async{
    var responce =  await dio.get("$_baseUrl$endPoints");
    return responce.data;
  }
}
