import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myhealthcell/view/8.successful_signup.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class ValidationPhone extends StatefulWidget {
  const ValidationPhone({Key? key}) : super(key: key);

  @override
  State<ValidationPhone> createState() => _ValidationPhoneState();
}

class _ValidationPhoneState extends State<ValidationPhone> {
  String? otp;
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
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
                  height: height * .17,
                ),
                Image.asset(
                  'assets/photo/Vector (2).png',
                  height: height * .07,
                  width: height * .07,
                ),
                SizedBox(
                  height: height * .011,
                ),
                const Text(
                  'MyHealthCell',
                  style: TextStyle(fontSize: 21, color: Color(0xff222222)),
                ),
                SizedBox(
                  height: height * .048,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Submit the 4 digit code you got on your\nprovided number.',
                  style: TextStyle(
                      fontSize: 14, height: height * .0018, color: Colors.grey),
                ),
                SizedBox(
                  height: height * .048,
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
                    disabledBorderColor: Colors.black,
                  ),
                  style: TextStyle(fontSize: 17, color: Color(0xff4D4C4C)),
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
                        Get.to(() => SuccessfulSignUp());
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                            fontSize: height * .018, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .018,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Didn\'t receive an OTP ? Resend',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: height * .055,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
