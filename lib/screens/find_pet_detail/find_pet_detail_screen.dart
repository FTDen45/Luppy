import 'package:flutter/material.dart';
import 'package:clube_ft/components/coustom_bottom_nav_bar.dart';
import 'package:clube_ft/enums.dart';

import 'components/body.dart';

class FindPetDetailScreen extends StatelessWidget {
  static String routeName = "/find_pet_detail";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.search),
    );
  }
}
