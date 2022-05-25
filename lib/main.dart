import 'package:flutter/material.dart';
import 'package:myhealthcell/view/10.user_profile%202.dart';
import 'package:myhealthcell/view/11.user_profile%203.dart';
import 'package:myhealthcell/view/13.medical_profile_1.dart';
import 'package:myhealthcell/view/14.medical_profile_2.dart';
import 'package:myhealthcell/view/15.medical_profile_3.dart';
import 'package:myhealthcell/view/16.medical_process_finish.dart';
import 'package:myhealthcell/view/17.medical_kyc.dart';
import 'package:myhealthcell/view/2.onboarding_scr.dart';
import 'package:myhealthcell/view/1.splash_screen.dart';
import 'package:get/get.dart';
import 'package:myhealthcell/view/22.login.dart';
import 'package:myhealthcell/view/25.reset_password_1.dart';
import 'package:myhealthcell/view/27.user_main_scr.dart';
import 'package:myhealthcell/view/28.find_doctors.dart';
import 'package:myhealthcell/view/3.welcome_scr.dart';
import 'package:myhealthcell/view/4.terms_condition.dart';
import 'package:myhealthcell/view/5.select_user.dart';
import 'package:myhealthcell/view/6.provide_credentials.dart';
import 'package:myhealthcell/view/7.validation_phone.dart';
import 'package:myhealthcell/view/8.successful_signup.dart';
import 'package:myhealthcell/view/9.user_profile%201.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: FindDoctors(),
        );
      },
      designSize: Size(375, 812),
    );
  }
}
