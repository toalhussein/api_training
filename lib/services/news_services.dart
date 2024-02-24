import 'package:api_training/models/article_model.dart';
import 'package:dio/dio.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
  Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=923450c02f43402d92ff828f24bf9afc');
  Map<String, dynamic> josnData = response.data;
  List<dynamic> articles = josnData['articles'];
  
  List<ArticleModel> articlesList = [];
  
  
  for (var article in articles) {
    ArticleModel articleModel = ArticleModel.fromJson(article);
    if(article['title'] == "[Removed]" || article['title'] == null )
      {
        continue;
      }

    articlesList.add(articleModel);
  }
  return articlesList;
} catch (e) {
  return []; 
}
  }
}
