import 'package:desafio_flutter_coins/src/controller/splash_controller.dart';
import 'package:desafio_flutter_coins/src/pages/home/home_page.dart';
import 'package:desafio_flutter_coins/src/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  SplashController con = Get.put(SplashController());


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
      home: HomePage(),
    );
  }
}
