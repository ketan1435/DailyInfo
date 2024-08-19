import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 8.h,
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          "Daily Info",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20.sp,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Container(
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                  ),
                ),
              ),
              ListTile(
                title: Text('Add Attendance'),
                onTap: () {
                  Navigator.pop(context); // Closes the drawer
                },
              ),
              ListTile(
                title: Text('Add Employee'),
                onTap: () {
                  Navigator.pop(context); // Closes the drawer
                },
              ),
              ListTile(
                title: Text('Timecard'),
                onTap: () {
                  Navigator.pop(context); // Closes the drawer
                },
              ),
              ListTile(
                title: Text('Salary Calculation'),
                onTap: () {
                  Navigator.pop(context); // Closes the drawer
                },
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("Admin Dashboard"))
        ],
      ),
    );
  }
}
