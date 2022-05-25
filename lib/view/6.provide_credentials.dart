import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:country_code_picker/country_code_picker.dart';

import '7.validation_phone.dart';

class Provide_Credentials extends StatefulWidget {
  const Provide_Credentials({Key? key}) : super(key: key);

  @override
  State<Provide_Credentials> createState() => _Provide_CredentialsState();
}

class _Provide_CredentialsState extends State<Provide_Credentials> {
  final mob = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final form = GlobalKey<FormState>();

  var height = Get.height;

  bool visable = true;
  bool visable1 = true;
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
                Color(0xff61CEFF).withOpacity(0.72),
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                Color(0xff61CEFF).withOpacity(0.1),
              ],
            ),
          ),
          child: Form(
            key: form,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: height * .225,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    textInputAction: TextInputAction.next,
                    controller: mob,
                    decoration: buildInputDecoration().copyWith(
                        counter: Offstage(),
                        hintText: "Mobile Number",
                        hintStyle: const TextStyle(color: Colors.grey),
                        prefixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CountryCodePicker(
                              padding: EdgeInsets.zero,
                              // showDropDownButton: true,
                              showCountryOnly: false,
                              initialSelection: 'IN',
                              hideMainText: true,
                              alignLeft: true,
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Colors.black,
                            ),
                            SizedBox(
                              height: height * .04,
                              child: VerticalDivider(
                                thickness: 3,
                              ),
                            ),
                          ],
                        )),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "* Mobile Number can't be Empty";
                      }
                    },
                  ),
                  SizedBox(
                    height: height * .015,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: email,
                    decoration: buildInputDecoration().copyWith(
                      hintText: "Email",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "* Email can't be Empty";
                      }
                    },
                  ),
                  SizedBox(
                    height: height * .015,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: password,
                    obscureText: visable,
                    decoration: buildInputDecoration().copyWith(
                      hintText: "Password",
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
                      if (value!.isEmpty) {
                        return "* Enter valid password";
                      }
                    },
                  ),
                  SizedBox(
                    height: height * .015,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: confirmPassword,
                    obscureText: visable1,
                    decoration: buildInputDecoration().copyWith(
                      hintText: "Confirm Password",
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
                        if (form.currentState!.validate()) {
                          Get.to(() => ValidationPhone());
                        }
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                            fontSize: height * .018, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * .018,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(
                          fontSize: height * .016, color: Colors.grey),
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
