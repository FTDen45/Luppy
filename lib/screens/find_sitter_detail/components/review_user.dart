import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'stars_reaiting.dart';

class ReviewUser extends StatelessWidget {
  ReviewUser({
    this.name,
    this.raiting,
    this.desc,
  });
  final String name;
  final double raiting;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kPaW),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                name,
                style: TextCustomMontserrat(
                  fontS: 18.0,
                  fontW: FontWeight.w600,
                ),
              ),
              StarsReaiting(
                color: kLuppyLightGray,
                reiting: raiting,
                size: getProportionateScreenWidth(11),
              ),
            ],
          ),
          Text(
            desc,
            style: TextCustomMontserrat(
              fontS: 14.0,
              fontW: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
