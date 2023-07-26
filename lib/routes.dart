import 'package:api_http/models/user.dart';
import 'package:api_http/screens/full_info_page.dart';
import 'package:api_http/screens/home_page.dart';
import 'package:flutter/material.dart';

Route onGenerateRoute(settings) {
  switch (settings.name) {
    case HomePage.routeName:
      return MaterialPageRoute(builder: (contex) => const HomePage());
    case FullInfoPage.routeName:
      return MaterialPageRoute(builder: (contex) => FullInfoPage(settings.arguments as User));

    default:
      return MaterialPageRoute(
          builder: (context) =>
              const Scaffold(body: Center(child: Text("Not Found"))));
  }
}
