import 'package:flutter/material.dart';
import 'package:myhealthcell/view/15.medical_profile_3.dart';
import 'package:get/get.dart';

import '23.forgot_password.dart';
import '26.reset_password_2.dart';

class ResetPassword1 extends StatefulWidget {
  const ResetPassword1({Key? key}) : super(key: key);

  @override
  State<ResetPassword1> createState() => _ResetPassword1State();
}

class _ResetPassword1State extends State<ResetPassword1> {
  final password1 = TextEditingController();
  final password = TextEditingController();
  bool visable = true;
  bool visable1 = true;
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
                  height: height * .277,
                ),
                Text(
                  'Reset Password',
                  style: TextStyle(
                      fontSize: height * .024, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * .01,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Set the new password for your account so you can\nlogin and access all the features.',
                  style: TextStyle(
                      fontSize: height * .016,
                      height: height * .0018,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: height * .027,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: password,
                  obscureText: visable,
                  decoration: buildInputDecoration().copyWith(
                    hintText: "New Password",
                    suffixIcon: IconButton(
                        splashRadius: 20,
                        onPressed: () {
                          setState(() {
                            visable = !visable;
                          });
                        },
                        icon: visable == false
                            ? const Icon(
                                Icons.visibility,
                                color: Colors.grey,
                              )
                            : const Icon(
                                Icons.visibility_off,
                                color: Colors.grey,
                              )),
                  ),
                  validator: (value) {
                    RegExp regex = RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                    if (!regex.hasMatch(value!)) {
                      return "Enter valid Confirm Password";
                    }
                  },
                ),
                SizedBox(
                  height: height * .018,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: password1,
                  obscureText: visable1,
                  decoration: buildInputDecoration().copyWith(
                    hintText: "Re-enter Password",
                    suffixIcon: IconButton(
                        splashRadius: 20,
                        onPressed: () {
                          setState(() {
                            visable1 = !visable1;
                          });
                        },
                        icon: visable1 == false
                            ? const Icon(
                                Icons.visibility,
                                color: Colors.grey,
                              )
                            : const Icon(
                                Icons.visibility_off,
                                color: Colors.grey,
                              )),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Re-Enter New Password";
                    } else if (value != password.text) {
                      return "Password must be same as above";
                    } else {
                      return null;
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
                      Get.to(() => ResetPasswordSuccess());
                    },
                    child: Text(
                      'Update Password',
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
                    Get.to(() => ForgotPassword());
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
