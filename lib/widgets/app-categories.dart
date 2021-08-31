import 'package:bookie/widgets/__partials/category-items.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(
            title: "Combo Meal",
            isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: "Beverages",
            press: () {},
          ),
          CategoryItem(
            title: "Fast Foods",
            press: () {},
          ),
          CategoryItem(
            title: "Snack & Sides",
            press: () {},
          ),
          CategoryItem(
            title: "Salad",
            press: () {},
          ),
          CategoryItem(
            title: "Receipies",
            press: () {},
          ),
        ],
      ),
    );
  }
}
