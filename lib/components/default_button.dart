import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
    this.bgColor = Colors.white,
    this.borderW = 2,
    this.width = 55,
  }) : super(key: key);
  final text;
  final Function press;
  final Color bgColor;
  final double borderW;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(51),
      width: getProportionateScreenWidth(width),
      margin: EdgeInsets.symmetric(horizontal: 0),
      child: RaisedButton(
        elevation: 0,
        onPressed: press,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(16)),
          side: BorderSide(color: kLuppyLightGray, width: borderW),
        ),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(getProportionateScreenWidth(16)),
            color: bgColor,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: kPaW),
            constraints: BoxConstraints(
              minWidth: getProportionateScreenWidth(width),
            ),
            alignment: Alignment.center,
            child: text,
          ),
        ),
      ),
    );
  }
}
