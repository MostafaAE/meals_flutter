import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MoMeal'),
      ),
      body: SafeArea(
        child: GridView(
          padding: const EdgeInsets.all(20),
          children: DUMMY_CATEGORIES
              .map((categoryData) => CategoryItem(
                  id: categoryData.id,
                  title: categoryData.title,
                  color: categoryData.color))
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    );
  }
}