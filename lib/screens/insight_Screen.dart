import 'package:flutter/material.dart';

class InsightScreen extends StatefulWidget {
  const InsightScreen({Key? key}) : super(key: key);

  @override
  State<InsightScreen> createState() => _InsightScreenState();
}

class _InsightScreenState extends State<InsightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Insight",
          style: TextStyle(color: Colors.black),
        ),
        leading: Image.asset("assets/images/insight.png"),
        actions: [
          Image.asset("assets/images/insight1.png"),
        ],
      ),
    );
  }
}
