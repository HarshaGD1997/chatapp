import 'dart:ui';

import 'package:chatapp/screens/registration_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const SizedBox(
                  height: 50,
                ),
                _buildButton(),
                const SizedBox(
                  height: 30,
                ),
                RichText(
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(children: [
                    const TextSpan(
                        text: "New User? ",
                        style: const TextStyle(color: Colors.white)),
                    const WidgetSpan(
                        child: SizedBox(
                      width: 5,
                    )),
                    TextSpan(
                        text: "Register here",
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegistrationScreen()));
                          })
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildButton() {
  return GestureDetector(
    onTap: () {
      //TODO: login
    },
    child: Container(
      height: 40,
      width: 120,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.black87,
        gradient:
            const LinearGradient(colors: [Colors.blueAccent, Colors.blueGrey]),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        "Login",
        style: TextStyle(
          color: Colors.white,
          fontSize: 21,
        ),
      ),
    ),
  );
}
