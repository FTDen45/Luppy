import 'package:clube_ft/screens/find_pet_detail/find_pet_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/enums.dart';
import 'package:clube_ft/size_config.dart';

import 'package:clube_ft/components/header_find.dart';

import './pet.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Column(
        children: [
          HeaderFind(
            title: 'Find Pet',
          ),
          Container(
            height: getProportionateScreenHeight(812) -
                getProportionateScreenHeight(158) - //HeaderFind()
                getProportionateScreenHeight(80) - //BottomNavBar()
                getHeightStatusBar(),
            child: SingleChildScrollView(
              child: Column(
                children: [
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
                    },
                  ),
                  Pet(
                    img: 'assets/images/pet_03.png',
                    name: 'Tody',
                    genderIcon: GenderIcon.men,
                    desc: 'Energetic, sociable, active',
                    breed: 'Maine Coon',
                    years: 2,
                    pay: 17,
                    mlFromYou: 8,
                    ontap: () {
                      print('Tody');
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
                    },
                  ),
                  Pet(
                    img: 'assets/images/pet_05.png',
                    name: 'Lola',
                    genderIcon: GenderIcon.men,
                    desc: 'Energetic, sociable, active',
                    breed: 'Maine Coon',
                    years: 2,
                    pay: 20,
                    mlFromYou: 8,
                    ontap: () {
                      print('Lola');
                    },
                  ),
                  Pet(
                    img: 'assets/images/pet_06.png',
                    name: 'Bella',
                    genderIcon: GenderIcon.men,
                    desc: 'Energetic, sociable, active',
                    breed: 'Maine Coon',
                    years: 2,
                    pay: 16,
                    mlFromYou: 8,
                    ontap: () {
                      print('Bella');
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
