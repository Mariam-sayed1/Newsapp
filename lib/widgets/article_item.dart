import 'package:flutter/material.dart';
import 'package:news_api/model/article.dart';
class ArticleItem extends StatefulWidget {
  final Article article ;
  const ArticleItem({super.key, required this.article });

  @override
  State<ArticleItem> createState() => _ArticleItemState();
}

class _ArticleItemState extends State<ArticleItem> {
  bool isexpanded= false;
bool expandDesc =false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
              height: 200,
              width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
            image: DecorationImage(image:NetworkImage(widget.article.image??"https://www.pexels.com/photo/black-smartphone-on-table-3747132/"),
            fit: BoxFit.fill,
            ),
            ),
          ),
          InkWell(
            onTap: (){
              setState(() {
                isexpanded = !isexpanded;
              });
            },
            child: Text(
                maxLines: isexpanded ? null: 1,
                overflow: isexpanded ? null: TextOverflow.ellipsis ,
                widget.article.name),
          ),
          InkWell(
              onTap: (){
                setState(() {
                  expandDesc=!expandDesc;
                });
              }
              ,
              child: Text(
                maxLines: expandDesc ? null: 1,
                overflow: expandDesc ? null: TextOverflow.ellipsis ,
                widget.article.desc??"error",style: TextStyle(color: Colors.grey),)),
        ],
      ),
    );
  }
}
