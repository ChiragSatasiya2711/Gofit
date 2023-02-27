import 'package:flutter/material.dart';

import '../comman_screen/comman_compponents_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20, right: 300),
                child: BackButton(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(right: 100),
                child: Text(
                  "Create your\nAccount",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                  labelText: "Email",
                  suffixIcon: Icon(Icons.email),
                  fillColor: Color(0xFFF2F2F2),
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: passController,
                decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  suffixIcon: Icon(Icons.lock),
                  fillColor: Color(0xFFF2F2F2),
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text("Remember me"),
              CommanContainer(
                title: "Sign up",
              ),
              SizedBox(
                height: 220,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Sign up",
                    style: TextStyle(color: Color(0xFF6842FF), fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
