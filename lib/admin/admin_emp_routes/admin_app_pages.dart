import 'package:get/get.dart';
import '../../auth/admin_emp_login_screen.dart';
import '../../employee/binding/emp_app_binding.dart';
import '../../employee/screens/emp_home_screen.dart';
import '../binding/admin_app_binding.dart';
import '../screens/admin_home_screen.dart';
import 'admin_routes.dart';

class AdminEmpAppPages
{
  static String INITIAL_ROUTE = AdminEmpRoutes.ADMIN_EMP_LOGIN_SCREEN_ROUTE;
  static final Pages =
  [
    GetPage(
        name: AdminEmpRoutes.ADMIN_EMP_LOGIN_SCREEN_ROUTE,
        page: () => AdminEmpLoginScreen(),
        binding: AdminAppBinding()
    ),
    GetPage(
        name: AdminEmpRoutes.ADMIN_HOME_SCREEN_ROUTE,
        page: () => AdminHomeScreen(),
        binding: AdminAppBinding()
    ),




    ////////////////////////////////////////EMPLOYEE///////////////////////////////////////////////////
    GetPage(
        name: AdminEmpRoutes.EMP_HOME_SCREEN_ROUTE,
        page: () => EmpHomeScreen(),
        binding: EmpAppBinding()
    )
  ];

}