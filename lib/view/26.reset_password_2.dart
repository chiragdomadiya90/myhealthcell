import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myhealthcell/view/27.user_main_scr.dart';

class ResetPasswordSuccess extends StatelessWidget {
  const ResetPasswordSuccess({Key? key}) : super(key: key);

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
                  height: height * .052,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Reset Password Process\nSuccessfully Completed',
                  style: TextStyle(
                      fontSize: height * .024,
                      height: height * .0024,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * .016,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Congratulations, your Password\nsuccessfully changed. You can start using\nthe app',
                  style: TextStyle(
                      fontSize: height * .016,
                      height: height * .0024,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: height * .22,
                ),
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
                      'Login',
                      style: TextStyle(
                          fontSize: height * .018, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
