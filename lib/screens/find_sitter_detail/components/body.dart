import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './profile_sitter.dart';
import './data_sitter.dart';
import './imgs_sitter.dart';
import './the_best_sitter.dart';
import './review_user.dart';
import 'package:clube_ft/components/default_button.dart';

class Body extends StatelessWidget {
  List<String> tagName = [
    'raliable',
    'Another tag',
    'Another tag',
    'Some other tag',
  ];
  List<Function> tagFunction = [
    () {
      print('raliable');
    },
    () {
      print('Another tag');
    },
    () {
      print('Another tag');
    },
    () {
      print('Some other tag');
    },
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: getProportionateScreenHeight(812) -
                  getProportionateScreenHeight(80) -
                  getHeightStatusBar(),
              width: getProportionateScreenWidth(375),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ProfileSitter(
                      avatar: 'assets/images/user_sitter_01_detail.png',
                      name: 'Bessie Cooper',
                      desc:
                          'I will look after your pet while you are away, walking, playing and caring ...',
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),
                    DataSitter(),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),
                    ImgsSitter(
                      img1: 'assets/images/sitter_and_dog_01.jpg',
                      img2: 'assets/images/sitter_and_dog_02.jpg',
                      img3: 'assets/images/sitter_and_dog_03.jpg',
                    ),
                    TheBestSitter(
                      tagsName: tagName,
                      tagsFunction: tagFunction,
                    ),
                    ReviewUser(
                      name: 'Courtney Henry',
                      raiting: 2.5,
                      desc:
                          'Very good dog sitter! We sent photos of the pet every day, our dog was in good hands;)',
                    ),
                    ReviewUser(
                        name: 'Ronald Richards',
                        raiting: 3.5,
                        desc:
                            'Many thanks to Valentin for helping us with our dog! The squirrel was a troublesome guest, because required medical manipulations. Valentin did an excellent job and surrounded Belochka with care and attention. I recommend Lesya with confidence, your pet will be satisfied, and you will be calm for him.'),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: kPaW),
                      child: DefaultButton(
                        width: 343,
                        text: Text(
                          'All reviews',
                          style: TextCustomMontserrat(
                            fontS: 18.0,
                            fontW: FontWeight.w600,
                          ),
                        ),
                        press: () {
                          print('All reviews');
                        },
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(70),
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
                      'Contact Bessie',
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
    );
  }
}
