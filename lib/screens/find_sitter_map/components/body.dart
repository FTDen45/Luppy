import 'package:clube_ft/screens/find_sitter/find_sitter_screen.dart';
import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';

import 'package:clube_ft/components/header_find.dart';
import 'package:clube_ft/components/default_button.dart';
import 'package:clube_ft/screens/find_sitter_detail/find_sitter_detail_screen.dart';

import './tags_animals.dart';
import './locathion.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Container(
        width: getProportionateScreenWidth(375),
        child: Column(
          children: [
            HeaderFind(
                title: 'Find Sitter',
                settings: () {
                  print('pop-up settings');
                  _mapBottomSheet(context, () {
                    print('btn dialog ');
                  });
                }),
            Container(
              height: getProportionateScreenHeight(812) -
                  getProportionateScreenHeight(158) - //HeaderFind()
                  getProportionateScreenHeight(80) - //BottomNavBar()
                  getHeightStatusBar(),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                      height: getProportionateScreenHeight(812) -
                          getProportionateScreenHeight(158) - //HeaderFind()
                          getProportionateScreenHeight(80) - //BottomNavBar()
                          getHeightStatusBar(),
                      width: getProportionateScreenWidth(375),
                      child: Image.asset(
                        'assets/images/map.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Location(
                    ml: '12',
                    vert: 150,
                    horiz: 100,
                  ),
                  Location(
                    ml: '13',
                    vert: 300,
                    horiz: 100,
                  ),
                  Location(
                    ml: '14',
                    vert: 90,
                    horiz: 150,
                  ),
                  Location(
                    ml: '15',
                    vert: 190,
                    horiz: 130,
                  ),
                  Location(
                    ml: '16',
                    vert: 200,
                    horiz: 270,
                  ),
                  Location(
                    ml: '17',
                    vert: 250,
                    horiz: 190,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _mapBottomSheet(BuildContext context, Function press) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) => Container(
      height: getProportionateScreenHeight(500),
      width: getProportionateScreenWidth(375),
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(16)),
        height: getProportionateScreenHeight(500),
        width: getProportionateScreenWidth(375),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            Text(
              'Search',
              style: TextCustomMontserrat(
                fontS: 18.0,
                fontW: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Text(
                  'Pet Sitter',
                  style: TextCustomMontserrat(
                    fontS: 38.0,
                    fontW: FontWeight.w800,
                  ),
                ),
                Text(
                  'Pet',
                  style: TextCustomMontserrat(
                    fontS: 38.0,
                    fontW: FontWeight.w800,
                    color: kLuppyLightGray,
                  ),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Text(
              'Accepts',
              style: TextCustomMontserrat(
                fontS: 18.0,
                fontW: FontWeight.w600,
              ),
            ),
            Container(
              //color: Colors.amber,
              width: getProportionateScreenWidth(375),
              height: 47,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: [
                  TagsAnimals(
                    text: 'Anyone',
                    set: true,
                  ),
                  TagsAnimals(
                    text: 'Cats',
                  ),
                  TagsAnimals(
                    text: 'Dogs',
                  ),
                  TagsAnimals(
                    text: 'Bird',
                  ),
                  TagsAnimals(
                    text: 'fishe',
                  ),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Text(
              'Distance (miles)',
              style: TextCustomMontserrat(
                fontS: 18.0,
                fontW: FontWeight.w600,
              ),
            ),
            MyStatefulWidget(),
            SizedBox(height: getProportionateScreenHeight(20)),
            DefaultButton(
              bgColor: kLuppyPurple,
              width: 350,
              borderW: 0,
              text: Text(
                'Show 386,802 results',
                style: TextCustomMontserrat(
                  fontS: 16.0,
                  fontW: FontWeight.w700,
                  color: kMainWhite,
                ),
              ),
              press: press,
            ),
          ],
        ),
      ),
    ),
  );
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  RangeValues _currentRangeValues = const RangeValues(4, 6);

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: _currentRangeValues,
      min: 4,
      max: 10,
      divisions: 4,
      labels: RangeLabels(
        _currentRangeValues.start.round().toString(),
        _currentRangeValues.end.round().toString(),
      ),
      onChanged: (RangeValues values) {
        setState(() {
          _currentRangeValues = values;
        });
      },
    );
  }
}
