import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

  void _splashAnimation() async {
    Future.delayed(Duration(seconds: 2), () {
     FlutterNativeSplash.remove();
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    _splashAnimation();
    super.onInit();
  }
}
