import 'package:flutter/material.dart';
import 'package:news_api/model/article.dart';
import 'package:news_api/model/category.dart';
import 'package:news_api/widgets/article_listview.dart';

var data = [
  Category(id: "c1", image: "image/pexels-cottonbro-3944377.jpg", name: "News", api: ArticleListview()),
  Category(id: "c5", image: "image/pexels-pixabay-358042.jpg", name: "Sport", api: ArticleListview()),
  Category(id: "c2", image: "image/pexels-element5-775032.jpg", name: "Health", api: ArticleListview()),
  Category(id: "c3", image: "image/pexels-nietjuhart-934063.jpg", name: "fashion", api: ArticleListview()),
  Category(id: "c4", image: "image/pexels-pixabay-301920.jpg", name: "Study", api: ArticleListview()),

];
