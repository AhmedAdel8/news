import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/widgets/category_card.dart';

class categoriesListView extends StatelessWidget {
  const categoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'images/4.jpg',
      name: 'Business',
    ),
    CategoryModel(
      image: 'images/3.jpg',
      name: 'Science',
    ),
    CategoryModel(
      image: 'images/general_news1.jpg',
      name: 'general',
    ),
     CategoryModel(
      image: 'images/Health.jpg',
      name: 'Health',
    ),
    CategoryModel(
      image: 'images/techno.jpg',
      name: 'Technology',
    ),
    CategoryModel(
      image: 'images/2.jpg',
      name: 'sports',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return  categoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
