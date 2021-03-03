import 'package:flutter/material.dart';
import 'package:clube_ft/components/coustom_bottom_nav_bar.dart';
import 'package:clube_ft/enums.dart';

import 'components/body.dart';

class SearchScreen extends StatelessWidget {
  static String routeName = "/search";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.search),
    );
  }
}
