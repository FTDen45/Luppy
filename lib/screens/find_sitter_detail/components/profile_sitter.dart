import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileSitter extends StatelessWidget {
  ProfileSitter({
    this.avatar,
    this.name,
    this.desc,
  });
  final String avatar;
  final String name;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kPaW),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: getProportionateScreenHeight(20)),
            child: CircleAvatar(
              radius: getProportionateScreenWidth(47.5),
              backgroundImage: AssetImage(avatar),
              backgroundColor: Colors.transparent,
            ),
          ),
          Text(
            name,
            style: TextCustomMontserrat(fontW: FontWeight.w600, fontS: 18.0),
          ),
          Text(
            desc,
            style: TextCustomMontserrat(fontS: 14.0, fontW: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
