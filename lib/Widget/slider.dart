import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Slider_pogress extends StatefulWidget {
  const Slider_pogress({Key? key}) : super(key: key);

  @override
  State<Slider_pogress> createState() => _Slider_pogressState();
}

class _Slider_pogressState extends State<Slider_pogress> {
  PageController _pageController = PageController();
  int activePage = 0;
  List images = [
    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png',
    'https://tinypng.com/images/social/website.jpg',
    'https://www.w3schools.com/css/img_forest.jpg',
  ];
  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        width: currentIndex == index ? 30 : 10,
        height: 10,
        margin: EdgeInsets.all(3),
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.black : Colors.black26,
            borderRadius: currentIndex == index
                ? BorderRadius.circular(10)
                : BorderRadius.circular(100)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: PageView.builder(
                itemCount: images.length,
                pageSnapping: true,
                controller: _pageController,
                onPageChanged: (v) {
                  setState(() {
                    activePage = v;
                  });
                },
                itemBuilder: (context, pagePosition) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    child: Image.network(
                      images[pagePosition],
                      fit: BoxFit.cover,
                    ),
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(images.length, activePage),
          )
        ],
      ),
    );
  }
}
