import 'package:flutter/material.dart';
import 'package:login_page/Pages/home_page.dart';
import 'package:login_page/widget/text_form_view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Material(
      color: Theme.of(context).canvasColor,
      child: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  'lib/Image/login_image.png',
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  "Login Page",
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32.0, vertical: 36.0),
                  child: Column(
                    children: [
                      Text_Form_Field_View(
                          "Enter your name", "Username", false),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text_Form_Field_View(
                          "Enter your password", "Password", true),
                      const SizedBox(
                        height: 40.0,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurpleAccent,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              textStyle: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Text("Login"))
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
