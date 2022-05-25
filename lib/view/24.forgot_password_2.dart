import 'package:flutter/material.dart';
import 'package:myhealthcell/view/15.medical_profile_3.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '27.user_main_scr.dart';

class ForgotPassword2 extends StatefulWidget {
  const ForgotPassword2({Key? key}) : super(key: key);

  @override
  State<ForgotPassword2> createState() => _ForgotPassword2State();
}

class _ForgotPassword2State extends State<ForgotPassword2> {
  bool isVisible = false;
  var height = Get.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  height: height * .28,
                ),
                Text(
                  'Enter 4 Digits Code',
                  style: TextStyle(
                      fontSize: height * .024, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * .01,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Enter your 4 Digits code that you received on\nyour email.',
                  style: TextStyle(
                      fontSize: height * .016,
                      height: height * .0018,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: height * .036,
                ),
                OTPTextField(
                  length: 4,
                  onChanged: (value) {
                    if (value.length >= 4) {
                      setState(
                        () {
                          isVisible = true;
                        },
                      );
                    }
                  },
                  width: 300,
                  fieldWidth: 50,
                  otpFieldStyle: OtpFieldStyle(
                    focusBorderColor: Color(0xff4DC6FD),
                  ),
                  style: TextStyle(fontSize: 17, color: Colors.deepPurple),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.box,
                ),
                Spacer(),
                SizedBox(
                  height: height * .055,
                  width: double.infinity,
                  child: Visibility(
                    visible: isVisible,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color(0xff4DC6FD),
                      onPressed: () {
                        Get.to(() => UserMainScreen());
                      },
                      child: Text(
                        'Continue',
                        style: TextStyle(
                            fontSize: height * .018, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .01,
                ),
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    'Back',
                    style: TextStyle(
                      fontSize: height * .016,
                      color: Color(0xff677294),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .055,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration() {
    return InputDecoration(
      hintStyle: TextStyle(
        color: Color(0xff677294),
      ),
      labelStyle: TextStyle(color: Colors.grey.shade500),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade100),
          borderRadius: BorderRadius.circular(12)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade100),
          borderRadius: BorderRadius.circular(12)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade100),
          borderRadius: BorderRadius.circular(12)),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade100),
          borderRadius: BorderRadius.circular(12)),
    );
  }
}
