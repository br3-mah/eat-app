import 'package:bookie/constants.dart';
import 'package:bookie/widgets/app-categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'app-item-card.dart';
import 'app-search-box.dart';

class Body extends StatelessWidget {
  // const Body({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SearchBox(
          onChanged: (value) {},
        ),
        CategorySection(),
        ItemCardList(),
        DiscountCard(),
      ],
    );
  }
}

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

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Offer & Discounts",
            style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            height: 166,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("images/wow.jpg"),
              ),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(colors: [
                  Color(0xFFFF961F).withOpacity(0.7),
                  kPrimaryColor.withOpacity(0.7),
                ]),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: SvgPicture.asset("icons/burger.svg"),
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(
                              text: "Get Discount of \n",
                              style: TextStyle(fontSize: 16),
                            ),
                            TextSpan(
                              text: "50%",
                              style: TextStyle(
                                fontSize: 43,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  "at Burger King's on your first order & instant cashback",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
