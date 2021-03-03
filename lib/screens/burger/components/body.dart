import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';

import 'package:clube_ft/screens/find_sitter/find_sitter_screen.dart';
import 'package:clube_ft/screens/find_pet/find_pet_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: getProportionateScreenHeight(812) -
                  getProportionateScreenHeight(80) -
                  getHeightStatusBar(),
              width: getProportionateScreenWidth(375),
              //color: Colors.amber,
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: getProportionateScreenHeight(20)),
                    child: CircleAvatar(
                      radius: getProportionateScreenWidth(47.5),
                      backgroundImage: AssetImage('assets/images/userpic.png'),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Text(
                    'Cody Fisher',
                    style: TextCustomMontserrat(
                        fontW: FontWeight.w600, fontS: 18.0),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Find a Pet');
                      Navigator.pushNamed(context, FindPetScreen.routeName);
                    },
                    child: Container(
                      //color: Colors.redAccent,
                      height: getProportionateScreenHeight(64),
                      width: getProportionateScreenWidth(375),
                      padding:
                          EdgeInsets.all(getProportionateScreenHeight(20.0)),
                      child: Text(
                        'Find a Pet',
                        style: TextCustomMontserrat(fontW: FontWeight.bold),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Find a sitter');
                      Navigator.pushNamed(context, FindSitterScreen.routeName);
                    },
                    child: Container(
                      //color: Colors.redAccent,
                      height: getProportionateScreenHeight(64),
                      width: getProportionateScreenWidth(375),
                      padding:
                          EdgeInsets.all(getProportionateScreenHeight(20.0)),
                      child: Text(
                        'Find a sitter',
                        style: TextCustomMontserrat(fontW: FontWeight.bold),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Notification settings');
                    },
                    child: Container(
                      //color: Colors.redAccent,
                      height: getProportionateScreenHeight(64),
                      width: getProportionateScreenWidth(375),
                      padding:
                          EdgeInsets.all(getProportionateScreenHeight(20.0)),
                      child: Text(
                        'Notification settings',
                        style: TextCustomMontserrat(fontW: FontWeight.bold),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('About');
                    },
                    child: Container(
                      //color: Colors.redAccent,
                      height: getProportionateScreenHeight(64),
                      width: getProportionateScreenWidth(375),
                      padding:
                          EdgeInsets.all(getProportionateScreenHeight(20.0)),
                      child: Text(
                        'About',
                        style: TextCustomMontserrat(fontW: FontWeight.bold),
                      ),
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
