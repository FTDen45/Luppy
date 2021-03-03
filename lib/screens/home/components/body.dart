import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';
import 'package:clube_ft/enums.dart';

import 'package:clube_ft/screens/home_detail_sitter/home_detail_sitter_screen.dart';
import 'package:clube_ft/screens/home_detail_user/home_detail_user_screen.dart';

import './message.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(kPaW),
            height: getProportionateScreenHeight(90),
            width: getProportionateScreenWidth(375),
            child: Text(
              'Action Center',
              style: TextCustomMontserrat(
                fontS: 28.0,
                fontW: FontWeight.w800,
              ),
            ),
          ),
          Container(
            height: getProportionateScreenHeight(812) -
                getProportionateScreenHeight(90) - //HeaderFind()
                getProportionateScreenHeight(80) - //BottomNavBar()
                getHeightStatusBar(),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Message(
                    logo: MessageLogo.message,
                    name: 'Bessie Cooper',
                    imgUser: 'assets/images/user_sitter_01_detail.png',
                    time: '9:40',
                    desc: 'You: Sent photos',
                    select: false,
                    press: () {
                      print('Bessie Cooper');
                      Navigator.pushNamed(
                          context, HomeDetailUserScreen.routeName);
                    },
                  ),
                  Message(
                    logo: MessageLogo.dinDone,
                    name: '4 New applications for your ad',
                    time: '9:40',
                    desc: 'Need a siiter for Charlie [dog]',
                    select: true,
                    press: () {
                      print('4 New applications for your ad');
                      Navigator.pushNamed(
                          context, HomeDetailSitterScreen.routeName);
                    },
                  ),
                  Message(
                    logo: MessageLogo.message,
                    imgUser: 'assets/images/user_sitter_01_detail.png',
                    name: 'Polina Petrova',
                    time: '9:40',
                    desc: 'Good evening!',
                    select: false,
                    press: () {
                      print('Polina Petrova');
                      Navigator.pushNamed(
                          context, HomeDetailUserScreen.routeName);
                    },
                  ),
                  Message(
                    logo: MessageLogo.message,
                    imgUser: 'assets/images/user_sitter_01_detail.png',
                    name: 'Jenny Wilson',
                    time: '9:40',
                    desc: 'Hey Cody! Is Doggy ready to the meeting today?',
                    select: false,
                    press: () {
                      print('Jenny Wilson');
                      Navigator.pushNamed(
                          context, HomeDetailUserScreen.routeName);
                    },
                  ),
                  Message(
                    logo: MessageLogo.star,
                    imgUser: 'assets/images/user_sitter_01_detail.png',
                    name: 'Floyd Miles rated you',
                    time: '9:40',
                    desc: 'Great thanks to you, Cody! 👍',
                    select: false,
                    press: () {
                      print('Floyd Miles rated you');
                      Navigator.pushNamed(
                          context, HomeDetailUserScreen.routeName);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
