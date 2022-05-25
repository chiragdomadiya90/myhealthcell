import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myhealthcell/view/14.medical_profile_2.dart';

import '16.medical_process_finish.dart';

class MedicalProfile_3 extends StatefulWidget {
  const MedicalProfile_3({Key? key}) : super(key: key);

  @override
  State<MedicalProfile_3> createState() => _MedicalProfile_3State();
}

///
class _MedicalProfile_3State extends State<MedicalProfile_3> {
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
                          color: Color(0xff00CCCB),
                        ),
                      ),
                      Text(
                        'Step 3',
                        style: TextStyle(
                          fontSize: height * .018,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff00CCCB),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * .055,
                ),
                Step1(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: height * .055,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.grey.shade100,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Location 2',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff677294)),
                          ),
                          Icon(Icons.edit, color: Color(0xff677294)),
                        ],
                      ),
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
                    color: const Color(0xff4DC6FD),
                    onPressed: () {
                      Get.to(() => const MedicalProcessFinish());
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                  ],
                ),
                SizedBox(
                  height: height * .055,
                )
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
  final place = TextEditingController();
  final fax = TextEditingController();
  final region = TextEditingController();
  final city = TextEditingController();
  final zip = TextEditingController();
  final street = TextEditingController();
  final number = TextEditingController();
  final apartment = TextEditingController();
  final floor = TextEditingController();
  final provider = TextEditingController();
  final form = GlobalKey<FormState>();

  List<String> country = ['India', 'USA', 'Shri Lanka', 'Australia', 'Brazil'];
  dynamic selected = 'India';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: form,
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: height * .055,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.grey.shade100,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Location',
                      style: TextStyle(fontSize: 16, color: Color(0xff677294)),
                    ),
                    Icon(Icons.add, color: Color(0xff677294)),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * .017,
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: const Color(0xffE1F5FE),
                    scrollable: true,
                    elevation: 10,
                    insetPadding:
                        EdgeInsets.symmetric(horizontal: 21, vertical: 140),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    content: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Location 1",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 12,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * .01,
                        ),
                        TextFormField(
                          controller: place,
                          textInputAction: TextInputAction.done,
                          decoration: buildInputDecoration().copyWith(
                            hintText: 'Place',
                          ),
                        ),
                        TextFormField(
                          controller: fax,
                          textInputAction: TextInputAction.done,
                          decoration: buildInputDecoration().copyWith(
                            hintText: 'Fax Number',
                          ),
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.done,
                          decoration: buildInputDecoration().copyWith(
                            hintText: 'Country',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                            prefixIcon: DropdownButtonHideUnderline(
                              child: Container(
                                width: Get.width,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: DropdownButton(
                                    value: selected,
                                    icon: const Icon(
                                        Icons.keyboard_arrow_down_sharp),
                                    onChanged: (value) {
                                      setState(
                                        () {
                                          selected = value;
                                        },
                                      );
                                    },
                                    items: country
                                        .map(
                                          (e) => DropdownMenuItem(
                                            value: e,
                                            child: Text(
                                              e,
                                              style: const TextStyle(
                                                  color: Color(0xff677294)),
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
                          controller: region,
                          textInputAction: TextInputAction.done,
                          decoration: buildInputDecoration().copyWith(
                            hintText: 'Region',
                          ),
                        ),
                        TextFormField(
                          controller: city,
                          textInputAction: TextInputAction.done,
                          decoration: buildInputDecoration().copyWith(
                            hintText: 'City',
                          ),
                        ),
                        TextFormField(
                          controller: zip,
                          textInputAction: TextInputAction.done,
                          decoration: buildInputDecoration().copyWith(
                            hintText: 'Zip Code',
                          ),
                        ),
                        TextFormField(
                          controller: street,
                          textInputAction: TextInputAction.done,
                          decoration: buildInputDecoration().copyWith(
                            hintText: 'Street',
                          ),
                        ),
                        TextFormField(
                          controller: number,
                          textInputAction: TextInputAction.done,
                          decoration: buildInputDecoration().copyWith(
                            hintText: 'Number',
                          ),
                        ),
                        TextFormField(
                          controller: apartment,
                          textInputAction: TextInputAction.done,
                          decoration: buildInputDecoration().copyWith(
                            hintText: 'Apartment',
                          ),
                        ),
                        TextFormField(
                          controller: floor,
                          textInputAction: TextInputAction.done,
                          decoration: buildInputDecoration().copyWith(
                            hintText: 'Floor',
                          ),
                        ),
                        TextFormField(
                          controller: provider,
                          textInputAction: TextInputAction.done,
                          decoration: buildInputDecoration().copyWith(
                            hintText: 'Provider Services',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                    backgroundColor: const Color(0xffE1F5FE),
                                    insetPadding: EdgeInsets.symmetric(
                                      horizontal: 21,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    title: Availability());
                              },
                            );
                          },
                          child: Container(
                            height: height * .07,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Colors.grey.shade100,
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Availability',
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xff677294)),
                                  ),
                                  Icon(Icons.add, color: Color(0xff677294)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * .015,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: height * .055,
                            width: height * .38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff858EA9),
                            ),
                            child: const Center(
                              child: Text(
                                'Delete',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * .025,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Add Location",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xff4DC6FD),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Icon(
                              Icons.add,
                              color: Color(0xff4DC6FD),
                              size: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Container(
              height: height * .055,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.grey.shade100,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Location 1',
                      style: TextStyle(fontSize: 16, color: Color(0xff677294)),
                    ),
                    Icon(Icons.edit, color: Color(0xff677294)),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * .017,
          ),
        ],
      ),
    );
  }
}

InputDecoration buildInputDecoration() {
  return InputDecoration(
    counter: const Offstage(),
    fillColor: Colors.white,
    hintStyle: TextStyle(
      color: Color(0xff677294),
    ),
    filled: true,
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

///availabilty
class Availability extends StatefulWidget {
  @override
  State<Availability> createState() => _AvailabilityState();
}

class _AvailabilityState extends State<Availability> {
  List<String> week = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Location 1",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 12,
            ),
          ],
        ),
        SizedBox(
          height: height * .01,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: height * .055,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.grey.shade100,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Availability',
                    style: TextStyle(fontSize: 16, color: Color(0xff677294)),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color(0xff677294),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * .01,
        ),
        Text(
          'Week',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        SizedBox(
          height: height * .015,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            7,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  select = index;
                });
              },
              child: Container(
                height: height * 0.03,
                width: height * .034,
                decoration: BoxDecoration(
                    color: select == index
                        ? Color(0xffBBDEFB)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    week[index],
                    style: TextStyle(fontSize: 16, color: Color(0xff677294)),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * .015,
        ),
        Row(
          children: [
            Container(
              height: height * 0.051,
              width: height * .083,
              decoration: BoxDecoration(
                  color: Color(0xff4DC6FD),
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '10:00 AM',
                    style:
                        TextStyle(fontSize: height * .016, color: Colors.white),
                  ),
                  Text(
                    '11:00 AM',
                    style:
                        TextStyle(fontSize: height * .016, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: height * .015,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                        backgroundColor: const Color(0xffE1F5FE),
                        scrollable: true,
                        insetPadding:
                            EdgeInsets.symmetric(horizontal: 21, vertical: 140),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        title: Availability1());
                  },
                );
              },
              child: Container(
                height: height * 0.051,
                width: height * .083,
                decoration: BoxDecoration(
                    color: Color(0xff4DC6FD),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '+',
                      style: TextStyle(
                          fontSize: height * .016, color: Colors.white),
                    ),
                    Text(
                      'Time',
                      style: TextStyle(
                          fontSize: height * .016, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * .18,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: height * .055,
            width: height * .38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff858EA9),
            ),
            child: const Center(
              child: Text(
                'Delete',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * .025,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Add Location",
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff4DC6FD),
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Icon(
              Icons.add,
              color: Color(0xff4DC6FD),
              size: 15,
            ),
          ],
        ),
      ],
    );
  }
}

///time select

class Availability1 extends StatefulWidget {
  @override
  State<Availability1> createState() => _Availability1State();
}

class _Availability1State extends State<Availability1> {
  List<String> week = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];

  List<String> time = [
    '00:00',
    '01:00',
    '02:00',
    '03:00',
    '04:00',
    '05:00',
    '06:00',
    '07:00',
    '08:00',
    '09:00',
    '10:00',
    '11:00',
    '12:00'
  ];
  List<String> time1 = [
    '00:00',
    '01:00',
    '02:00',
    '03:00',
    '04:00',
    '05:00',
    '06:00',
    '07:00',
    '08:00',
    '09:00',
    '10:00',
    '11:00',
    '12:00'
  ];
  int select = 0;
  int select1 = 0;
  int select2 = 0;
  dynamic from = "00:00";
  dynamic to = "00:00";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Location 1",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 12,
            ),
          ],
        ),
        SizedBox(
          height: height * .01,
        ),
        Text(
          'Week',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        SizedBox(
          height: height * .015,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            7,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  select = index;
                });
              },
              child: Container(
                height: height * 0.03,
                width: height * .034,
                decoration: BoxDecoration(
                    color: select == index
                        ? Color(0xffBBDEFB)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    week[index],
                    style: TextStyle(fontSize: 16, color: Color(0xff677294)),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * .015,
        ),
        Row(
          children: [
            Container(
              height: height * 0.051,
              width: height * .083,
              decoration: BoxDecoration(
                  color: Color(0xff4DC6FD),
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '10:00 AM',
                    style:
                        TextStyle(fontSize: height * .016, color: Colors.white),
                  ),
                  Text(
                    '11:00 AM',
                    style:
                        TextStyle(fontSize: height * .016, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: height * .015,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: height * 0.051,
                width: height * .083,
                decoration: BoxDecoration(
                    color: Color(0xff4DC6FD),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '+',
                      style: TextStyle(
                          fontSize: height * .016, color: Colors.white),
                    ),
                    Text(
                      'Time',
                      style: TextStyle(
                          fontSize: height * .016, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * .015,
        ),
        Text(
          'From',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        SizedBox(
          height: height * .015,
        ),
        TextFormField(
          textInputAction: TextInputAction.done,
          decoration: buildInputDecoration().copyWith(
            hintText: '00:00',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            prefixIcon: DropdownButtonHideUnderline(
              child: Container(
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DropdownButton(
                    value: from,
                    icon: const Icon(Icons.keyboard_arrow_down_sharp),
                    onChanged: (value) {
                      setState(
                        () {
                          from = value;
                        },
                      );
                    },
                    items: time
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text(
                              e,
                              style: const TextStyle(color: Color(0xff677294)),
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
        SizedBox(
          height: height * .015,
        ),
        Text(
          'To',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        SizedBox(
          height: height * .015,
        ),
        TextFormField(
          textInputAction: TextInputAction.done,
          decoration: buildInputDecoration().copyWith(
            hintText: '00:00',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            prefixIcon: DropdownButtonHideUnderline(
              child: Container(
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DropdownButton(
                    value: to,
                    icon: const Icon(Icons.keyboard_arrow_down_sharp),
                    onChanged: (value) {
                      setState(
                        () {
                          to = value;
                        },
                      );
                    },
                    items: time
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text(
                              e,
                              style: const TextStyle(color: Color(0xff677294)),
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
        SizedBox(
          height: height * .05,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: height * .055,
            width: height * .38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff858EA9),
            ),
            child: const Center(
              child: Text(
                'Delete',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * .025,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Add Location",
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff4DC6FD),
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Icon(
              Icons.add,
              color: Color(0xff4DC6FD),
              size: 15,
            ),
          ],
        ),
      ],
    );
  }
}
