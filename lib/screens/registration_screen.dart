import 'package:chatapp/screens/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Register",
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
                  height: 30,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Confirm Password",
                      labelText: "Confirm Password",
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
                        text: "Already have an account? ",
                        style: TextStyle(color: Colors.white)),
                    const WidgetSpan(
                        child: SizedBox(
                      width: 10,
                    )),
                    TextSpan(
                        text: "Login here",
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
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
      //TODO: register here
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
        "Register",
        style: TextStyle(
          color: Colors.white,
          fontSize: 21,
        ),
      ),
    ),
  );
}
