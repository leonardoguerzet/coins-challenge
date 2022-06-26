import 'package:desafio_flutter_coins/src/pages/home/home_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

  void _splashAnimation() async {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(HomePage());
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    _splashAnimation();
    super.onInit();
  }
}
