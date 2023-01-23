import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int index = 0;
  CarouselController carouselController = CarouselController();

  List sliderList = [
    {
      "image": "assets/images/new_image_3.png",
      "title": "Find the right\nWorkout for what \nyou need",
    },
    {
      "image": "assets/images/new_image_4.png",
      "title": "CREATE A WORKOUT PLAN\nto stay fit",
    },
    {
      "image": "assets/images/new_image_5.png",
      "title": "ACTION IS THE\nKEY TO ALL SUCCESS",
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            CarouselSlider(
              items: sliderList
                  .map(
                    (item) => Container(
                      color: Colors.black,
                      height: height * 1,
                      child: Column(
                        children: [
                          SizedBox(
                            height: height / 1.7,
                            width: width,
                            child: Image.asset(
                              sliderList[index]["image"],
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(height: height / 25),
                          RichText(
                            text: TextSpan(
                              text: sliderList[index]["title"],
                              style: TextStyle(
                                fontSize: text * 24,
                                fontFamily: 'IntegralCF',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
              carouselController: carouselController,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: false,
                height: height * 0.80,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  this.index = index;
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: height / 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: sliderList.asMap().entries.map(
                (entry) {
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(entry.key),
                    child: Container(
                      width: 30.0,
                      height: 8.0,
                      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        //shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
