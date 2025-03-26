import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_m/core/inital_binding.dart';
import 'package:state_m/home_page/home_binding.dart';
import 'package:state_m/home_page/home_page.dart';
import 'package:state_m/splash_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/splash', page: () => SplashScreen()),
        GetPage(name: '/home', page: () => HomePage(), binding: HomeBinding()),
      ],
      initialRoute: '/splash',
      initialBinding: InitialBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
