import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DataSitter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            SvgPicture.asset(
              'assets/icons/shield.svg',
              width: getProportionateScreenWidth(24),
            ),
            Text(
              '2020',
              style: TextCustomMontserrat(fontS: 12.0, fontW: FontWeight.w500),
            )
          ],
        ),
        Column(
          children: [
            Text(
              '75',
              style: TextCustomMontserrat(fontS: 17.0, fontW: FontWeight.w700),
            ),
            Text(
              'In favorite',
              style: TextCustomMontserrat(fontS: 12.0, fontW: FontWeight.w500),
            )
          ],
        ),
        Column(
          children: [
            Text(
              '92',
              style: TextCustomMontserrat(fontS: 17.0, fontW: FontWeight.w700),
            ),
            Text(
              'Completed',
              style: TextCustomMontserrat(fontS: 12.0, fontW: FontWeight.w500),
            )
          ],
        ),
      ],
    );
  }
}
