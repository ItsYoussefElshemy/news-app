import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(categoryName: 'entertainment', image: 'assets/entertainment.jpeg'),
    CategoryModel(categoryName: 'Sports', image: 'assets/sports.jpeg'),
    CategoryModel(categoryName: 'Business', image: 'assets/business.jpeg'),
    CategoryModel(categoryName: 'Science', image: 'assets/science.avif'),
    CategoryModel(categoryName: 'Technology', image: 'assets/technology.jpeg'),
    CategoryModel(categoryName: 'Health', image: 'assets/health.jpeg'),

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
