import 'package:clube_ft/size_config.dart';
import 'package:flutter/material.dart';
import 'package:clube_ft/enums.dart';
import 'package:clube_ft/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatImgs extends StatelessWidget {
  ChatImgs({
    this.who = Who.my,
    this.imgAvatar = '',
    this.ShowImgAvatar = true,
    this.ShowReadIcon = true,
    this.read = false,
    this.count_imgs = 1,
    this.img1 = '',
    this.img2 = '',
    this.img3 = '',
    this.img1Func,
    this.img2Func,
    this.img3Func,
  });
  final Who who;
  final String imgAvatar;
  final bool ShowImgAvatar;
  final bool ShowReadIcon;
  final bool read;
  final num count_imgs; // MAX 3 images
  final String img1;
  final String img2;
  final String img3;
  final Function img1Func;
  final Function img2Func;
  final Function img3Func;

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
              height: 64,
              width: getProportionateScreenWidth(375),
              constraints: BoxConstraints(
                minWidth: getProportionateScreenWidth(10),
                maxWidth: getProportionateScreenWidth(300),
              ),
              child: Row(
                mainAxisAlignment: Who.you == who
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
                children: [
                  count_imgs == 1
                      ? GestureDetector(
                          onTap: img1Func,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(
                                getProportionateScreenWidth(18))),
                            child: Image.asset(
                              img1,
                              width: getProportionateScreenWidth(100),
                            ),
                          ),
                        )
                      : (count_imgs == 2)
                          ? Row(
                              children: [
                                GestureDetector(
                                  onTap: img1Func,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        getProportionateScreenWidth(18)),
                                    child: Image.asset(
                                      img1,
                                      width: getProportionateScreenWidth(100),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: img2Func,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        getProportionateScreenWidth(18)),
                                    child: Image.asset(
                                      img2,
                                      width: getProportionateScreenWidth(100),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : (count_imgs == 3)
                              ? Row(
                                  children: [
                                    GestureDetector(
                                      onTap: img1Func,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            getProportionateScreenWidth(18)),
                                        child: Image.asset(
                                          img1,
                                          width:
                                              getProportionateScreenWidth(100),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: img2Func,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            getProportionateScreenWidth(18)),
                                        child: Image.asset(
                                          img2,
                                          width:
                                              getProportionateScreenWidth(100),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: img3Func,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            getProportionateScreenWidth(18)),
                                        child: Image.asset(
                                          img3,
                                          width:
                                              getProportionateScreenWidth(100),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Container(),
                ],
              ),
              margin: EdgeInsets.symmetric(
                  vertical: getProportionateScreenHeight(1)),
              decoration: BoxDecoration(
                  //color: Colors.black,

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
