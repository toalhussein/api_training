import 'package:api_training/models/category_model.dart';
import 'package:api_training/views/category_view.dart';
import 'package:flutter/material.dart';

class CategotyCard extends StatelessWidget {
  const CategotyCard({super.key, required this.myCategory});
  final CategoryModel myCategory;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category: myCategory.title);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(myCategory.image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10),
          ),
          width: 150,
          height: 80,
          child: Center(
              child: Text(
            myCategory.title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          )),
        ),
      ),
    );
  }
}
