import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AdsSitter extends StatelessWidget {
  AdsSitter({this.ontap});
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: getProportionateScreenHeight(160),
        padding: EdgeInsets.symmetric(horizontal: kPaW, vertical: kPaH),
        margin: EdgeInsets.only(
          left: kPaW,
          right: kPaW,
          bottom: kPaH,
        ),
        decoration: BoxDecoration(
          color: kMainWhite,
          borderRadius: BorderRadius.circular(
            getProportionateScreenWidth(10),
          ),
          boxShadow: [
            // to make elevation
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              offset: Offset(0, 4),
              blurRadius: 6,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/logo_hotel_01.png'),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),
                    Container(
                      width: getProportionateScreenWidth(261),
                      child: Text(
                        'We have the luxes for your kittens while you on vacation',
                        style: TextCustomMontserrat(
                            fontS: 14.0, fontW: FontWeight.normal),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/shield.svg',
                          width: getProportionateScreenWidth(14),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(4),
                        ),
                        Text('Hotel for pets',
                            style: TextCustomMontserrat(
                                fontS: 12.0,
                                fontW: FontWeight.w500,
                                color: kMainSuccess)),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/map_pin.svg',
                          width: getProportionateScreenWidth(14),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(4),
                        ),
                        Text('8 ml from you',
                            style: TextCustomMontserrat(
                              fontS: 12.0,
                              fontW: FontWeight.w400,
                            )),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
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
                          '4.8',
                          style: TextCustomMontserrat(
                            color: kLuppyYellow,
                            fontS: 12.0,
                            fontW: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),
                    Text(
                      '\$ 15',
                      style: TextCustomMontserrat(
                        color: kLuppyGray,
                        fontS: 18.0,
                        fontW: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
