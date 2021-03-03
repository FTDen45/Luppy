import 'package:flutter/material.dart';
import 'package:clube_ft/constants.dart';
import 'package:clube_ft/size_config.dart';

class ListImagesPet extends StatelessWidget {
  ListImagesPet({
    this.images,
  });
  List<String> images;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 264,
      child: imagPet(images),
    );
  }

  Widget imagPet(List<String> images) {
    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        for (int i = 0; i < images.length; i++)
          Container(
            margin: (i == images.length - 1)
                ? EdgeInsets.only(left: kPaW, right: kPaW)
                : EdgeInsets.only(left: kPaW),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(getProportionateScreenWidth(12)),
              child: Image.asset(
                images[i],
                fit: BoxFit.cover,
                width: getProportionateScreenWidth(315),
                height: getProportionateScreenHeight(264),
              ),
            ),
          ),
      ],
    );
  }
}
