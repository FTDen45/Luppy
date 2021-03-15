import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sitter extends StatelessWidget {
  Sitter({
    this.img,
    this.reting,
    this.pay,
    this.name,
    this.desc,
    this.identity,
    this.mlFromYou,
    this.mlFromYouCount,
    this.ontap,
  });
  final String img;
  final String reting;
  final String pay;
  final String name;
  final String desc;
  final bool identity;
  final bool mlFromYou;
  final double mlFromYouCount;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: kPaW),
        //height: getProportionateScreenHeight(139),
        width: getProportionateScreenWidth(375),
        child: Column(
          children: [
            SizedBox(
              height: kPaH,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: kPaW),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: getProportionateScreenWidth(27),
                        backgroundImage: AssetImage(img),
                        backgroundColor: Colors.transparent,
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(5),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/star.svg',
                            width: getProportionateScreenWidth(14),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(5),
                          ),
                          Text(
                            reting,
                            style: TextCustomMontserrat(
                              fontS: 12.0,
                              fontW: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(8),
                      ),
                      Text(
                        '\$ ' + pay,
                        style: TextCustomMontserrat(
                          color: kLuppyGray,
                          fontS: 11.0,
                          fontW: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: getProportionateScreenWidth(261),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextCustomMontserrat(
                            fontS: 17.0, fontW: FontWeight.w600),
                      ),
                      Text(
                        desc,
                        style: TextCustomMontserrat(
                            fontS: 14.0, fontW: FontWeight.normal),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(5),
                      ),
                      identity
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/shield.svg',
                                  width: getProportionateScreenWidth(14),
                                ),
                                SizedBox(
                                  width: getProportionateScreenWidth(4),
                                ),
                                Text('Identity confirmed',
                                    style: TextCustomMontserrat(
                                        fontS: 12.0,
                                        fontW: FontWeight.w500,
                                        color: kMainSuccess)),
                              ],
                            )
                          : Container(),
                      SizedBox(
                        height: getProportionateScreenHeight(5),
                      ),
                      mlFromYou
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/map_pin.svg',
                                  width: getProportionateScreenWidth(14),
                                ),
                                SizedBox(
                                  width: getProportionateScreenWidth(4),
                                ),
                                Text('${mlFromYouCount} ml from you',
                                    style: TextCustomMontserrat(
                                      fontS: 12.0,
                                      fontW: FontWeight.w400,
                                    )),
                              ],
                            )
                          : Container(),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: kPaH,
            ),
            Divider(
              color: kMainLightGray,
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
