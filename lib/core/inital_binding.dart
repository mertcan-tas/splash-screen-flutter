import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_m/services/shared_preferences.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() { // async KULLANMADAN
    // SharedPreferences Servisini Asenkron Olarak Kaydet
    Get.putAsync<SharedPreferencesService>(() async {
      final service = SharedPreferencesService();
      debugPrint("SharedPreferencesService başlatılıyor");
      await service.init();
      return service;
    }, permanent: true); // Kalıcı olarak kaydet

    // Diğer Controller'ları Buraya Ekleyebilirsiniz
    // Get.lazyPut(() => OtherController());
  }
}