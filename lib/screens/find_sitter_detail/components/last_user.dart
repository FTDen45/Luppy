import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LastUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(130),
      height: getProportionateScreenHeight(32),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            child: CircleAvatar(
              radius: getProportionateScreenWidth(11),
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: getProportionateScreenWidth(10),
                backgroundImage: AssetImage('assets/images/order_user_01.png'),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          Positioned(
            left: 17,
            child: CircleAvatar(
              radius: getProportionateScreenWidth(11),
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: getProportionateScreenWidth(10),
                backgroundImage: AssetImage('assets/images/order_user_02.png'),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          Positioned(
            left: 36,
            child: CircleAvatar(
              radius: getProportionateScreenWidth(11),
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: getProportionateScreenWidth(10),
                backgroundImage: AssetImage('assets/images/order_user_03.png'),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          Positioned(
            left: 56,
            child: CircleAvatar(
              radius: getProportionateScreenWidth(11),
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: getProportionateScreenWidth(10),
                backgroundImage: AssetImage('assets/images/order_user_04.png'),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          Positioned(
            left: 76,
            child: CircleAvatar(
              radius: getProportionateScreenWidth(11),
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: getProportionateScreenWidth(10),
                backgroundColor: Colors.black,
                child: Text(
                  '28',
                  style: TextCustomMontserrat(
                    fontS: 9.0,
                    color: Colors.white,
                    fontW: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
