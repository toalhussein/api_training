import 'package:api_training/models/article_model.dart';
import 'package:api_training/widgets/new_card.dart';
import 'package:flutter/material.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  NewsListView({super.key, required this.articles});

  
  


  @override
  Widget build(BuildContext context) {
    
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: NewsCard(
          articleModel: articles[index],
        ),
      );
    }));
  }
}



