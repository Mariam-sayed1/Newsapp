import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_api/manager/cubit.dart';
import 'package:news_api/screens/home_screen.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>AppCubit()..getNws(),child: MaterialApp(
      home: HomeScreen(),
    ),);
  }
}
