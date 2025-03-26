import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:state_m/home_page/home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAll(const HomePage()); // Yönlendirmeyi Splash Screen'de yap
    });

    return Scaffold(body: Center(child: Lottie.asset("assets/loading.json")));
  }
}
