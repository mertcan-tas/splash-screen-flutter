import 'package:get/get.dart';
import 'package:state_m/home_page/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController()); //direk gömer
  }
}
