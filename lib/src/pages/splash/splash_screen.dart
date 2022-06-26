import 'package:desafio_flutter_coins/src/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  SplashController con = Get.put(SplashController());

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
