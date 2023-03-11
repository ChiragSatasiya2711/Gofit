import 'package:flutter/material.dart';
import 'package:gofit/comman_screen/comman_compponents_screen.dart';
import 'package:gofit/screens/notification_screen.dart';
import 'package:gofit/screens/profile_screen_main.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({Key? key}) : super(key: key);

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Stack(children: [
          Image.asset(
            'assets/images/new_image_3.png',
            height: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: height * 0.26, left: width * 0.04, right: width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Be Premium",
                    style: TextStyle(color: Color(0xFF6842FF), fontWeight: FontWeight.bold, fontSize: text * 28),
                  ),
                  Text(
                    "Get Unlimited Access",
                    style: TextStyle(color: Color(0xFF6842FF), fontWeight: FontWeight.bold, fontSize: text * 22),
                  ),
                  SizedBox(height: height * 0.02),
                  Text(
                    "Enjoy workout access without ads and \nrestrictions",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: text * 15),
                  ),
                  SizedBox(height: height * 0.06),
                  Container(
                    height: height * 0.1,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF0ECFF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Radio(
                          value: 1,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1 Month",
                              style: TextStyle(fontWeight: FontWeight.bold, height: 1.8, fontSize: text * 16),
                            ),
                            Text(
                              "Pay once,cancel any time",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: text * 12),
                            )
                          ],
                        ),
                        Image.asset("assets/images/pri_2.png"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    height: height * 0.1,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF0ECFF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Radio(
                          value: 2,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "6 Months",
                              style: TextStyle(fontWeight: FontWeight.bold, height: 1.8, fontSize: text * 16),
                            ),
                            Text(
                              "Pay once,cancel any time",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: text * 12),
                            )
                          ],
                        ),
                        Image.asset("assets/images/pri_3.png"),
                      ],
                    ),
                  ),
                  Container(
                    height: height * 0.1,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF0ECFF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Radio(
                          value: 3,
                          groupValue: _value,
                          onChanged: (value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "12 Month",
                              style: TextStyle(fontWeight: FontWeight.bold, height: 1.8, fontSize: text * 16),
                            ),
                            Text(
                              "Pay once,cancel any time",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: text * 12),
                            )
                          ],
                        ),
                        Image.asset("assets/images/pri_4.png"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          elevation: height,
          child: GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreenTwo(),
                  ),
                  (route) => false);
            },
            child: CommanContainer(
              title: "Subscribe",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationScreen(),
                    ));
              },
            ),
          )),
    );
  }
}
