import 'package:api_training/models/article_model.dart';
import 'package:api_training/services/news_services.dart';
import 'package:api_training/widgets/new_card.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServices(Dio()).getTopHeadlines(category: 'general');
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(
                child: CircularProgressIndicator(
            color: Colors.blue,
          )))
        : SliverList(
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
