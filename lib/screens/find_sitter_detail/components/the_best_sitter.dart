import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'tag.dart';
import 'last_user.dart';
import 'stars_reaiting.dart';

class TheBestSitter extends StatelessWidget {
  TheBestSitter({
    this.tagsName,
    this.tagsFunction,
  });
  final List<String> tagsName;
  final List<Function> tagsFunction;

  Widget tags() {
    return Wrap(
      alignment: WrapAlignment.start,
      direction: Axis.horizontal,
      children: <Widget>[
        for (int i = 0; i < tagsName.length; i++)
          Tag(name: "${tagsName[i]}", ontap: tagsFunction[i]),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: getProportionateScreenHeight(203),
      width: getProportionateScreenWidth(375),
      margin: EdgeInsets.all(kPaW),
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      decoration: BoxDecoration(
        color: kLuppyPeach,
        borderRadius: BorderRadius.circular(
          getProportionateScreenWidth(18),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Top 20',
            style: TextCustomMontserrat(
              fontS: 12.0,
              fontW: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(1),
          ),
          Text(
            'The Best Sitter',
            style: TextCustomMontserrat(
              fontS: 18.0,
              fontW: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(1),
          ),
          tags(),
          Row(
            children: [
              Text(
                'Last order',
                style: TextCustomMontserrat(
                  fontS: 12.0,
                  fontW: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(5),
              ),
              Text(
                'December 13th',
                style: TextCustomMontserrat(
                  fontS: 12.0,
                  fontW: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LastUser(),
              StarsReaiting(),
            ],
          ),
        ],
      ),
    );
  }
}
