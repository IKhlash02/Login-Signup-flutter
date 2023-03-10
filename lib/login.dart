import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Positioned(
          left: -400 / 2,
          bottom: 100,
          child: Hero(
            tag: 'circle',
            child: Container(
              width: 400,
              height: 400,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 224, 255, 221)),
            ),
          ),
        ),
        Positioned(
          left: -40,
          bottom: -100,
          child: Hero(
            tag: '1',
            child: Container(
              width: 400,
              height: 400,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 224, 255, 221)),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: ListView(children: <Widget>[
            const SizedBox(
              height: 80,
            ),
            Container(
              margin: const EdgeInsets.only(left: 31),
              child: Text(
                "Welcome Back!",
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 31, top: 8),
              child: Text(
                "Enter Your Username & Password",
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(31, 10, 31, 0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: GoogleFonts.inter(
                        color: const Color(0xff6B6B6B),
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(31, 40, 31, 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: GoogleFonts.inter(
                        color: const Color(0xff6B6B6B),
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 70,
              height: 70,
              child: Container(
                margin: const EdgeInsets.fromLTRB(90, 20, 90, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black),
                child: Material(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(50),
                    splashColor: Colors.white,
                    onTap: () {},
                    child: Center(
                        child: Text(
                      "Login",
                      style: GoogleFonts.inder(
                          color: Colors.white,
                          fontSize: 31,
                          fontWeight: FontWeight.w400),
                    )),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Forgotten Passwoard?',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                  color: const Color(0xff6B6B6B),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const SignUpPage();
                  }));
                },
                child: Text(
                  'Or Create a New Account',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                      color: const Color(0xff6B6B6B),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ),
            )
          ]),
        )
      ]),
    );
  }
}
