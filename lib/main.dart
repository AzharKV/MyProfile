import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/view/home.dart';
import 'constFiles/color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Azhar',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor,
          appBarTheme: AppBarTheme(color: bgColor, elevation: 0.0),
          textTheme:
              GoogleFonts.sourceSansProTextTheme(Theme.of(context).textTheme)),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Home()),
      ],
    );
  }
}
