import 'dart:convert';
import 'package:news_app/model/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  String category;
  News(this.category);
  List<ArticleModel> news = [];
  Future<void> getNews() async {
    var url = Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=9657fa65b63d41d5b1a0d2ad336a1d9e");
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    print(jsonData["status"]);
    if (jsonData["status"] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null &&
            element["author"] != null &&
            element["content"] != null) {
          ArticleModel articleModel = ArticleModel(
              author: element["author"],
              title: element["title"],
              desc: element["description"],
              content: element["content"],
              url: element["url"],
              urlToImage: element["urlToImage"],
              publishedAt: element["publishedAt"]);
          news.add(articleModel);
        }
      });
    }
  }
}
