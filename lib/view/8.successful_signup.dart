import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myhealthcell/view/9.user_profile%201.dart';

class SuccessfulSignUp extends StatelessWidget {
  const SuccessfulSignUp({Key? key}) : super(key: key);

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
                Color(0xff61CEFF).withOpacity(0.72),
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
                  textAlign: TextAlign.center,
                  'Congratulations!\nYou have successfully\ncompleted the\nSignup process!',
                  style: TextStyle(
                      fontSize: 24,
                      height: height * .0015,
                      fontWeight: FontWeight.bold),
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
                      Get.to(() => UserProfile1());
                    },
                    child: Text(
                      'Get Started',
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
