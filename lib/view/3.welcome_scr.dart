import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myhealthcell/view/22.login.dart';

import '4.terms_condition.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
          child: Column(
            children: [
              SizedBox(
                height: height * .082,
              ),
              Image.asset(
                'assets/photo/Vector (2).png',
                height: height * .099,
                width: height * .099,
              ),
              SizedBox(
                height: height * .016,
              ),
              Text(
                'MyHealthCell',
                style: TextStyle(fontSize: 21, color: Color(0xff222222)),
              ),
              SizedBox(
                height: height * .078,
              ),
              Text(
                'Welcome to MyHealthCell',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * .018,
              ),
              Text(
                textAlign: TextAlign.center,
                'Do you want some help with your\nhealth to get better life?',
                style: TextStyle(
                    fontSize: 16, height: height * .0015, color: Colors.grey),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: height * .02),
                child: SizedBox(
                  height: height * .055,
                  width: double.infinity,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color(0xff4DC6FD),
                    onPressed: () {
                      Get.to(() => Terms());
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: height * .018, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * .038,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have an Account ?',
                    style: TextStyle(
                        fontSize: height * .016, color: Color(0xff00CCCB)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(Login());
                    },
                    child: Text(
                      'LogIn',
                      style: TextStyle(
                          fontSize: height * .016, color: Color(0xff00CCCB)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * .09,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
