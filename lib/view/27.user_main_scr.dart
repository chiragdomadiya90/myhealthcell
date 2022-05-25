import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserMainScreen extends StatefulWidget {
  const UserMainScreen({Key? key}) : super(key: key);

  @override
  State<UserMainScreen> createState() => _UserMainScreenState();
}

class _UserMainScreenState extends State<UserMainScreen> {
  var height = Get.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: height * .157,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff4DC6FD),
                              Color(0xff00CCCB),
                            ]),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * .027,
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                  )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    textAlign: TextAlign.center,
                                    'Hi HandWerker!',
                                    style: TextStyle(
                                        fontSize: height * .02,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    textAlign: TextAlign.center,
                                    'Find Your Doctor',
                                    style: TextStyle(
                                        fontSize: height * .025,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -25,
                      right: 0,
                      left: 0,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          decoration: buildInputDecoration().copyWith(
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: Icon(Icons.close),
                              hintText: 'Search.....',
                              hintStyle: TextStyle(color: Color(0xff677924)),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * .044,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Service(),
                      SizedBox(
                        height: height * .022,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular Doctor',
                            style: TextStyle(
                                fontSize: height * .018,
                                color: Color(0xff333333),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'See All',
                            style: TextStyle(
                                fontSize: height * .012,
                                color: Color(0xff677294),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * .022,
                      ),
                      Container(
                        height: 400,
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          itemCount: 4,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisExtent: 210,
                                  mainAxisSpacing: 3,
                                  crossAxisSpacing: 3),
                          itemBuilder: (context, index) {
                            return Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              elevation: 5,
                              child: Column(
                                children: [
                                  Container(
                                    height: height * .18,
                                    width: height * .19,
                                    child: Image.asset(
                                      "assets/photo/Rectangle 508.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * .014,
                                  ),
                                  Text(
                                    'Dr. Fillerup Grab',
                                    style: TextStyle(
                                        fontSize: height * .018,
                                        color: Color(0xff333333),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: height * .002,
                                  ),
                                  Text(
                                    'Medicine Specialist',
                                    style: TextStyle(
                                        fontSize: height * .012,
                                        color: Color(0xff677294),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: height * .007,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: height * .018,
                                        color: Color(0xffF6D060),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: height * .018,
                                        color: Color(0xffF6D060),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: height * .018,
                                        color: Color(0xffF6D060),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: height * .018,
                                        color: Color(0xffF6D060),
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        size: height * .018,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: height * .022,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Feature Doctor',
                            style: TextStyle(
                                fontSize: height * .018,
                                color: Color(0xff333333),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'See All',
                            style: TextStyle(
                                fontSize: height * .012,
                                color: Color(0xff677294),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * .022,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: List.generate(
                            5,
                            (index) => SizedBox(
                              height: height * .18,
                              width: height * .13,
                              child: Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            size: height * .015,
                                            color: Colors.red,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Color(0xffF6D060),
                                                size: height * .015,
                                              ),
                                              Text(
                                                '3.7',
                                                style: TextStyle(
                                                    fontSize: height * .015,
                                                    color: Color(0xff000000),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      CircleAvatar(
                                        radius: height * .05,
                                        child: Image.asset(
                                            'assets/photo/Ellipse 141.png'),
                                      ),
                                      SizedBox(
                                        height: height * .01,
                                      ),
                                      Text(
                                        'Dr.Crick',
                                        style: TextStyle(
                                            fontSize: height * .014,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: height * .003,
                                      ),
                                      Text(
                                        '\$ 25.00 / hours',
                                        style: TextStyle(
                                            fontSize: height * .01,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * .03,
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

class Service extends StatelessWidget {
  List<Map<String, dynamic>> service = [
    {
      'img': 'assets/photo/4.png',
      "color1": Color(0xff2753F3),
      "color2": Color(0xff765AFC),
      'name': 'Dental'
    },
    {
      'img': 'assets/photo/3.png',
      "color1": Color(0xff0EBE7E),
      "color2": Color(0xff07D9AD),
      'name': 'Cardiologist'
    },
    {
      'img': 'assets/photo/2.png',
      "color1": Color(0xffFE7F44),
      "color2": Color(0xffFFCF68),
      'name': 'Eye Specialist'
    },
    {
      'img': 'assets/photo/1.png',
      "color1": Color(0xffFF484C),
      "color2": Color(0xffFF6C60),
      'name': 'Skin Specialist'
    }
  ];
  var height = Get.height;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          service.length,
          (index) => Row(
            children: [
              Column(
                children: [
                  Container(
                    height: height * .09,
                    width: height * .08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          service[index]['color1'],
                          service[index]['color2']
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset(
                        service[index]['img'],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.007,
                  ),
                  Text(
                    service[index]['name'],
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 7,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: height * .012,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
