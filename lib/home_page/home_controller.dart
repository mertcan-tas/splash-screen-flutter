import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_m/services/shared_preferences.dart';

class HomeController extends GetxController {
  @override
  Future<void> onInit() async {
    super.onInit();
    debugPrint("HomeController init");
    await _test();
  }

  _test() async {
    final sharedService = Get.find<SharedPreferencesService>();
    await sharedService.saveData("tc", "1232332323");
    final okunanDeger = sharedService.getData("tc");
    debugPrint(okunanDeger ?? "Değer bulunamadı");
  }
}
