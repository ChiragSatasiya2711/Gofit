import 'package:flutter/material.dart';

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.only(bottom: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/images/img_25.png",
                scale: 1.5,
              ),
              Image.asset(
                "assets/images/img_26.png",
                scale: 1.5,
              ),
              Image.asset(
                "assets/images/img_27.png",
                scale: 1.5,
              ),
              Image.asset(
                "assets/images/img_28.png",
                scale: 1.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
