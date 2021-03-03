import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';
import 'package:clube_ft/enums.dart';

import 'package:clube_ft/screens/find_pet_detail/find_pet_detail_screen.dart';
import 'package:clube_ft/screens/find_pet/components/pet.dart';
import 'package:clube_ft/screens/find_sitter_detail/find_sitter_detail_screen.dart';
import 'package:clube_ft/screens/find_sitter/components/sitter.dart';

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
              'Saved',
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
                      Navigator.pushNamed(
                          context, FindSitterDetailScreen.routeName);
                    },
                  ),
                  Pet(
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
                      Navigator.pushNamed(
                          context, FindPetDetailScreen.routeName);
                    },
                  ),
                  Pet(
                    img: 'assets/images/pet_04.png',
                    name: 'Charlie',
                    genderIcon: GenderIcon.men,
                    desc: 'Energetic, sociable, active',
                    breed: 'Maine Coon',
                    years: 3,
                    pay: 18,
                    mlFromYou: 8,
                    ontap: () {
                      print('Charlie');
                      Navigator.pushNamed(
                          context, FindPetDetailScreen.routeName);
                    },
                  ),
                  Pet(
                    img: 'assets/images/pet_02.png',
                    name: 'Milo',
                    genderIcon: GenderIcon.woman,
                    desc: 'Energetic, sociable, active',
                    breed: 'Maine Coon',
                    years: 1,
                    pay: 24,
                    mlFromYou: 16,
                    ontap: () {
                      print('Milo');
                      Navigator.pushNamed(
                          context, FindPetDetailScreen.routeName);
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
                      Navigator.pushNamed(
                          context, FindSitterDetailScreen.routeName);
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
                      Navigator.pushNamed(
                          context, FindSitterDetailScreen.routeName);
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
