import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gofit/comman_screen/comman_compponents_screen.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    double text = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Container(
                height: height / 2.5,
                width: width,
                color: Colors.white,
                child: Image.asset("assets/images/new_image_3.png"),
              ),
              Container(
                height: height / 2,
                width: width,
                color: Colors.white,
                child: Image.asset("assets/images/new_image_4.png"),
              ),
              Container(
                height: height / 2,
                width: width,
                color: Colors.white,
                child: Image.asset("assets/images/new_image_5.png"),
              ),
            ],
            options: CarouselOptions(
              height: height / 2,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 5),
              viewportFraction: 0.8,
            ),
          ),
          SizedBox(
            height: height / 3,
          ),
          CommanContainer(
            title: "Next",
          ),
        ],
      ),
    );
  }
}
