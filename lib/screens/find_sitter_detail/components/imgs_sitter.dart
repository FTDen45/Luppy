import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';

class ImgsSitter extends StatelessWidget {
  ImgsSitter({
    this.img1,
    this.img2,
    this.img3,
  });
  final String img1;
  final String img2;
  final String img3;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            img1,
            fit: BoxFit.cover,
            width: getProportionateScreenWidth(124),
          ),
          Image.asset(
            img2,
            fit: BoxFit.cover,
            width: getProportionateScreenWidth(124),
          ),
          Image.asset(
            img3,
            fit: BoxFit.cover,
            width: getProportionateScreenWidth(124),
          ),
        ],
      ),
    );
  }
}
