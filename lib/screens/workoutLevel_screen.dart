import 'package:flutter/material.dart';
import 'package:gofit/comman_screen/comman_compponents_screen.dart';

class WorkoutLevelScreen extends StatefulWidget {
  const WorkoutLevelScreen({Key? key}) : super(key: key);

  @override
  State<WorkoutLevelScreen> createState() => _WorkoutLevelScreenState();
}

class _WorkoutLevelScreenState extends State<WorkoutLevelScreen> {
  String sel = "Beginer";

  List image = ['assets/images/unsplash_WvDYdXDzkhs.png', 'assets/images/image 9.png', 'assets/images/image 10.png', 'assets/images/image 11.png'];
  List title = ['Squat Movement Exercise', 'Full Body Stretching', 'Yoga Women Exercise', 'Yoga Movement Exercise'];
  List text = ['12 minutes', '6 minutes', '8 minutes', '10 minutes'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        leadingWidth: 50,
        titleSpacing: 0,
        title: Text(
          "Workout Level",
          style: TextStyle(fontSize: 17, color: Colors.black),
        ),
        actions: [
          Icon(
            Icons.close,
            color: Colors.black,
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: ["Beginer", "Intermedate", "Advanced"]
                      .map((e) => Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: InkWell(
                              onTap: () {
                                sel = e;
                                setState(() {});
                              },
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: sel == e ? Colors.deepPurple : Colors.white, border: Border.all(color: sel == e ? Colors.transparent : Colors.deepPurple)),
                                  child: InkWell(
                                    onTap: () {
                                      sel = e;
                                      setState(() {});
                                    },
                                    child: Text(
                                      e,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: sel == e ? Colors.white : Colors.purple),
                                    ),
                                  )),
                            ),
                          )))
                      .toList(),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: image.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 115,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), image: DecorationImage(image: AssetImage(image[index]), fit: BoxFit.fill)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title[index],
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            text[index],
                                            style: TextStyle(color: Colors.white, fontSize: 20),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            height: 18,
                                            width: 1,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Intermediate",
                                            style: TextStyle(color: Colors.white, fontSize: 16),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.save,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          CommanContainer(),
        ],
      ),
    );
  }
}
