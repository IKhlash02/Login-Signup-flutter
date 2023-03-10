import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Positioned(
          left: -400 / 4,
          top: 60,
          child: Hero(
            tag: 'circle',
            child: Container(
              width: 400,
              height: 400,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(53, 242, 0, 89)),
            ),
          ),
        ),
        Positioned(
          right: -400 / 3,
          bottom: 60,
          child: Hero(
            tag: '1',
            child: Container(
              width: 400,
              height: 400,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(53, 242, 0, 89)),
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
                "Create \nAccount :)",
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(31, 10, 31, 0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Enter Email Id',
                    labelStyle: GoogleFonts.inter(
                        color: const Color(0xff6B6B6B),
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(31, 40, 31, 0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Create Username',
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
                    labelText: 'Create Passward',
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
                      "Sign Up",
                      style: GoogleFonts.inder(
                          color: Colors.white,
                          fontSize: 31,
                          fontWeight: FontWeight.w400),
                    )),
                  ),
                ),
              ),
            ),
          ]),
        )
      ]),
    );
  }
}
