import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String sel = "Beginer";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image.asset('assets/images/insight.png'),
        title: Text(
          "Gofit",
          style: TextStyle(fontSize: 17, color: Colors.black),
        ),
        actions: [
          Icon(CupertinoIcons.bell, color: Colors.black),
          Icon(Icons.save, color: Colors.black)
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Morning Chirstina",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Featured Workout",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Container(
                          height: 350,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Rectangle_3188.png'),
                                  fit: BoxFit.contain)),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Workout Level",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5),
                    ),
                  ],
                ),
                SizedBox(height: 10),
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
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: sel == e
                                          ? Colors.deepPurple
                                          : Colors.white,
                                      border: Border.all(
                                          color: sel == e
                                              ? Colors.transparent
                                              : Colors.deepPurple)),
                                  child: InkWell(
                                    onTap: () {
                                      sel = e;
                                      setState(() {});
                                    },
                                    child: Text(
                                      e,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: sel == e
                                              ? Colors.white
                                              : Colors.purple),
                                    ),
                                  )),
                            ),
                          )))
                      .toList(),
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 115,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/unsplash_WvDYdXDzkhs.png'),
                                  fit: BoxFit.fill)
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.assistant_direction_sharp), label: "Discover"),
          BottomNavigationBarItem(
              icon: Icon(Icons.assistant_direction_sharp), label: "Insight"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        selectedLabelStyle: TextStyle(color: Colors.purple),
        onTap: _onItemTapped,
        unselectedItemColor: Colors.black87,
        unselectedLabelStyle: TextStyle(color: Colors.black87),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 1;
}
