import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: getProportionateScreenHeight(812) -
                  getProportionateScreenHeight(80) -
                  getHeightStatusBar(),
              color: Colors.amber,
              child: Center(
                child: Text(
                  "Profile Page",
                  style: Text17normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
