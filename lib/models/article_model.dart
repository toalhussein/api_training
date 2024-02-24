class ArticleModel {
  final String title;
  final String? image;
  final String? subTitle;
  final String? url;

  ArticleModel(
      {required this.title,
      required this.image,
      required this.subTitle,
      required this.url});

  factory ArticleModel.fromJson(josn) {
    return ArticleModel(
      title: josn['title'],
      image: josn['urlToImage'],
      subTitle: josn['description'],
      url: josn['url'],
    );
  }
}
