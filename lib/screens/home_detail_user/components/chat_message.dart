import 'package:clube_ft/size_config.dart';
import 'package:flutter/material.dart';
import 'package:clube_ft/enums.dart';
import 'package:clube_ft/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatMessage extends StatelessWidget {
  ChatMessage({
    this.who = Who.my,
    this.imgAvatar = '',
    this.ShowImgAvatar = true,
    this.ShowReadIcon = true,
    this.read = false,
    this.text = '',
    this.pos = CloudPosition.one,
  });
  final Who who;
  final String imgAvatar;
  final bool ShowImgAvatar;
  final bool ShowReadIcon;
  final bool read;
  final String text;
  final CloudPosition pos;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          Who.you == who ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Who.my == who
                ? Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(5)),
                    child: CircleAvatar(
                      radius: getProportionateScreenWidth(14),
                      backgroundImage: AssetImage(imgAvatar),
                      backgroundColor: Colors.transparent,
                    ),
                  )
                : Container(),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: getProportionateScreenHeight(1)),
              padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(7),
                horizontal: getProportionateScreenWidth(15),
              ),
              constraints: BoxConstraints(
                minWidth: getProportionateScreenWidth(10),
                maxWidth: getProportionateScreenWidth(220),
              ),
              decoration: BoxDecoration(
                color: Who.you == who
                    ? kLuppyPurple
                    : kMainBlack.withOpacity(0.06),
                borderRadius: Who.you == who
                    ? (CloudPosition.one == pos
                        ? BorderRadius.circular(getProportionateScreenWidth(18))
                        : CloudPosition.first == pos
                            ? BorderRadius.only(
                                bottomLeft: Radius.circular(
                                    getProportionateScreenWidth(18)),
                                topLeft: Radius.circular(
                                    getProportionateScreenWidth(18)),
                                topRight: Radius.circular(
                                    getProportionateScreenWidth(18)),
                                bottomRight: Radius.circular(
                                    getProportionateScreenWidth(5)),
                              )
                            : CloudPosition.center == pos
                                ? BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                        getProportionateScreenWidth(18)),
                                    topLeft: Radius.circular(
                                        getProportionateScreenWidth(18)),
                                    topRight: Radius.circular(
                                        getProportionateScreenWidth(5)),
                                    bottomRight: Radius.circular(
                                        getProportionateScreenWidth(5)),
                                  )
                                : CloudPosition.last == pos
                                    ? BorderRadius.only(
                                        bottomLeft: Radius.circular(
                                            getProportionateScreenWidth(18)),
                                        topLeft: Radius.circular(
                                            getProportionateScreenWidth(18)),
                                        topRight: Radius.circular(
                                            getProportionateScreenWidth(5)),
                                        bottomRight: Radius.circular(
                                            getProportionateScreenWidth(18)),
                                      )
                                    : null)
                    : (CloudPosition.one == pos
                        ? BorderRadius.circular(getProportionateScreenWidth(18))
                        : CloudPosition.first == pos
                            ? BorderRadius.only(
                                bottomLeft: Radius.circular(
                                    getProportionateScreenWidth(5)),
                                topLeft: Radius.circular(
                                    getProportionateScreenWidth(18)),
                                topRight: Radius.circular(
                                    getProportionateScreenWidth(18)),
                                bottomRight: Radius.circular(
                                    getProportionateScreenWidth(18)),
                              )
                            : CloudPosition.center == pos
                                ? BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                        getProportionateScreenWidth(5)),
                                    topLeft: Radius.circular(
                                        getProportionateScreenWidth(5)),
                                    topRight: Radius.circular(
                                        getProportionateScreenWidth(18)),
                                    bottomRight: Radius.circular(
                                        getProportionateScreenWidth(18)),
                                  )
                                : CloudPosition.last == pos
                                    ? BorderRadius.only(
                                        bottomLeft: Radius.circular(
                                            getProportionateScreenWidth(18)),
                                        topLeft: Radius.circular(
                                            getProportionateScreenWidth(5)),
                                        topRight: Radius.circular(
                                            getProportionateScreenWidth(18)),
                                        bottomRight: Radius.circular(
                                            getProportionateScreenWidth(18)),
                                      )
                                    : null),
              ),
              child: Text(
                text,
                style: TextCustomMontserrat(
                  fontS: 16.0,
                  fontW: FontWeight.w400,
                  color: Who.you == who ? kMainWhite : kMainBlack,
                ),
              ),
            ),
            Who.you == who
                ? ShowReadIcon
                    ? Container(
                        width: getProportionateScreenWidth(30),
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(5)),
                        child: SvgPicture.asset(
                          read
                              ? 'assets/icons/read_true.svg'
                              : 'assets/icons/read_none.svg',
                          width: getProportionateScreenWidth(14),
                        ),
                      )
                    : Container(
                        width: getProportionateScreenWidth(30),
                      )
                : Container(),
          ],
        ),
      ],
    );
  }
}
