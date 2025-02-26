import 'package:flutter/material.dart';
import 'package:news_api/model/article.dart';
class Category{
  final String id;
  final String image;
  final String name;
  final Widget api;

 const Category({required this.id, required this.image, required this.name, required this.api});



}