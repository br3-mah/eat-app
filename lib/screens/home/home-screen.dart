import 'package:bookie/widgets/app-body.dart';
import 'package:bookie/widgets/app-menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: rootMenuBar(context),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 35),
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -7),
              blurRadius: 33,
              color: Color(0xFF6DAED9).withOpacity(0.11),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("icons/home-delivery.svg"),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("icons/heart.svg"),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("icons/food-serving.svg"),
            ),
          ],
        ),
      ),
      body: Body(),
    );
  }
}
