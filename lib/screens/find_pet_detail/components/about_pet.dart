import 'package:clube_ft/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:clube_ft/enums.dart';
import 'package:clube_ft/size_config.dart';

class AboutPet extends StatelessWidget {
  AboutPet({
    this.genderIcon,
    this.years,
    this.pay,
    this.owner,
    this.breed,
    this.mass,
    this.desc_title,
    this.desc,
    this.ontap,
  });
  final GenderIcon genderIcon;
  final String years;
  final num pay;
  final List owner;
  final String breed;
  final String mass;
  final String desc_title;
  final String desc;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kPaW,
        vertical: kPaW,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GenderIcon.men == genderIcon
                      ? SvgPicture.asset(
                          'assets/icons/gender_men.svg',
                          width: getProportionateScreenWidth(32),
                        )
                      : SvgPicture.asset(
                          'assets/icons/gender_women.svg',
                          width: getProportionateScreenWidth(32),
                        ),
                  Text(
                    years,
                    style: TextCustomMontserrat(
                      fontS: 20.0,
                      fontW: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenHeight(7),
                      horizontal: getProportionateScreenWidth(14.5),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getProportionateScreenWidth(22),
                        ),
                        border: Border.all(
                          color: kMainSuccess,
                        )),
                    child: Text(
                      '\$${pay} / day',
                      style: TextCustomMontserrat(
                        fontS: 14.0,
                        fontW: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: getProportionateScreenWidth(16),
                    backgroundImage: AssetImage(owner[0]['img']),
                    backgroundColor: Colors.transparent,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: kPaH,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                breed,
                style: TextCustomMontserrat(
                  fontS: 16.0,
                  fontW: FontWeight.w400,
                  color: kMainBlack.withOpacity(0.8),
                ),
              ),
              Text(
                mass,
                style: TextCustomMontserrat(
                  fontS: 16.0,
                  fontW: FontWeight.w400,
                  color: kMainBlack.withOpacity(0.8),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: getProportionateScreenHeight(10),
            ),
            child: Text(
              desc_title,
              style: TextCustomMontserrat(
                fontS: 16.0,
                fontW: FontWeight.w400,
                color: kMainBlack.withOpacity(0.8),
              ),
            ),
          ),
          Text(
            desc,
            style: TextCustomMontserrat(
              fontS: 16.0,
              fontW: FontWeight.w400,
              color: kMainBlack.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
