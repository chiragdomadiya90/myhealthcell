import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '10.user_profile 2.dart';

var height = Get.height;

class UserProfile1 extends StatefulWidget {
  const UserProfile1({Key? key}) : super(key: key);

  @override
  State<UserProfile1> createState() => _UserProfile1State();
}

class _UserProfile1State extends State<UserProfile1> {
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * .1,
                ),
                Text(
                  'Personal Information',
                  style: TextStyle(
                      fontSize: height * .02, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * .04,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: height * .03,
                        width: height * .03,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Color(0xff00CCCB),
                            ),
                            shape: BoxShape.circle),
                        child: Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: height * .018,
                                color: Color(0xff677294)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: height * .114,
                        child: Divider(
                          thickness: 3,
                        ),
                      ),
                      Container(
                        height: height * .03,
                        width: height * .03,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Colors.grey,
                            ),
                            shape: BoxShape.circle),
                        child: Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: height * .018,
                                color: Color(0xff677294)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: height * .114,
                        child: Divider(
                          thickness: 3,
                        ),
                      ),
                      Container(
                        height: height * .03,
                        width: height * .03,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Colors.grey,
                            ),
                            shape: BoxShape.circle),
                        child: Center(
                          child: Text(
                            '3',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: height * .018,
                                color: Color(0xff677294)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * .005,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Step 1',
                        style: TextStyle(
                            fontSize: height * .018,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff00CCCB)),
                      ),
                      Text(
                        'Step 2',
                        style: TextStyle(
                            fontSize: height * .018,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff677294)),
                      ),
                      Text(
                        'Step 3',
                        style: TextStyle(
                            fontSize: height * .018,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff677294)),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Step1(),
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
}

class Step1 extends StatefulWidget {
  const Step1({Key? key}) : super(key: key);

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  final firstName = TextEditingController();
  final gende = TextEditingController();

  final lastName = TextEditingController();
  final social = TextEditingController();
  final form = GlobalKey<FormState>();

  List<String> gender = ['Gender', 'Male', 'Female'];
  dynamic selected = 'Gender';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: form,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextFormField(
                  controller: firstName,
                  textInputAction: TextInputAction.done,
                  decoration: buildInputDecoration().copyWith(
                    hintText: 'First Name',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "* First Name can't be Empty";
                    }
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextFormField(
                  controller: lastName,
                  textInputAction: TextInputAction.done,
                  decoration: buildInputDecoration().copyWith(
                    hintText: 'Last Name',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "* Last Name can't be Empty";
                    }
                  },
                ),
              ),
            ],
          ),
          TextFormField(
            textInputAction: TextInputAction.done,
            decoration: buildInputDecoration().copyWith(
              hintText: 'Gender',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              prefixIcon: DropdownButtonHideUnderline(
                child: Container(
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: DropdownButton(
                      value: selected,
                      icon: Icon(Icons.keyboard_arrow_down_sharp),
                      onChanged: (value) {
                        setState(
                          () {
                            selected = value;
                          },
                        );
                      },
                      items: gender
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                e,
                                style: TextStyle(
                                  color: Color(0xff677294),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          TextFormField(
            controller: social,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            decoration: buildInputDecoration().copyWith(
              hintText: 'Social Security Number',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "* Social Security Number can't be Empty";
              }
            },
          ),
          SizedBox(
            height: height * .21,
          ),
          SizedBox(
            height: height * .055,
            width: double.infinity,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Color(0xff4DC6FD),
              onPressed: () {
                if (form.currentState!.validate()) {
                  Get.to(() => UserProfile2());
                }
              },
              child: Text(
                'Next',
                style: TextStyle(fontSize: height * .018, color: Colors.white),
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
              style: TextStyle(fontSize: height * .016, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration buildInputDecoration() {
    return InputDecoration(
      counter: const Offstage(),
      fillColor: Colors.white,
      filled: true,
      hintStyle: TextStyle(
        color: Color(0xff677294),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xff4DC6FD), width: 3),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xff4DC6FD), width: 3),
        borderRadius: BorderRadius.circular(15),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade100, width: 1.5),
        borderRadius: BorderRadius.circular(15),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade100, width: 1.5),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
