import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:clube_ft/components/default_button.dart';

import './list_images_pet.dart';
import './about_pet.dart';
import './menu_bottom.dart';

class Body extends StatelessWidget {
  List<String> PetImages = [
    'assets/images/pet_img_01.png',
    'assets/images/pet_img_02.png',
    'assets/images/pet_img_01.png',
    'assets/images/pet_img_02.png',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: kPaW, top: kPaH),
            //color: Colors.amber,
            height: getProportionateScreenHeight(100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('back arrow');
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: kMainBlack,
                      ),
                    )
                  ],
                ),
                Text(
                  'Bella',
                  style: TextCustomMontserrat(
                    fontS: 34.0,
                    fontW: FontWeight.w800,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: getProportionateScreenHeight(812) -
                getProportionateScreenHeight(80) - //bottom nav bar
                getProportionateScreenHeight(100) - //tot icon back
                getHeightStatusBar(),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    height: getProportionateScreenHeight(812) -
                        getProportionateScreenHeight(80) - //bottom nav bar
                        getProportionateScreenHeight(100) - //tot icon back
                        getHeightStatusBar(),
                    width: getProportionateScreenWidth(375),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ListImagesPet(
                            images: PetImages,
                          ),
                          AboutPet(
                            years: '4 mounths',
                            pay: 20,
                            owner: [
                              {
                                'img': 'assets/images/user_sitter_01.png',
                                'press': () {},
                              },
                            ],
                            breed: 'Maine Coon',
                            mass: '6.1 lbs',
                            desc_title: 'Energetic, sociable, active',
                            desc:
                                'The young mafiosi holds almost the entire area in tight-knit gloves, and here only he decides where something can lie or someone can walk :) The brutal Makar tirelessly watches everything and everyone, and suspicious, in his opinion, actions are immediately suppressed them.',
                          ),
                          MenuBottom(),
                          SizedBox(
                            height: getProportionateScreenHeight(100),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: kPaW),
                    height: getProportionateScreenHeight(58),
                    width: getProportionateScreenWidth(375) - kPaW * 2,
                    //color: Colors.amberAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DefaultButton(
                          borderW: 0,
                          bgColor: kMainBlack,
                          press: () {
                            print('Favorits');
                          },
                          text: SvgPicture.asset(
                            'assets/icons/favorit.svg',
                            color: Colors.white,
                          ),
                        ),
                        DefaultButton(
                          width: 275,
                          borderW: 0,
                          bgColor: kLuppyPurple,
                          text: Text(
                            'Submit',
                            style: TextCustomMontserrat(
                              fontS: 18.0,
                              fontW: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          press: () {
                            print('Contact Bessie');
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
    );
  }
}
