import 'package:desafio_flutter_coins/src/pages/splash/splash_screen.dart';
import 'package:desafio_flutter_coins/src/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Desafio Flutter Coins",
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          caption: const TextStyle(
            color: kCaptionColor,
            fontSize: 16,
          ),
        ),
        scaffoldBackgroundColor: kPrimaryColor,
        appBarTheme: const AppBarTheme(elevation: 0, color: kPrimaryColor),
      ),
      home: SplashScreen(),
    );
  }
}
