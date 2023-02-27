import 'package:flutter/material.dart';
import 'package:gofit/comman_screen/comman_compponents_screen.dart';
import 'package:gofit/screens/get_ready_screen.dart';
import 'package:gofit/screens/workout_activity_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class YogaBodyScreen extends StatefulWidget {
  const YogaBodyScreen({Key? key}) : super(key: key);

  @override
  State<YogaBodyScreen> createState() => _YogaBodyScreenState();
}

class _YogaBodyScreenState extends State<YogaBodyScreen> {
  Map userData = {
    "userData": [
      {"image": "assets/images/warrior_one.png", "data": "Warrior 1", "data2": "30 secods"},
      {"image": "assets/images/warrior_two.png", "data": "Side Plank", "data2": "20 secods"},
      {"image": "assets/images/warrior_three.png", "data": "One Leg Downw...", "data2": "20 secods"},
    ],
  };

  String? _range;
  List date = [
    'Beginner',
    '10 minutes',
    '10 workout ',
  ];
  int? id;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    double text = MediaQuery.of(context).textScaleFactor;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/image_four.png"),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: BackButton(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 240,
                      ),
                      Icon(
                        Icons.bookmark_add_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.more_horiz_rounded,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
              const Text(
                "Yoga Body Stretching",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25, height: 2),
              ),
              Container(
                height: 50,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: date.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          id = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Chip(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: id == index ? const Color(0xff6842FF) : Colors.white,
                              ),
                              borderRadius: BorderRadiusDirectional.circular(25)),
                          label: Text(
                            date[index],
                            style: GoogleFonts.rubik(color: const Color(0xFF6842FF)),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          backgroundColor: Colors.white,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Divider(
                thickness: 0.6,
                color: Colors.grey.shade300,
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Workout Activity",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WorkoutActivity(),
                          ),
                        );
                      },
                      child: const Text(
                        "See All",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color(0xFF6842FF)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Container(
                    height: height * 0.12,
                    margin: const EdgeInsets.all(16),
                    width: double.infinity,
                    color: const Color(0xFFF8F5F5),
                    child: Row(
                      children: [
                        Image.asset(
                          userData["userData"][index]["image"],
                        ),
                        SizedBox(width: width * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${userData["userData"][index]["data"]}",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: text * 18),
                            ),
                            SizedBox(height: height * 0.02),
                            Text(
                              "${userData["userData"][index]["data2"]}",
                              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  itemCount: userData["userData"].length,
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GetReadyScreen(),
                ),
              );
            },
            child: CommanContainer(
              title: "Start",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WorkoutActivity(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
