import 'package:flutter/material.dart';
import 'package:myhealthcell/view/15.medical_profile_3.dart';
import 'package:get/get.dart';

import '23.forgot_password.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final email = TextEditingController();
  final password = TextEditingController();
  bool visable = true;
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
                  height: height * .125,
                ),
                Text(
                  'Welcome back',
                  style: TextStyle(
                      fontSize: height * .024, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * .01,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'This is the example of text which will be use here\nthis is generated from Eng text generator',
                  style: TextStyle(
                      fontSize: height * .016,
                      height: height * .0018,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: height * .169,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: email,
                  decoration: buildInputDecoration().copyWith(
                      hintText: "itsmemamun1@gmail.com",
                      suffixIcon: Icon(
                        Icons.check,
                        color: Color(0xff677294),
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email can't be Empty";
                    }
                  },
                ),
                SizedBox(
                  height: height * .018,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: password,
                  obscureText: visable,
                  decoration: buildInputDecoration().copyWith(
                    hintText: "ABC123@",
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
                  height: height * .032,
                ),
                SizedBox(
                  height: height * .055,
                  width: double.infinity,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color(0xff4DC6FD),
                    onPressed: () {},
                    child: Text(
                      'Login',
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
                    'Forgot Password',
                    style: TextStyle(
                      fontSize: height * .016,
                      color: Color(0xff4DC6FD),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .13,
                ),
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    'Don\'t have an account? Join us',
                    style: TextStyle(
                      fontSize: height * .016,
                      color: Color(0xff4DC6FD),
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
