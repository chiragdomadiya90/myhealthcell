import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myhealthcell/view/14.medical_profile_2.dart';

import '10.user_profile 2.dart';

var height = Get.height;

class MedicalProfile_1 extends StatefulWidget {
  const MedicalProfile_1({Key? key}) : super(key: key);

  @override
  State<MedicalProfile_1> createState() => _MedicalProfile_1State();
}

class _MedicalProfile_1State extends State<MedicalProfile_1> {
  @override
  Widget build(BuildContext context) {
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
                SizedBox(
                  height: height * .055,
                ),
                Step1()
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
  bool isCheckBox = true;
  bool select = true;

  List<String> gender = ['Education', 'Male', 'Female'];
  dynamic selected = 'Education';
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
                      return "First Name can't be Empty";
                    }
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextFormField(
                  controller: firstName,
                  textInputAction: TextInputAction.done,
                  decoration: buildInputDecoration().copyWith(
                    hintText: 'Last Name',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Last Name can't be Empty";
                    }
                  },
                ),
              ),
            ],
          ),
          TextFormField(
            controller: firstName,
            textInputAction: TextInputAction.done,
            decoration: buildInputDecoration().copyWith(
              hintText: 'Medical Speciality',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Medical Speciality can't be Empty";
              }
            },
          ),
          TextFormField(
            textInputAction: TextInputAction.done,
            decoration: buildInputDecoration().copyWith(
              hintText: 'Education',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              prefixIcon: DropdownButtonHideUnderline(
                child: Container(
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: DropdownButton(
                      icon: Icon(Icons.keyboard_arrow_down_sharp),
                      value: selected,
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
                              child: Text(
                                e,
                                style: TextStyle(color: Color(0xff677294)),
                              ),
                              value: e,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      select = !select;
                    },
                  );
                },
                child: Container(
                  height: height * .03,
                  width: height * .03,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(color: Colors.grey.shade200)),
                  child: Icon(
                    Icons.check,
                    color:
                        select == true ? Color(0xff677294) : Colors.transparent,
                    size: 18,
                  ),
                ),
              ),
              SizedBox(
                width: height * .01,
              ),
              Text(
                'Gesy',
                style: TextStyle(fontSize: 16, color: Color(0xff677294)),
              )
            ],
          ),
          SizedBox(
            height: height * .16,
          ),
          SizedBox(
            height: height * .055,
            width: double.infinity,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Color(0xff4DC6FD),
              onPressed: () {
                Get.to(() => MedicalProfile_2());
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
