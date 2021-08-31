import 'package:bookie/widgets/app-item-card.dart';
import 'package:flutter/material.dart';

class ItemCardList extends StatelessWidget {
  const ItemCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            svgSrc: "icons/burger.svg",
            title: "Burger & Juice",
            shopName: "McDonald's",
            press: () {},
          ),
          ItemCard(
            svgSrc: "icons/fast-food.svg",
            title: "Fast Foods",
            shopName: "Enginge Station - Katungu",
            press: () {},
          ),
          ItemCard(
            svgSrc: "icons/diet.svg",
            title: "Diet",
            shopName: "Bojangles",
            press: () {},
          ),
          ItemCard(
            svgSrc: "icons/cabbage.svg",
            title: "Veggies",
            shopName: "Food Lovers",
            press: () {},
          ),
          ItemCard(
            svgSrc: "icons/groceries.svg",
            title: "Groceries",
            shopName: "Shoprite",
            press: () {},
          ),
        ],
      ),
    );
  }
}
