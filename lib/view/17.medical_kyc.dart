import 'package:flutter/material.dart';
import 'package:myhealthcell/view/15.medical_profile_3.dart';
import 'package:get/get.dart';

import '18.medical_kyc_1.dart';

class MedicalKyc extends StatelessWidget {
  const MedicalKyc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = Get.height;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(
                height: height * .21,
              ),
              Container(
                height: height * .164,
                width: height * .249,
                decoration: BoxDecoration(
                  // color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/photo/undraw_Profile_data_re_v81r 1.png'),
                  ),
                ),
              ),
              SizedBox(
                height: height * .063,
              ),
              Text(
                textAlign: TextAlign.center,
                'Verify Your Account',
                style: TextStyle(
                    fontSize: 24,
                    height: height * .0015,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * .016,
              ),
              Text(
                textAlign: TextAlign.center,
                'Complete Your KYC Process in Few Steps',
                style: TextStyle(
                    fontSize: 16, height: height * .0018, color: Colors.grey),
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
                    Get.to(() => MedicalKyc1());
                  },
                  child: Text(
                    'KYC Process',
                    style:
                        TextStyle(fontSize: height * .018, color: Colors.white),
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
                  'Skip',
                  style: TextStyle(fontSize: height * .016, color: Colors.grey),
                ),
              ),
              SizedBox(
                height: height * .055,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
