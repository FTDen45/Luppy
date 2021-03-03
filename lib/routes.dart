import 'package:flutter/widgets.dart';
import 'package:clube_ft/screens/search/search_screen.dart';
import 'package:clube_ft/screens/find_sitter/find_sitter_screen.dart';
import 'package:clube_ft/screens/find_sitter_detail/find_sitter_detail_screen.dart';
import 'package:clube_ft/screens/find_sitter_map/find_sitter_map_screen.dart';
import 'package:clube_ft/screens/find_pet/find_pet_screen.dart';
import 'package:clube_ft/screens/find_pet_detail/find_pet_detail_screen.dart';

import 'package:clube_ft/screens/favourite/favourite_screen.dart';
import 'package:clube_ft/screens/home/home_screen.dart';
import 'package:clube_ft/screens/home_detail_sitter/home_detail_sitter_screen.dart';
import 'package:clube_ft/screens/home_detail_user/home_detail_user_screen.dart';
import 'package:clube_ft/screens/profile/profile_screen.dart';
import 'package:clube_ft/screens/burger/burger_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SearchScreen.routeName: (context) => SearchScreen(),
  FavouriteScreen.routeName: (context) => FavouriteScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  HomeDetailSitterScreen.routeName: (context) => HomeDetailSitterScreen(),
  HomeDetailUserScreen.routeName: (context) => HomeDetailUserScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  BurgerScreen.routeName: (context) => BurgerScreen(),
  FindSitterScreen.routeName: (context) => FindSitterScreen(),
  FindSitterDetailScreen.routeName: (context) => FindSitterDetailScreen(),
  FindPetScreen.routeName: (context) => FindPetScreen(),
  FindPetDetailScreen.routeName: (context) => FindPetDetailScreen(),
  FindSitterMapScreen.routeName: (context) => FindSitterMapScreen(),
};
