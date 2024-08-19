import 'package:daily_info/admin/admin_emp_routes/admin_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:sizer/sizer.dart';

import '../admin/controller/admin_emp_login_controller.dart';
import '../widgtes/custom_button.dart';
import '../widgtes/custom_textfield.dart';

class AdminEmpLoginScreen extends StatefulWidget {
  const AdminEmpLoginScreen({Key? key}) : super(key: key);

  @override
  State<AdminEmpLoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<AdminEmpLoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  AdminEmpController adminEmpController = Get.put(AdminEmpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
      padding: EdgeInsets.symmetric(vertical: 10.sp,horizontal: 16.sp),
      child: Column(
        children: [
          SizedBox(height: 30.h,),
          CustomTextField(
           labelText: "Enter Your Username",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 13.sp),
          ),
          SizedBox(height: 5.h,),
          CustomTextField(
            obscureText: !adminEmpController.isVisible.value,
            suffixIcon: IconButton(
              icon: Icon(
                adminEmpController.isVisible.value
                    ? Icons.remove_red_eye
                    : Icons.visibility_off,
                size: 18.sp,
              ),
              onPressed: () {
                setState(() {
                  adminEmpController.isVisible.value =! adminEmpController.isVisible.value;
                });
              },
            ),
            labelText: "Enter Your Password",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 13.sp,
            ),
          ),
          SizedBox(height: 10.h,),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  onPressed: () {
                   Get.toNamed(AdminEmpRoutes.ADMIN_HOME_SCREEN_ROUTE);
                  },
                  label: 'Admin Login',style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(width: 40.sp,),
              Expanded(
                child: CustomButton(
                  onPressed: () {
                    Get.toNamed(AdminEmpRoutes.EMP_HOME_SCREEN_ROUTE);
                  },
                  label: 'Employee Login',style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w400),
                ),
              ),
            ],
          )
        ],
      ),
    ),
    );
  }
}
