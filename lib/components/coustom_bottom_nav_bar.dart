import 'package:clube_ft/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//import 'package:clube_ft/screens/search/search_screen.dart';
import 'package:clube_ft/screens/find_sitter_map/find_sitter_map_screen.dart';
import 'package:clube_ft/screens/favourite/favourite_screen.dart';
import 'package:clube_ft/screens/home/home_screen.dart';
import 'package:clube_ft/screens/profile/profile_screen.dart';
import 'package:clube_ft/screens/burger/burger_screen.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(80),
      //padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  MenuState.search == selectedMenu
                      ? "assets/icons/search_fil.svg"
                      : "assets/icons/search.svg",
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, FindSitterMapScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(MenuState.favourite == selectedMenu
                    ? "assets/icons/favorit_fil.svg"
                    : "assets/icons/favorit.svg"),
                onPressed: () {
                  Navigator.pushNamed(context, FavouriteScreen.routeName);
                },
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                  child: MenuState.mainMenu == selectedMenu
                      ? SvgPicture.asset("assets/icons/main_menu_fil.svg")
                      : Image.asset('assets/icons/main_menu.png')),
              IconButton(
                icon: SvgPicture.asset(MenuState.profile == selectedMenu
                    ? "assets/icons/profile_fil.svg"
                    : "assets/icons/profile.svg"),
                onPressed: () {
                  Navigator.pushNamed(context, ProfileScreen.routeName);
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  MenuState.burger == selectedMenu
                      ? "assets/icons/burger_fil.svg"
                      : "assets/icons/burger.svg",
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, BurgerScreen.routeName),
              ),
            ],
          )),
    );
  }
}
