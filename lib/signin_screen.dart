import 'package:flutter/material.dart';
import 'package:signin_screen/signup_screen.dart';
import 'package:signin_screen/widgets/empty_box.dart';
import 'package:signin_screen/widgets/text_field_widget.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              emptyVerticalBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "Log in",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 45,
                  ),
                ),
              ),
              emptyVerticalBox(
                height: 55,
              ),
              const Text(
                "Login with",
                style: TextStyle(
                    color: Colors.black38, fontWeight: FontWeight.w700),
              ),
              emptyVerticalBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: const Color(0xFFEBF2F8),
                    ),
                    child: Image.asset(
                      'assets/google_icon.png',
                      height: 60,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: const Color(0xFFEBF2F8),
                    ),
                    child: Image.asset(
                      'assets/facebook_icon.png',
                      height: 60,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              emptyVerticalBox(
                height: 50,
              ),
              const Text(
                "Email",
                style: TextStyle(
                    color: Color(0XFF4D5055), fontWeight: FontWeight.w600),
              ),
              emptyVerticalBox(
                height: 7,
              ),
              const AppTextField(),
              emptyVerticalBox(
                height: 30,
              ),
              const Text(
                "Password",
                style: TextStyle(
                    color: Color(0XFF4D5055), fontWeight: FontWeight.w600),
              ),
              emptyVerticalBox(
                height: 7,
              ),
              const AppTextField(),
              emptyVerticalBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0XFF486577),
                      Color(0XFF385156),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(5, 5),
                      blurRadius: 10,
                    )
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Log in',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  ),
                ),
              ),
              emptyVerticalBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                        color: Color(0XFFA1A8AD), fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupScreen(),
                      ),
                    ),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        color: Color(0XFFA1A8AD),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
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
