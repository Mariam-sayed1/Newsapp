import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_api/manager/cubit.dart';
import 'package:news_api/manager/state.dart';
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

  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit,AppState>(builder: (contex,state){
     if(state is LoadedState){
       return  SliverList.builder(
         itemBuilder: (context,index){
      return ArticleItem(
        article: state.x[index],);
      },itemCount: state.x.length,);}
       else if(state is ErrorState){ return SliverToBoxAdapter(child: Text("Error ${state.errorMassage}"));}

       else {
      return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
     }
    }

    );
  }
}
