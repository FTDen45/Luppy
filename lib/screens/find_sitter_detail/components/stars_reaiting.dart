import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StarsReaiting extends StatelessWidget {
  StarsReaiting({
    this.color = kLuppyPurple,
    this.reiting = 3.5,
    this.size = 19.0,
  });
  final Color color;
  final double reiting;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(5, (index) {
          return Icon(
            index >= reiting
                ? Icons.star_border
                : (index > reiting - 1 && index < reiting)
                    ? Icons.star_half
                    : Icons.star,
            color: color,
            size: getProportionateScreenWidth(size),
          );
        }),
      ),
    );
  }
}
