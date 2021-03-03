import 'package:flutter/material.dart';
import 'package:clube_ft/size_config.dart';

const kMainBG = Color(0xFFE5E5E5);

const kMainBlack = Color(0xFF000000);
const kMainSuccess = Color(0xFF00B67A);
const kMainDarkBlue = Color(0xFF040054);
const kMainViolet = Color(0xFFC455FF);
const kMainLight = Color(0xFFEADCE7);
const kMainGray = Color(0xFF5A5A5A);
const kMainWhite = Color(0xFFFFFFFF);
const kMainLightGray = Color(0xFFC9C9C9);

const kLuppyBlack = kMainBlack;
const kLuppyGray = Color.fromRGBO(0, 0, 0, 0.6);
const kLuppyYellow = Color(0xFFFFD43D);
const kLuppyLightGray = kMainLightGray;
const kLuppyPurple = Color(0xFF51149F);
const kLuppyLightLightGray = Color(0xFFEBEBEB);
const kLuppyPeach = Color(0xFFFDECD2);
const kLuppyWhite = kMainWhite;

double kPaW = getProportionateScreenWidth(16.0);
double kPaH = getProportionateScreenHeight(16.0);

const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

TextStyle TextCustomMontserrat(
    {color: kMainBlack,
    fontW: FontWeight.w600,
    fontF: "Montserrat",
    fontS: 16.0}) {
  return TextStyle(
    fontFamily: fontF,
    color: color,
    fontWeight: fontW,
    fontSize: getProportionateScreenWidth(fontS),
  );
}

final Text17normal = TextStyle(
  color: kLuppyBlack,
  fontFamily: "Montserrat",
  fontSize: getProportionateScreenWidth(17),
  fontWeight: FontWeight.w600,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
