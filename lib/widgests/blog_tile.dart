import 'package:flutter/material.dart';
import 'package:news_app/views/article_view.dart';

class BlogTile extends StatelessWidget {
  // const BlogTile({Key? key}) : super(key: key);
  final String imageUrl, title, desc, url;
  BlogTile({required this.imageUrl, required this.title, required this.desc, required this.url});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context){
            return ArticleView(url);
          }
        ));
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 15),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageUrl,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 17, color: Colors.black87),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              desc,
              style: TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
