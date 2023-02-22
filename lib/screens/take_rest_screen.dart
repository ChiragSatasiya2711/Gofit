import 'package:flutter/material.dart';

class TakeRestScreen extends StatefulWidget {
  const TakeRestScreen({Key? key}) : super(key: key);

  @override
  State<TakeRestScreen> createState() => _TakeRestScreenState();
}

class _TakeRestScreenState extends State<TakeRestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 300),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: BackButton(),
              ),
            ),
            Center(
              child: Text(
                "TAKE A REST",
                style: TextStyle(
                  height: 2,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFF6842FF),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
