import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gofit/screens/continue_screen.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List<int> name = [];
  int index = 0;
  CarouselController carouselController = CarouselController();

  List sliderList = [
    {
      "image": "assets/images/new_image_3.png",
      "title": "Find the right Workout for what you need",
      "subtitle": "Workout for what you need",
    },
    {
      "image": "assets/images/new_image_4.png",
      "title": "CREATE A WORKOUT PLAN to stay fit",
      "subtitle": "to stay fit",
    },
    {
      "image": "assets/images/new_image_5.png",
      "title": "ACTION IS THE KEY TO ALL SUCCESS",
      "subtitle": "KEY TO ALL SUCCESS",
    },
  ];

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        width: currentIndex == index ? 30 : 10,
        height: 10,
        margin: EdgeInsets.all(3),
        decoration: BoxDecoration(color: currentIndex == index ? Colors.black : Colors.black26, borderRadius: currentIndex == index ? BorderRadius.circular(10) : BorderRadius.circular(100)),
      );
    });
  }

  PageController _pageController = PageController();
  int activePage = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: PageView.builder(
                      itemCount: sliderList.length,
                      pageSnapping: true,
                      controller: _pageController,
                      onPageChanged: (v) {
                        setState(() {
                          activePage = v;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Container(
                                child: Image.asset(
                                  sliderList[index]['image'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Expanded(
                                  child: Container(
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Container(
                                      width: index == 2 ? width * 0.43 : width * 0.58,
                                      child: Text(
                                        sliderList[index]['title'],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500, fontFamily: 'IntegralCF', letterSpacing: 1),
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 0.04,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: indicators(sliderList.length, activePage),
                                    ),
                                    SizedBox(
                                      height: height * 0.06,
                                    ),
                                    // CommanCompponentsScreen(index: activePage),
                                  ],
                                ),
                              ))
                            ],
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Container(
                    height: 45,
                    width: width,
                    decoration: BoxDecoration(
                      color: Color(0xff6842FF),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          activePage++;
                          _pageController.animateToPage(activePage, duration: Duration(microseconds: 200), curve: Curves.bounceIn);
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ContinueScreen(),
                            ));
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(fontSize: 26, color: Colors.white, fontWeight: FontWeight.w500, fontFamily: 'IntegralCF', letterSpacing: 1),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
