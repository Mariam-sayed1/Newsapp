import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_api/widgets/article_listview.dart';
import 'package:news_api/widgets/category_item.dart';
import 'package:news_api/widgets/category_listveiw.dart';

import '../manager/cubit.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override

  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override

  Widget build(BuildContext context) {
    return

      Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal,
        title:Text(" News App",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body:

      CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CategoryListveiw()),
          SliverToBoxAdapter(child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("General News",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),),
           ArticleListview(),
           SliverToBoxAdapter(child: SizedBox(height: 5,))
        ],
      ),
    );
  }
}
