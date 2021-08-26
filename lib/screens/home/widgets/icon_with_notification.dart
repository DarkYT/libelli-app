import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class IconWithNotification extends StatelessWidget {
  const IconWithNotification({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.isNotified,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final bool isNotified;

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
          if(isNotified)
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
    );
  }
}