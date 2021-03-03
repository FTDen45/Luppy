import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';

class Tag extends StatelessWidget {
  Tag({
    this.name,
    this.ontap,
  });
  final String name;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            getProportionateScreenWidth(24),
          ),
        ),
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(12),
            vertical: getProportionateScreenWidth(2)),
        margin: EdgeInsets.only(
          right: getProportionateScreenWidth(10),
          bottom: getProportionateScreenWidth(10),
        ),
        child: Text(
          name,
          style: TextCustomMontserrat(fontS: 12.0, fontW: FontWeight.w500),
        ),
      ),
    );
  }
}
