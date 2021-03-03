import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';

class Location extends StatelessWidget {
  Location({
    this.vert,
    this.horiz,
    this.ml,
  });
  final double vert;
  final double horiz;
  final String ml;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: getProportionateScreenHeight(vert),
      left: getProportionateScreenWidth(horiz),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(5),
          horizontal: getProportionateScreenWidth(8),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getProportionateScreenWidth(18),
          ),
          color: kLuppyPurple,
        ),
        child: Text(
          ml,
          style: TextCustomMontserrat(
            fontS: 17.0,
            fontW: FontWeight.w700,
            color: kMainWhite,
          ),
        ),
      ),
    );
  }
}
