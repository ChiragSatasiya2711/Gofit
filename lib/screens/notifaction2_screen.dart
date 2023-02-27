import 'package:flutter/material.dart';

class NotificationSecondScreen extends StatefulWidget {
  const NotificationSecondScreen({Key? key}) : super(key: key);

  @override
  State<NotificationSecondScreen> createState() =>
      _NotificationSecondScreenState();
}

class _NotificationSecondScreenState extends State<NotificationSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Notification",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.control_point_rounded))
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: ListView(
          children: [
            Text("Today",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20)),
            Card(
              color: Colors.white,
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                leading: Image.asset(
                  'assets/images/Group 130.png',
                  fit: BoxFit.contain,
                ),
                title: Text("Congratulations!",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20)),
                subtitle: Text("You’ve been exercising for 2 hours",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.grey)),
              ),
            ),
            SizedBox(height: 20,),
            Card(
              color: Colors.white,
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                leading: Image.asset(
                  'assets/images/Group 128.png',
                  fit: BoxFit.contain,
                ),
                title: Text("New Workout is Available!",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20)),
                subtitle: Text("Check now and practice",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.grey)),
              ),
            ),
            SizedBox(height: 25,),
            Text("Yesterday",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 25,),
            Card(
              color: Colors.white,
              child: ListTile(
                contentPadding:
                EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                leading: Image.asset(
                  'assets/images/Group 148.png',
                  fit: BoxFit.contain,
                ),
                title: Text("New Features are Available!",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20)),
                subtitle: Text("You can now set exercise reminder",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.grey)),
              ),
            ),
            SizedBox(height: 20,),
            Text("December 11,2024",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 20,),
            Card(
              color: Colors.white,
              child: ListTile(
                contentPadding:
                EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                leading: Image.asset(
                  'assets/images/Group 130.png',
                  fit: BoxFit.contain,
                ),
                title: Text("Verification Successful!",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20)),
                subtitle: Text("Account verification complete",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.grey)),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
