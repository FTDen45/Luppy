import 'package:clube_ft/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:clube_ft/enums.dart';
import 'package:clube_ft/size_config.dart';

class MenuBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kPaW),
      child: Column(
        children: [
          itemMenu(
            icon: 'assets/icons/pet_item_menu_01.svg',
            text: 'Healthy and vaccinated',
            press: () {
              print('Healthy and vaccinated');
            },
          ),
          itemMenu(
            icon: 'assets/icons/pet_item_menu_02.svg',
            text: 'Accustomed to a tray and a scratching post',
            press: () {
              print('Accustomed to a tray and a scratching post');
            },
          ),
          itemMenu(
            icon: 'assets/icons/pet_item_menu_03.svg',
            text: 'Don’t require additional grooming',
            press: () {
              print('Don’t require additional grooming');
            },
          ),
          itemMenu(
            icon: 'assets/icons/pet_item_menu_04.svg',
            text: 'Gets along with children',
            press: () {
              print('Gets along with children');
            },
          ),
          itemMenu(
            icon: 'assets/icons/pet_item_menu_05.svg',
            text: 'Get along with other cats',
            press: () {
              print('Get along with other cats');
            },
          ),
        ],
      ),
    );
  }

  Widget itemMenu({icon, text, press}) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(icon),
              Text(
                text,
                style: TextCustomMontserrat(
                  fontS: 14.0,
                  fontW: FontWeight.w400,
                  color: kMainBlack.withOpacity(0.8),
                ),
              ),
            ],
          ),
          Divider(
            color: kMainGray,
          ),
        ],
      ),
    );
  }
}
