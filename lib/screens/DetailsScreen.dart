import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/cubit.dart';
class DetailsScreen extends StatefulWidget {
  final String id;
  final String name;
  final Widget ipa;
  const DetailsScreen({super.key, required this.id, required this.name, required this.ipa});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override


  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> AppCubit()..getNws(name: widget.name),
      child: Scaffold(
        appBar: AppBar(
            title: Text(widget.name),
          backgroundColor: widget.id=="c1"?Colors.blueGrey:widget.id=="c2"?Colors.blue:widget.id=="c3"?Colors.red:widget.id=="c4"?Colors.green:Colors.orange,
          centerTitle: true,
        ),
        body: CustomScrollView(
          slivers: [
            widget.ipa
          ],
      ),
      ),
    );
  }
}
