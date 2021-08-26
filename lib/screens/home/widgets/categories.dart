import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';


class Categories extends StatefulWidget {

  final double screenWidth;
  final double screenHeight;

  const Categories({Key? key, required this.screenWidth, required this.screenHeight}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState(screenWidth: screenWidth, screenHeight: screenHeight);
}

class _CategoriesState extends State<Categories> {

  final double screenWidth;
  final double screenHeight;

  List<String> categories = ["Tout", "Scolaire", "Polar", "Fiction", "Histoire"];
  List<MaterialColor> colors = [Colors.red, Colors.deepOrange, Colors.blue, Colors.amber, Colors.blueGrey];
  // By default our first item will be selected
  int selectedIndex = 0;

  _CategoriesState({required this.screenWidth, required this.screenHeight});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
      child: Column(
        children: [
          SizedBox(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => buildCategory(index),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(24, screenHeight),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18, screenWidth)),
            child: Container(
              width: double.infinity,
              height: 50,
              color: colors[selectedIndex],
            ),
          )
        ],
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? Colors.black : kSecondaryColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5), //top padding 5
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}