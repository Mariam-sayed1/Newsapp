import 'package:flutter/material.dart';
class DetailsScreen extends StatelessWidget {
  final String id;
  final String name;
  final Widget ipa;
  const DetailsScreen({super.key, required this.id, required this.name, required this.ipa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(name),
        backgroundColor: id=="c1"?Colors.blueGrey:id=="c2"?Colors.blue:id=="c3"?Colors.red:id=="c4"?Colors.green:Colors.orange,
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          ipa
        ],
      ) ,
    );
  }
}
