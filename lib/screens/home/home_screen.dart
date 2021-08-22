import 'package:app_livres/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {

  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {

    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    double screenWidth = _mediaQueryData.size.width;
    double screenHeight = _mediaQueryData.size.height;
    Orientation orientation = _mediaQueryData.orientation;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(24, screenHeight),),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18, screenWidth)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Stack(
                          overflow: Overflow.visible,
                          children: [
                            Container(
                              padding: EdgeInsets.all(getProportionateScreenWidth(9, screenWidth)),
                              width: getProportionateScreenWidth(36, screenWidth),
                              height: getProportionateScreenHeight(36, screenHeight),
                              child: SvgPicture.asset("assets/icons/menu.svg"),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Stack(
                          overflow: Overflow.visible,
                          children: [
                            Container(
                              padding: EdgeInsets.all(getProportionateScreenWidth(9, screenWidth)),
                              width: getProportionateScreenWidth(36, screenWidth),
                              height: getProportionateScreenHeight(36, screenHeight),
                              child: SvgPicture.asset("assets/icons/bell.svg"),
                            ),
                            Positioned(
                              top: 8,
                              right: 4,
                              child: Container(
                                height: getProportionateScreenWidth(8, screenWidth),
                                width: getProportionateScreenWidth(8,screenHeight),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFF4848),
                                  shape: BoxShape.circle,
                                  border: Border.all(width: 1, color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(24, screenHeight),),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18, screenWidth)),
                  child: Container(
                    width: screenWidth,
                    child: Text(
                      'Que recherchez-vous ?',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(24, screenHeight),),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18, screenWidth)),
                  child: Container(
                    width: double.infinity,
                    height: getProportionateScreenHeight(50, screenHeight),
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F0F0),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: screenWidth*0.6,
                          height: double.infinity,
                          child: TextField(
                              onChanged: (value) => print(value),
                              textAlign: TextAlign.left,
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: getProportionateScreenWidth(20,screenWidth),),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  hintText: "Rechercher (titre, auteur, ISBN...)",
                                  prefixIcon: Icon(Icons.search)),
                              ),
                        ),
                        Container(
                          child: InkWell(
                            onTap: () {
                            },
                            child: Stack(
                              overflow: Overflow.visible,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(getProportionateScreenWidth(9, screenWidth)),
                                  width: getProportionateScreenWidth(36, screenWidth),
                                  height: getProportionateScreenHeight(36, screenHeight),
                                  child: SvgPicture.asset("assets/icons/filter.svg"),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    ),
                  ),
                SizedBox(height: getProportionateScreenHeight(24, screenHeight),),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18, screenWidth)),
                  child: Container(
                    width: double.infinity,
                    height: getProportionateScreenHeight(185, screenHeight),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        color: Colors.black.withOpacity(0.06),
                        blurRadius: 20,
                      ),]
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(getProportionateScreenHeight(14, screenHeight)),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: Column(
                              children: [
                                Text(
                                  "Faites de la place dans vos étagères !",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black
                                  ),
                                ),
                                SizedBox(height: getProportionateScreenHeight(8, screenHeight),),
                                Text(
                                  "La vente de livres entre particuliers n'a jamais été aussi simple",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                      color: Color(0xFF9AA4B1)
                                  ),
                                ),
                                SizedBox(height: getProportionateScreenHeight(8, screenHeight),),
                                TextButton(
                                    onPressed: (){},
                                    style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: getProportionateScreenWidth(12, screenWidth),
                                        vertical: getProportionateScreenHeight(8, screenHeight)
                                      ),
                                      backgroundColor: Colors.black,
                                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                    ),
                                    child: Text('Je vends')
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              child: SvgPicture.asset("assets/images/homepage_ad_image.svg"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                ],
            ),
          ),
        ),
      ),
    );
  }

}