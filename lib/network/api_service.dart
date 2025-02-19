import 'package:dio/dio.dart';
import 'package:news_api/model/article.dart';
class ApiService{
  final dio = Dio();

  get()async{
    var responce =  await dio.get("https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=b7322dc5ba344383b344ba36c2ba9627");
    Map<String,dynamic> jeson= responce.data;
    List<Article> articles =[];
    for(var i in jeson["articles"]){
      articles.add(Article(image: i["urlToImage"], name: i["title"], desc: i["description"]));
    }
    return articles;
  }

}
