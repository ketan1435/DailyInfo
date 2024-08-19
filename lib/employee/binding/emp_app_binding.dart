import 'package:daily_info/employee/controller/emp_home_screen_controller.dart';
import 'package:get/get.dart';

class EmpAppBinding extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut(() => EmpHomeScreenController());
  }
}