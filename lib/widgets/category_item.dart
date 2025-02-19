import 'package:flutter/material.dart';
import 'package:news_api/model/category.dart';
import 'package:news_api/screens/DetailsScreen.dart';
class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(id: category.id, name: category.name, ipa: category.api,),
            ),
          );
        },
        child: CircleAvatar(
          radius: 55,
          backgroundImage: NetworkImage(category.image),
          child:
          Text(category.name, style: TextStyle(fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
// }
// Center(
// child: ElevatedButton(
// onPressed: () {
// Navigator.push(
// context,
// MaterialPageRoute(builder: (context) => NewScreen(id: 10)),
// );
// }