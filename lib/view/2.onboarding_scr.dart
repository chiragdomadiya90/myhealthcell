import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myhealthcell/view/3.welcome_scr.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var selectedPage = 0;
  var height = Get.height;
  var width = Get.width;
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);

    List<Map<String, dynamic>> onBoarding = [
      {
        'img': 'assets/photo/undraw_the_search_s0xf 1.png',
        'title': 'Find Trusted Doctors',
        'info':
            'Contrary to popular belief, Lorem Ipsum is not\nsimply random text. It has roots in a piece of it\nover 2000 years old.'
      },
      {
        'img': 'assets/photo/Mask Group.png',
        'title': 'Choose Best Doctors',
        'info':
            'Contrary to popular belief, Lorem Ipsum is not\nsimply random text. It has roots in a piece of it\nover 2000 years old.'
      },
      {
        'img': 'assets/photo/undraw_Booking_re_gw4j 1.png',
        'title': 'Easy Appointments',
        'info':
            'Contrary to popular belief, Lorem Ipsum is not\nsimply random text. It has roots in a piece of it\nover 2000 years old.'
      },
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
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: height * .75,
                width: double.infinity,
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() {
                      isLastPage = index == 2;
                    });
                  },
                  controller: pageController,
                  children: List.generate(
                    onBoarding.length,
                    (index) => Column(
                      children: [
                        SizedBox(
                          height: height * .06,
                        ),
                        Image.asset(
                          onBoarding[index]['img'],
                          height: height * .325,
                          width: height * .290,
                        ),
                        SizedBox(
                          height: height * .12,
                        ),
                        Text(
                          onBoarding[index]['title'],
                          style: TextStyle(
                              fontSize: height * .028,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height * .011,
                        ),
                        Text(
                          onBoarding[index]['info'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            height: height * .0023,
                            color: Color(0xff677294),
                            fontSize: 14,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: height * .02),
                child: SizedBox(
                  height: height * .055,
                  width: double.infinity,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color(0xff4DC6FD),
                    onPressed: () {
                      isLastPage == true
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WelcomeScreen(),
                              ),
                            )
                          : pageController.nextPage(
                              duration: Duration(milliseconds: 600),
                              curve: Curves.easeIn,
                            );
                    },
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          fontSize: height * .018, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * .018,
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => WelcomeScreen());
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                      color: Color(0xff677294), fontSize: height * .016),
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
