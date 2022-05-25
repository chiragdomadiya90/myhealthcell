import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myhealthcell/view/15.medical_profile_3.dart';

import '10.user_profile 2.dart';

var height = Get.height;

class MedicalProfile_2 extends StatefulWidget {
  const MedicalProfile_2({Key? key}) : super(key: key);

  @override
  State<MedicalProfile_2> createState() => _MedicalProfile_2State();
}

class _MedicalProfile_2State extends State<MedicalProfile_2> {
  final picker = ImagePicker();
  File? _image;

  Future pickedImage() async {
    final imagePicked = await picker.getImage(source: ImageSource.gallery);

    if (imagePicked != null) {
      setState(() {
        _image = File(imagePicked.path);
      });
    }
  }

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
                Center(
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          pickedImage();
                        },
                        child: Container(
                          height: height * .13,
                          width: height * .13,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 4),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade200,
                                  offset: Offset(0, 2),
                                  spreadRadius: 5,
                                  blurRadius: 5),
                            ],
                          ),
                          child: _image == null
                              ? const Icon(Icons.person)
                              : ClipRRect(
                                  clipBehavior: Clip.antiAlias,
                                  borderRadius: BorderRadius.circular(2000),
                                  child: Image.file(
                                    _image!,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 0,
                        child: GestureDetector(
                          onTap: () {
                            pickedImage();
                          },
                          child: Container(
                            height: height * .036,
                            width: height * .036,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(color: Colors.white, width: 4),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade200,
                                    offset: Offset(0, 2),
                                    spreadRadius: 5,
                                    blurRadius: 5),
                              ],
                            ),
                            child: Center(
                                child: Icon(
                              Icons.camera_alt,
                              size: 16,
                              color: Colors.white,
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * .025,
                ),
                Center(
                  child: Text(
                    'Set up your profile',
                    style: TextStyle(
                      fontSize: height * .019,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .012,
                ),
                Container(
                  height: height * .145,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(0, 2),
                          spreadRadius: 5,
                          blurRadius: 5),
                    ],
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: const TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                        hintText: 'Introduce Your Self',
                        border: InputBorder.none),
                  ),
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
                      Get.to(() => MedicalProfile_3());
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
                Center(
                  child: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(
                          fontSize: height * .016, color: Colors.grey),
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
}
