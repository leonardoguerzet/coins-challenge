import 'package:desafio_flutter_coins/src/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(
        const Duration(
          seconds: 2,
        ), () {
      Get.to(const HomePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black,
                Colors.grey.shade900,
              ]),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text("Desafio Coins", style: TextStyle(fontSize: 26, color: Colors.white,),),
            SizedBox(
              height: 10,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(
                Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
