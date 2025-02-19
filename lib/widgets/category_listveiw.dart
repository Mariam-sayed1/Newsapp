import 'package:flutter/material.dart';
import 'package:news_api/data.dart';
import 'package:news_api/model/category.dart';
import 'package:news_api/widgets/category_item.dart';
class CategoryListveiw extends StatefulWidget {
  const CategoryListveiw({super.key});

  @override
  State<CategoryListveiw> createState() => _CategoryListveiwState();
}
List<Category> m = data;
class _CategoryListveiwState extends State<CategoryListveiw> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
        return CategoryItem(category: m[index],);
      },itemCount: m.length),
    );
  }
}
