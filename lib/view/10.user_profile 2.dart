import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myhealthcell/view/11.user_profile%203.dart';

import '10.user_profile 2.dart';

var height = Get.height;

class UserProfile2 extends StatefulWidget {
  const UserProfile2({Key? key}) : super(key: key);

  @override
  State<UserProfile2> createState() => _UserProfile2State();
}

class _UserProfile2State extends State<UserProfile2> {
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
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
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
                            color: Color(0xff00CCCB),
                          ),
                        ),
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
                              color: Color(0xff00CCCB)),
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
                  Step2(),
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
}

class Step2 extends StatefulWidget {
  const Step2({Key? key}) : super(key: key);

  @override
  State<Step2> createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  final country = TextEditingController();
  final region = TextEditingController();
  final city = TextEditingController();
  final zip = TextEditingController();
  final street = TextEditingController();
  final number = TextEditingController();
  final apartment = TextEditingController();
  final floor = TextEditingController();
  final form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: form,
      child: Column(
        children: [
          TextFormField(
            controller: country,
            textInputAction: TextInputAction.done,
            decoration: buildInputDecoration().copyWith(
              hintText: 'Country',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "* Country Name can't be Empty";
              }
            },
          ),
          SizedBox(
            width: 10,
          ),
          TextFormField(
            controller: region,
            textInputAction: TextInputAction.done,
            decoration: buildInputDecoration().copyWith(
              hintText: 'Region',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "* Region can't be Empty";
              }
            },
          ),
          TextFormField(
            controller: city,
            textInputAction: TextInputAction.done,
            decoration: buildInputDecoration().copyWith(
              hintText: 'City',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "* City can't be Empty";
              }
            },
          ),
          TextFormField(
            controller: zip,
            textInputAction: TextInputAction.done,
            decoration: buildInputDecoration().copyWith(
              hintText: 'Zip Code',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "* Zip Code can't be Empty";
              }
            },
          ),
          TextFormField(
            controller: street,
            textInputAction: TextInputAction.done,
            decoration: buildInputDecoration().copyWith(
              hintText: 'Street',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "* Street can't be Empty";
              }
            },
          ),
          TextFormField(
            controller: number,
            textInputAction: TextInputAction.done,
            decoration: buildInputDecoration().copyWith(
              hintText: 'Number',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "* Number can't be Empty";
              }
            },
          ),
          TextFormField(
            controller: apartment,
            textInputAction: TextInputAction.done,
            decoration: buildInputDecoration().copyWith(
              hintText: 'Apartment',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "* Apartment can't be Empty";
              }
            },
          ),
          TextFormField(
            controller: floor,
            textInputAction: TextInputAction.done,
            decoration: buildInputDecoration().copyWith(
              hintText: 'Floor',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "* Floor can't be Empty";
              }
            },
          ),
          SizedBox(
            height: height * .055,
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
                  Get.to(() => UserProfile3());
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
          SizedBox(
            height: height * .055,
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
