class ArticleModel {
  String author = "";
  String title = "";
  String desc = "";
  String content = "";
  String url = "";
  String urlToImage = "";
  String publishedAt;

  ArticleModel(
      {required this.author,
      required this.title,
      required this.desc,
      required this.content,
      required this.url,
      required this.urlToImage,
      required this.publishedAt});
}
