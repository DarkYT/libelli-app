import 'package:app_livres/screens/scan/scan_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';
import 'icon_with_notification.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18, screenWidth)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ScanResultScreen.routeName);
            },
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(9, screenWidth)),
                  width: getProportionateScreenWidth(36, screenWidth),
                  height: getProportionateScreenHeight(36, screenHeight),
                  child: SvgPicture.asset("assets/icons/maximize.svg"),
                )
              ],
            ),
          ),
          IconWithNotification(screenWidth: screenWidth, screenHeight: screenHeight, isNotified: true),
        ],
      ),
    );
  }
}
