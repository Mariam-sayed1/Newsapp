import 'package:flutter/material.dart';
import 'package:news_api/model/article.dart';
import 'package:news_api/widgets/article_item.dart';
import '../network/api_service.dart';
class ArticleListview extends StatefulWidget {
  const ArticleListview({super.key, });


  @override

  State<ArticleListview> createState() => _ArticleListviewState();
}
class _ArticleListviewState extends State<ArticleListview> {
  List<Article>?x;
  @override
  void initState() {
    getNwes();
    // TODO: implement initState
    super.initState();
  }
  getNwes()async{
    ApiService apiService=ApiService();
    x=await apiService.get();
    setState(() {

    });
  }
  @override

  Widget build(BuildContext context) {
    return x == null? SliverToBoxAdapter(child: CircularProgressIndicator()):
    SliverList.builder(
      itemBuilder: (context,index){
      return ArticleItem(article: x![index],);
    },itemCount: x!.length,);
  }
}
