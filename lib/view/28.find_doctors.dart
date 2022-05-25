import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FindDoctors extends StatefulWidget {
  const FindDoctors({Key? key}) : super(key: key);

  @override
  State<FindDoctors> createState() => _FindDoctorsState();
}

class _FindDoctorsState extends State<FindDoctors> {
  bool select = false;
  var height = Get.height;

  List<Map<String, dynamic>> data = [
    {
      'img': 'assets/photo/1 (2).png',
      'time': '10:00',
      'name': 'Dr.Shruti Kedia',
      'sp': 'B.S. in BioChemistry',
      "add": 'Upasana Dental Clinic, salt lake'
    },
    {
      'img': 'assets/photo/2 (2).png',
      'time': '10:00',
      'name': 'Dr.Watemaniuk',
      'sp': 'Biological Science',
      "add": 'Hopkins Hospital, Baltire, MD, US'
    },
    {
      'img': 'assets/photo/3 (2).png',
      'time': '11:00',
      'name': 'Dr.Crownover',
      'sp': 'B.S. in BioChemistry',
      "add": 'Upasana Dental Clinic, salt lake'
    },
    {
      'img': 'assets/photo/1 (2).png',
      'time': '11:00',
      'name': 'Dr.Balestra',
      'sp': 'Biomedical Engineering',
      "add": 'Hopkins Hospital, Balti, MD, US'
    },
    {
      'img': 'assets/photo/1 (2).png',
      'time': '10:00',
      'name': 'Dr.Shruti Kedia',
      'sp': 'B.S. in BioChemistry',
      "add": 'Upasana Dental Clinic, salt lake'
    },
    {
      'img': 'assets/photo/2 (2).png',
      'time': '10:00',
      'name': 'Dr.Watemaniuk',
      'sp': 'Biological Science',
      "add": 'Hopkins Hospital, Baltire, MD, US'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 48.h,
        width: 48.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 4),
        ),
        child: FloatingActionButton(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          backgroundColor: Color(0xff677294),
          onPressed: () {},
          child: Icon(
            Icons.filter_alt_rounded,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff61CEFF),
                Color(0xffB3E5FC),
                Color(0xffB3E5FC),
                Colors.white,
                Colors.white,
                Color(0xff61CEFF),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 44.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 22.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30.h,
                            width: 30.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Icon(
                              Icons.arrow_back_ios_sharp,
                              size: 18.h,
                              color: Color(0xff677294),
                            ),
                          ),
                          SizedBox(
                            width: 19.h,
                          ),
                          Text(
                            'Find Doctors',
                            style: TextStyle(
                                fontSize: 18.h,
                                color: Color(0xff333333),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 38.h,
                      ),
                      TextField(
                        decoration: buildInputDecoration().copyWith(
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon:
                                Icon(Icons.search, color: Color(0xff677924)),
                            suffixIcon:
                                Icon(Icons.close, color: Color(0xff677924)),
                            hintText: 'Dentist',
                            hintStyle: TextStyle(color: Color(0xff677924)),
                            border: InputBorder.none),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Column(
                        children: List.generate(
                          data.length,
                          (index) => SizedBox(
                            height: 175.h,
                            width: double.infinity,
                            child: Card(
                              elevation: 10,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 18.h,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 87.h,
                                          width: 92.h,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      data[index]['img']))),
                                        ),
                                        SizedBox(
                                          width: 14.h,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  data[index]['name'],
                                                  style: TextStyle(
                                                      fontSize: 18.h,
                                                      color: Color(0xff333333),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 40.h,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      select = !select;
                                                    });
                                                  },
                                                  child: select == true
                                                      ? Icon(
                                                          Icons
                                                              .favorite_outline,
                                                          size: 20.h,
                                                          color:
                                                              Color(0xff677294),
                                                        )
                                                      : Icon(
                                                          Icons
                                                              .favorite_outlined,
                                                          size: 20.h,
                                                          color: Colors.red,
                                                        ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              'Tooths Dentist',
                                              style: TextStyle(
                                                fontSize: 13.h,
                                                color: Color(0xff00CCCB),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 4.h,
                                            ),
                                            Text(
                                              data[index]['sp'],
                                              style: TextStyle(
                                                fontSize: 12.h,
                                                color: Color(0xff677294),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 9.h,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  size: 18.h,
                                                  color: Color(0xff677294),
                                                ),
                                                Text(
                                                  data[index]['add'],
                                                  style: TextStyle(
                                                    fontSize: 11.h,
                                                    color: Color(0xff677294),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 17.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              'Next Available',
                                              style: TextStyle(
                                                  fontSize: 13.h,
                                                  color: Color(0xff00CCCB),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text(
                                              '${data[index]['time']} AM Tomorrow',
                                              style: TextStyle(
                                                  fontSize: 10.h,
                                                  color: Color(0xff677294),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 34.h,
                                          width: 112.h,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              color: Color(0xff4DC6FD)),
                                          child: Center(
                                            child: Text(
                                              'Book Now',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 12.sp),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                    ],
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
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade100),
          borderRadius: BorderRadius.circular(6)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade100),
          borderRadius: BorderRadius.circular(6)),
    );
  }
}
