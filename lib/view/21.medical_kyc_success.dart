import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myhealthcell/view/27.user_main_scr.dart';

import '13.medical_profile_1.dart';

class MedicalKycSuccess extends StatelessWidget {
  const MedicalKycSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff61CEFF).withOpacity(0.71),
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Color(0xff61CEFF).withOpacity(0.1),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(
                  height: height * .18,
                ),
                Image.asset(
                  'assets/photo/Group 3645.png',
                  height: height * .196,
                  width: height * .245,
                ),
                SizedBox(
                  height: height * .095,
                ),
                Text(
                  'KYC Process Completed',
                  style: TextStyle(
                      fontSize: height * .024, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * .016,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Congratulations, your KYC Process\nCompleted successfully. You can start\nusing the app',
                  style: TextStyle(
                      fontSize: height * .016,
                      height: height * .0018,
                      color: Colors.grey),
                ),
                Spacer(),
                SizedBox(
                  height: height * .055,
                  width: double.infinity,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color(0xff4DC6FD),
                    onPressed: () {
                      Get.to(() => UserMainScreen());
                    },
                    child: Text(
                      'Set Quick Pin',
                      style: TextStyle(
                          fontSize: height * .018, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .135,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
