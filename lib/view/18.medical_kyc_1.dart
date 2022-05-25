import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myhealthcell/view/15.medical_profile_3.dart';

import '19.medical_kyc_2.dart';

class MedicalKyc1 extends StatefulWidget {
  const MedicalKyc1({Key? key}) : super(key: key);

  @override
  State<MedicalKyc1> createState() => _MedicalKyc1State();
}

class _MedicalKyc1State extends State<MedicalKyc1> {
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

  var height = Get.height;

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
                  'KYC Process',
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
                Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      GestureDetector(
                        onTap: () {
                          pickedImage();
                        },
                        child: Container(
                          height: height * .16,
                          width: height * .32,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 4),
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
                                  child: Image.file(
                                    _image!,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                        ),
                      ),
                      Positioned(
                        bottom: -10,
                        right: -10,
                        child: GestureDetector(
                          onTap: () {
                            pickedImage();
                          },
                          child: Container(
                            height: height * .04,
                            width: height * .04,
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
                    'Upload a Photo Of ID Card',
                    style: TextStyle(
                      fontSize: height * .019,
                      fontWeight: FontWeight.bold,
                    ),
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
                      Get.to(() => MedicalKyc2());
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
