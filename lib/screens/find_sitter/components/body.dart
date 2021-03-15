import 'package:clube_ft/screens/find_sitter/find_sitter_screen.dart';
import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';

import 'package:clube_ft/components/header_find.dart';
import 'package:clube_ft/screens/find_sitter_detail/find_sitter_detail_screen.dart';

import 'package:clube_ft/screens/find_sitter_map/find_sitter_map_screen.dart';
import './ads_sitter.dart';
import './sitter.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Column(
        children: [
          HeaderFind(
            title: 'Find Sitter',
            MapList: () {
              Navigator.pushNamed(context, FindSitterMapScreen.routeName);
            },
          ),
          AdsSitter(
            ontap: () {
              print('AdsSitter');
            },
          ),
          Container(
            height: getProportionateScreenHeight(812) -
                getProportionateScreenHeight(158) - //HeaderFind()
                getProportionateScreenHeight(160) - //AdsSitting()
                kPaH - //AdsSitting()
                getProportionateScreenHeight(80) - //BottomNavBar()
                getHeightStatusBar(),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Sitter(
                    img: 'assets/images/user_sitter_01.png',
                    reting: '4.8',
                    pay: '24',
                    name: 'Bessie Cooper',
                    desc:
                        'I will look after your pet while you are away, walking, playing and caring ...',
                    identity: true,
                    mlFromYou: true,
                    mlFromYouCount: 8,
                    ontap: () {
                      print('user_sitter_01');
                      Navigator.pushNamed(
                          context, FindSitterDetailScreen.routeName);
                    },
                  ),
                  Sitter(
                    img: 'assets/images/user_sitter_02.png',
                    reting: '4.7',
                    pay: '15',
                    name: 'Cameron Williamson',
                    desc:
                        'The sphere of our activity plays an important role in shaping ...',
                    identity: true,
                    mlFromYou: false,
                    mlFromYouCount: 8,
                    ontap: () {
                      print('user_sitter_02');
                    },
                  ),
                  Sitter(
                    img: 'assets/images/user_sitter_03.png',
                    reting: '4.3',
                    pay: '22',
                    name: 'Guy Hawkins',
                    desc:
                        'I will look after your pet while you are away, walking, playing and caring ...',
                    identity: false,
                    mlFromYou: true,
                    mlFromYouCount: 12,
                    ontap: () {
                      print('user_sitter_03');
                    },
                  ),
                  Sitter(
                    img: 'assets/images/user_sitter_04.png',
                    reting: '4.8',
                    pay: '26',
                    name: 'Jerome Bell',
                    desc:
                        'The sphere of our activity plays an important role in shaping ...',
                    identity: true,
                    mlFromYou: true,
                    mlFromYouCount: 8,
                    ontap: () {
                      print('user_sitter_04');
                    },
                  ),
                  Sitter(
                    img: 'assets/images/user_sitter_05.png',
                    reting: '4.9',
                    pay: '38',
                    name: 'Darlene Robertson',
                    desc: 'I will take care of your friend in your absence!',
                    identity: true,
                    mlFromYou: true,
                    mlFromYouCount: 6,
                    ontap: () {
                      print('user_sitter_05');
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
