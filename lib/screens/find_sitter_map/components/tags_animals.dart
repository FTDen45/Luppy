import 'package:clube_ft/screens/find_sitter/find_sitter_screen.dart';
import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';

class TagsAnimals extends StatelessWidget {
  TagsAnimals({
    this.text = '',
    this.set = false,
  });
  final String text;
  final bool set;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(24),
        vertical: getProportionateScreenHeight(15),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(8),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getProportionateScreenWidth(32),
          ),
          border: Border.all(color: kMainBlack),
          color: !set ? kMainWhite : kMainBlack),
      child: Text(
        text,
        style: TextCustomMontserrat(
          fontS: 14.0,
          color: set ? kMainWhite : kMainBlack,
        ),
      ),
    );
  }
}
