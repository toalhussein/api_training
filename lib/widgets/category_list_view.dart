import 'package:api_training/models/category_model.dart';
import 'package:api_training/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategotiesListView extends StatelessWidget {
  CategotiesListView({
    super.key,
  });

  final List<CategoryModel> categoryItem = [
    CategoryModel(image: 'assets/images/B2.png', title: 'business'),
    CategoryModel(
        image: 'assets/images/entertaiment.jpg', title: 'entertainment'),
    CategoryModel(image: 'assets/images/health.avif', title: 'health'),
    CategoryModel(image: 'assets/images/science.avif', title: 'science'),
    CategoryModel(image: 'assets/images/sports.jpeg', title: 'sports'),
    CategoryModel(image: 'assets/images/technology.jpeg', title: 'technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryItem.length,
          itemBuilder: (context, index) {
            return CategotyCard(
              myCategory: categoryItem[index],
            );
          }),
    );
  }
}



