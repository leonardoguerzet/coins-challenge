import 'package:get/get.dart';

class LoadingController extends GetxController {

 final _isLoading = false.obs;
  isLoading() => _isLoading.value;
  swap() => _isLoading.value = !_isLoading.value;

 @override
  void onInit() async {
  // TODO: implement toInit
  Future.delayed(const Duration(seconds: 2), () {
   swap();
  }
  );
 }
  }

