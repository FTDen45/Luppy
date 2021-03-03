import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';
import 'package:clube_ft/enums.dart';

import 'package:clube_ft/screens/find_pet/components/pet.dart';
import 'package:clube_ft/screens/find_pet_detail/find_pet_detail_screen.dart';
import 'package:clube_ft/screens/find_sitter/components/sitter.dart';
import 'package:clube_ft/screens/find_sitter_detail/find_sitter_detail_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              print('back arrow');
              Navigator.of(context).pop();
            },
            child: Container(
              padding: EdgeInsets.all(kPaW),
              height: getProportionateScreenHeight(60),
              width: getProportionateScreenWidth(375),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: getProportionateScreenWidth(21),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(10),
                  ),
                  Text(
                    'Sitter for Bella',
                    style: TextCustomMontserrat(
                      fontS: 17.0,
                      fontW: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: getProportionateScreenHeight(120),
            child: Pet(
              img: 'assets/images/pet_01.png',
              name: 'Bella',
              genderIcon: GenderIcon.men,
              desc: 'Energetic, sociable, active',
              breed: 'Maine Coon',
              years: 2,
              pay: 16,
              mlFromYou: 8,
              ontap: () {
                print('Bella');
                Navigator.pushNamed(context, FindPetDetailScreen.routeName);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(kPaW),
            height: getProportionateScreenHeight(65),
            width: getProportionateScreenWidth(375),
            child: Text(
              '4 Applications',
              style: TextCustomMontserrat(
                fontS: 17.0,
                fontW: FontWeight.w700,
              ),
            ),
          ),
          Container(
            height: getProportionateScreenHeight(812) -
                getProportionateScreenHeight(60) - //HeaderFind()
                getProportionateScreenHeight(120) - //HeaderCat()
                getProportionateScreenHeight(65) - //4 Applications()
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
