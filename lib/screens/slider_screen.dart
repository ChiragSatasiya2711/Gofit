import 'package:flutter/material.dart';

class NewScreeen extends StatefulWidget {
  const NewScreeen({Key? key}) : super(key: key);

  @override
  State<NewScreeen> createState() => _NewScreeenState();
}

class _NewScreeenState extends State<NewScreeen> {
  int index = 0;
  CarouselController carouselController = CarouselController();

  List sliderList = [
    {
      "image": "assets/images/new_image_3.png",
      "title": "MEET YOUR COACH",
      "subtitle": "START YOUR JOURNEY",
    },
    {
      "image": "assets/images/new_image_4.png",
      "title": "CREATE A WORKOUT PLAN",
      "subtitle": "to stay fit",
    },
    {
      "image": "assets/images/new_image_5.png",
      "title": "ACTION IS THE",
      "subtitle": "KEY TO ALL SUCCESS",
    },
  ];

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
            children: [
              CarouselSlider(
                items: sliderList
                    .map(
                      (item) => Container(
                    color: Colors.black,
                    height: height * .55,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 380,
                          width: width,
                          child: Image.asset(
                            sliderList[index]["image"],
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 100),
                        RichText(
                          text: TextSpan(
                            text: sliderList[index]["title"],
                            style: TextStyle(
                              fontSize: text * 26,
                              fontFamily: 'IntegralCF',),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: sliderList[index]["subtitle"],
                            style: TextStyle(
                              fontSize: text * 26,
                              fontFamily: 'IntegralCF',),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                )
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: false,
                  height: height * 0.75,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    this.index = index;
                    setState(() {});
                  },
                ),
              ),
              SizedBox(height: height/8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: sliderList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(entry.key),
                    child: Container(
                      width: 30.0,
                      height: 8.0,
                      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        //shape: BoxShape.circle,
                        color: (Colors.white).withOpacity(
                          index == entry.key ? 0.9 : 0.4,
                        ),
                      ),
                    ),
                  );
                },).toList(),
              ),
            ],
            ),
        );
    }

