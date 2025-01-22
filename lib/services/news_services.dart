import 'package:dio/dio.dart';
import 'package:news/models/article_model.dart';

class NewsServices {
  final dio = Dio();

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      final Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=9cb595ef38344acc8463ca1c22b2371f&category=$category');
      Map<String, dynamic> jasonData = response.data;
      List<dynamic> articles = jasonData["articles"];
      List<ArticleModel> articleList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJason(article);
        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
