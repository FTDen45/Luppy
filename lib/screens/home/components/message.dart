import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';
import 'package:clube_ft/enums.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Message extends StatelessWidget {
  Message({
    this.logo,
    this.name,
    this.imgUser,
    this.desc,
    this.time,
    this.select = false,
    this.press,
  });

  final MessageLogo logo;
  final String name;
  final String imgUser;
  final String desc;
  final String time;
  final bool select;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: kPaW, vertical: kPaW),
        color: select ? kLuppyPeach : null,
        //height: getProportionateScreenHeight(90),
        width: getProportionateScreenWidth(375),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: kPaW),
              child: Column(
                children: [
                  MessageLogo.message == logo
                      ? SvgPicture.asset(
                          'assets/icons/message_mess.svg',
                          width: getProportionateScreenWidth(44),
                        )
                      : MessageLogo.dinDone == logo
                          ? SvgPicture.asset('assets/icons/message_dindon.svg',
                              width: getProportionateScreenWidth(44))
                          : SvgPicture.asset('assets/icons/message_star.svg',
                              width: getProportionateScreenWidth(44)),
                ],
              ),
            ),
            Container(
              width: getProportionateScreenWidth(270),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MessageLogo.message == logo || MessageLogo.star == logo
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: getProportionateScreenWidth(8),
                                  backgroundImage: AssetImage(imgUser),
                                  backgroundColor: Colors.transparent,
                                ),
                                SizedBox(
                                  width: getProportionateScreenWidth(5),
                                ),
                                Text(
                                  name,
                                  style: TextCustomMontserrat(
                                    fontS: 16.0,
                                    fontW: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              time,
                              style: TextCustomMontserrat(
                                fontS: 12.0,
                                fontW: FontWeight.w400,
                                color: kMainBlack.withOpacity(0.8),
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: getProportionateScreenWidth(235),
                              child: Text(
                                name,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                softWrap: false,
                                style: TextCustomMontserrat(
                                  fontS: 16.0,
                                  fontW: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              time,
                              style: TextCustomMontserrat(
                                fontS: 12.0,
                                fontW: FontWeight.w400,
                                color: kMainBlack.withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                  Text(
                    desc,
                    style: TextCustomMontserrat(
                      fontS: 14.0,
                      fontW: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
