import 'package:daily_info/admin/controller/admin_emp_login_controller.dart';
import 'package:daily_info/admin/controller/admin_home_screen_controller.dart';
import 'package:get/get.dart';

class AdminAppBinding extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut(() => AdminEmpController());
    Get.lazyPut(() => AdminHomeScreenController());
  }

}