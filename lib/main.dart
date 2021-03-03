import 'package:flutter/material.dart';
import 'package:clube_ft/routes.dart';

import 'package:clube_ft/screens/burger/burger_screen.dart';
import 'package:clube_ft/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: BurgerScreen.routeName,
      routes: routes,
    );
  }
}
