import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';
import 'package:clube_ft/enums.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:clube_ft/screens/find_pet/components/pet.dart';
import 'package:clube_ft/screens/find_pet_detail/find_pet_detail_screen.dart';
import 'package:clube_ft/screens/find_sitter/components/sitter.dart';
import 'package:clube_ft/screens/find_sitter_detail/find_sitter_detail_screen.dart';

import './chat_message.dart';
import './chat_imgs.dart';

class Body extends StatelessWidget {
  Text PopUpMenuColors(String text, context) {
    if (text == 'Удалить запись') {
      return Text(
        text,
        style: TextCustomMontserrat(),
      );
    } else {
      return Text(
        text,
        style: TextCustomMontserrat(),
      );
    }
  }

  void handleClick(String value) {
    switch (value) {
      case 'Редактировать запись':
        print('Редактировать запись');
        break;
      case 'Поделиться записью':
        print('Поделиться записью');
        break;
      case 'Добавить в избранное':
        print('Добавить в избранное');
        break;
      case 'Удалить запись':
        print('Удалить запись');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      print('back arrow');
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: EdgeInsets.all(kPaW),
                      height: getProportionateScreenHeight(100),
                      width: getProportionateScreenWidth(375),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_back,
                                size: getProportionateScreenWidth(21),
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(10),
                              ),
                              CircleAvatar(
                                radius: getProportionateScreenWidth(14),
                                backgroundImage: AssetImage(
                                    'assets/images/user_sitter_01.png'),
                                backgroundColor: Colors.transparent,
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(10),
                              ),
                              Text(
                                'Bessie Cooper',
                                style: TextCustomMontserrat(
                                  fontS: 17.0,
                                  fontW: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          PopupMenuButton<String>(
                            icon: SizedBox.fromSize(
                              size: Size(24, 24), // button width and height
                              child: ClipOval(
                                child: Material(
                                  color: kLuppyLightLightGray, // button color
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SvgPicture.asset(
                                        'assets/icons/more.svg',
                                        fit: BoxFit.fill,
                                        width: getProportionateScreenWidth(4.5),
                                        height:
                                            getProportionateScreenHeight(17.5),
                                        color: kMainGray,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            onSelected: handleClick,
                            itemBuilder: (BuildContext context) {
                              return {
                                'Редактировать запись',
                                'Поделиться записью',
                                'Добавить в избранное',
                                'Удалить запись'
                              }.map((String choice) {
                                return PopupMenuItem<String>(
                                  value: choice,
                                  child: PopUpMenuColors(choice, context),
                                );
                              }).toList();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: getProportionateScreenHeight(812) -
                        getProportionateScreenHeight(100) - //HeaderTitle()

                        //getProportionateScreenHeight(80) - //BottomNavBar()
                        getHeightStatusBar(),
                    child: Column(
                      children: [
                        Container(
                          height: getProportionateScreenHeight(812) -
                              getProportionateScreenHeight(
                                  100) - //HeaderTitle()

                              getProportionateScreenHeight(
                                  80) - //BottomNavBar()
                              getHeightStatusBar(),
                          width: getProportionateScreenWidth(375),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                ChatMessage(
                                  who: Who.you,
                                  text: 'Yes, he was recently',
                                  pos: CloudPosition.first,
                                  ShowReadIcon: false,
                                ),
                                ChatMessage(
                                  who: Who.you,
                                  text: 'Yes, he was recently !!!!!!',
                                  pos: CloudPosition.last,
                                ),
                                ChatMessage(
                                  who: Who.my,
                                  text:
                                      'Yes, of course I can, these days I am free.',
                                  pos: CloudPosition.first,
                                  ShowImgAvatar: false,
                                ),
                                ChatMessage(
                                  who: Who.my,
                                  imgAvatar: 'assets/images/user_sitter_01.png',
                                  text: 'No problem',
                                  pos: CloudPosition.last,
                                ),
                                ChatMessage(
                                  who: Who.you,
                                  text: 'How are you doing?',
                                  pos: CloudPosition.first,
                                  ShowReadIcon: false,
                                ),
                                ChatImgs(
                                  who: Who.you,
                                  ShowReadIcon: true,
                                  count_imgs: 2,
                                  img1: 'assets/images/chat_img_cat_01.png',
                                  img2: 'assets/images/chat_img_cat_02.png',
                                  img1Func: () {
                                    print('chat_img_cat_01');
                                  },
                                  img2Func: () {
                                    print('chat_img_cat_02');
                                  },
                                ),
                                ChatImgs(
                                  imgAvatar: 'assets/images/user_sitter_01.png',
                                  who: Who.my,
                                  ShowReadIcon: false,
                                  count_imgs: 1,
                                  img1: 'assets/images/chat_img_cat_01.png',
                                  img1Func: () {
                                    print('chat_img_cat_01');
                                  },
                                ),
                                ChatImgs(
                                  imgAvatar: 'assets/images/user_sitter_01.png',
                                  who: Who.my,
                                  ShowReadIcon: true,
                                  count_imgs: 3,
                                  img1: 'assets/images/chat_img_cat_01.png',
                                  img2: 'assets/images/chat_img_cat_02.png',
                                  img3: 'assets/images/chat_img_cat_01.png',
                                  img1Func: () {
                                    print('chat_img_cat_01');
                                  },
                                  img2Func: () {
                                    print('chat_img_cat_02');
                                  },
                                  img3Func: () {
                                    print('chat_img_cat_03');
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              color: kMainWhite,
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(15),
                vertical: getProportionateScreenHeight(9),
              ),
              height: getProportionateScreenHeight(66),
              width: getProportionateScreenWidth(375),
              child: TextField(
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  hintText: 'Aa',
                  suffixIcon: GestureDetector(
                    onTap: () {
                      print('smile');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset('assets/icons/smile.svg'),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
