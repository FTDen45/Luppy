import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/enums.dart';
import 'package:clube_ft/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Pet extends StatelessWidget {
  Pet({
    this.img,
    this.name,
    this.genderIcon,
    this.desc,
    this.breed,
    this.years,
    this.pay,
    this.mlFromYou,
    this.ontap,
  });
  final String img;
  final String name;
  final GenderIcon genderIcon;
  final String desc;
  final String breed;
  final num years;
  final num pay;
  final num mlFromYou;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: kPaW),
        child: Column(
          children: [
            SizedBox(
              height: kPaH,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: kPaW),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(getProportionateScreenWidth(18)),
                    child: Image.asset(
                      img,
                      fit: BoxFit.cover,
                      width: getProportionateScreenWidth(54),
                      height: getProportionateScreenHeight(80),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          name,
                          style: TextCustomMontserrat(
                            fontS: 17.0,
                            fontW: FontWeight.w600,
                          ),
                        ),
                        GenderIcon.men == genderIcon
                            ? SvgPicture.asset('assets/icons/gender_men.svg')
                            : SvgPicture.asset('assets/icons/gender_women.svg'),
                      ],
                    ),
                    Text(
                      desc,
                      style: TextCustomMontserrat(
                        fontS: 13.0,
                        fontW: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          breed + " · ",
                          style: TextCustomMontserrat(
                            fontS: 13.0,
                            fontW: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "${years} years",
                          style: TextCustomMontserrat(
                            fontS: 13.0,
                            fontW: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "\$${pay}",
                          style: TextCustomMontserrat(
                            fontS: 11.0,
                            fontW: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          Icons.location_on,
                          color: kMainBlack,
                          size: getProportionateScreenWidth(12),
                        ),
                        Text(
                          "${mlFromYou} ml from you",
                          style: TextCustomMontserrat(
                            fontS: 12.0,
                            fontW: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: kPaH,
            ),
            Divider(
              color: kMainLightGray,
              height: 1,
            )
          ],
        ),
      ),
    );
  }
}
