import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderFind extends StatelessWidget {
  HeaderFind({
    this.key,
    this.title,
    this.MapList,
    this.settings,
  });
  final Key key;
  final String title;
  final Function MapList;
  final Function settings;
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blueGrey,
      height: getProportionateScreenHeight(158),
      padding: EdgeInsets.all(kPaW),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: TextCustomMontserrat(
                  fontS: 28.0,
                  fontW: FontWeight.w800,
                ),
              ),
              GestureDetector(
                onTap: MapList,
                child: Text(
                  'Map',
                  style: TextCustomMontserrat(),
                ),
              )
            ],
          ),
          Container(
            height: kPaH,
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search',
              hintStyle: TextCustomMontserrat(
                  color: Colors.black45, fontS: 17.0, fontW: FontWeight.w500),
              prefixIcon: SizedBox(
                child: SvgPicture.asset(
                  'assets/icons/loop_text_field.svg',
                  fit: BoxFit.none,
                  color: Colors.black45,
                  width: getProportionateScreenWidth(16.0),
                  height: getProportionateScreenWidth(16.0),
                ),
              ),
              suffixIcon: IconButton(
                onPressed: settings,
                icon: SvgPicture.asset(
                  'assets/icons/settings.svg',
                  fit: BoxFit.none,
                  //color: Colors.black45,
                  width: getProportionateScreenWidth(24.0),
                  height: getProportionateScreenWidth(24.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
