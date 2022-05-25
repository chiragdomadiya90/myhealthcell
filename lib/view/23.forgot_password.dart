import 'package:flutter/material.dart';
import 'package:myhealthcell/view/15.medical_profile_3.dart';
import 'package:get/get.dart';
import 'package:myhealthcell/view/24.forgot_password_2.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final email = TextEditingController();
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
                  'Forgot Password',
                  style: TextStyle(
                      fontSize: height * .024, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * .01,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Enter your email for the verification proccesss,\nwe will send 4 digits code to your email.',
                  style: TextStyle(
                      fontSize: height * .016,
                      height: height * .0018,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: height * .036,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: email,
                  decoration: buildInputDecoration().copyWith(
                    hintText: "Email",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email can't be Empty";
                    }
                  },
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
                      Get.to(() => ForgotPassword2());
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          fontSize: height * .018, color: Colors.white),
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
                )
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
