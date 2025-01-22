class ArticleModel {
  final String title;
  final String? description;
  final String? image;
  final String url;
  

  ArticleModel( {required this.url,required this.title, required this.description, required this.image});

 factory ArticleModel.fromJason(jason){
   return ArticleModel(
            title: jason['title'],
            description: jason['description'],
            image: jason['urlToImage'],
            url: jason['url'],);
  }
}
