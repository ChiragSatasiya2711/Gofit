import 'package:flutter/material.dart';

class MyBookMark_Screen extends StatefulWidget {
  const MyBookMark_Screen({Key? key}) : super(key: key);

  @override
  State<MyBookMark_Screen> createState() => _MyBookMark_ScreenState();
}

class _MyBookMark_ScreenState extends State<MyBookMark_Screen> {
  List data = [
    {
      'title': "Arms Dumbbell",
      "img": "assets/images/image 13.png",
      "time": "10 minutes",
      "des": "Intermedia"
    },
    {
      'title': "Man Dumbbell",
      "img": "assets/images/image 14.png",
      "time": "8 minutes",
      "des": "Intermedia"
    },
    {
      'title': "Arms Exercise",
      "img": "assets/images/image 15.png",
      "time": "12 minutes",
      "des": "Intermedia"
    },
    {
      'title': "Pull Up Training",
      "img": "assets/images/image 16.png",
      "time": "10 minutes",
      "des": "Intermedia"
    },
    {
      'title': "Yoga Movement",
      "img": "assets/images/image 17.png",
      "time": "16 minutes",
      "des": "Intermedia"
    },
    {
      'title': "Abdominal Exerc.",
      "img": "assets/images/image 18.png",
      "time": "6 minutes",
      "des": "Intermedia"
    },
    {
      'title': "Throw  Ball Exerc...",
      "img": "assets/images/image 19.png",
      "time": "12 minutes",
      "des": "Intermedia"
    },
    {
      'title': "Jogging Training",
      "img": "assets/images/image 20.png",
      "time": "18 minutes",
      "des": "Intermedia"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "My Bookmark",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Icon(
            Icons.pages_rounded,
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              showModalBottomSheet<void>(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100))),
                context: context,
                builder: (context) {
                  return Container(
                    color: Colors.amber,
                    height: 350,
                  );
                },
              );
            },
            icon: Icon(Icons.apps),
            color: Colors.black,
          )
        ],
      ),
      body: GridView.builder(
        itemCount: data.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(data[index]['img'].toString()))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data[index]['title'],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              data[index]['time'],
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 18,
                              width: 1,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              data[index]['des'],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Icon(
                            Icons.save,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
