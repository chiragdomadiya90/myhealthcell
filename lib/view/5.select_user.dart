import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:myhealthcell/view/6.provide_credentials.dart';

class SelectUser extends StatefulWidget {
  const SelectUser({Key? key}) : super(key: key);

  @override
  State<SelectUser> createState() => _SelectUserState();
}

class _SelectUserState extends State<SelectUser> {
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    List<Map<String, dynamic>> select = [
      {'img': 'assets/photo/12.svg', 'name': 'User'},
      {'img': 'assets/photo/13.svg', 'name': 'Medical Professional'},
    ];

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
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(
                  height: height * .2,
                ),
                Text(
                  'Please choose\nwhat describes you best',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: height * .02,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff333333),
                  ),
                ),
                SizedBox(
                  height: height * .047,
                ),
                Column(
                  children: List.generate(
                    2,
                    (index) => Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = index;
                            });
                          },
                          child: Container(
                            height: height * .05,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 5),
                                    color: Colors.grey.withOpacity(0.1),
                                    blurRadius: 10,
                                    spreadRadius: 5)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: selected == index
                                    ? Color(0xff4DC6FD)
                                    : Colors.grey.withOpacity(0.06),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: height * .03,
                                    width: height * .03,
                                    child: SvgPicture.asset(
                                      select[index]['img'],
                                      color: selected == index
                                          ? Color(0xff4DC6FD)
                                          : Colors.grey,
                                    ),
                                  ),
                                  SizedBox(
                                    width: height * .02,
                                  ),
                                  Text(
                                    select[index]['name'],
                                    style: TextStyle(
                                        fontSize: height * .018,
                                        color: selected == index
                                            ? Color(0xff4DC6FD)
                                            : Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * .015,
                        ),
                      ],
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
                      Get.to(() => Provide_Credentials());
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
                    style:
                        TextStyle(fontSize: height * .016, color: Colors.grey),
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
