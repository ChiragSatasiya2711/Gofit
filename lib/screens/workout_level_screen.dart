import 'package:flutter/material.dart';

class WorkoutLevelScreen extends StatefulWidget {
  const WorkoutLevelScreen({Key? key}) : super(key: key);

  @override
  State<WorkoutLevelScreen> createState() => _WorkoutLevelScreenState();
}

class _WorkoutLevelScreenState extends State<WorkoutLevelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const BackButton(),
                const Text(
                  "Workout Levels",
                  style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 120,
                ),
                Image.asset("assets/images/more.png"),
              ],
            ),
            // TabBar(tabs: )
          ],
        ),
      ),
    );
  }
}
