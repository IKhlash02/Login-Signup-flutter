import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Positioned(
          left: 31,
          top: -130,
          child: Hero(
            tag: 'circle',
            child: Container(
              width: 460,
              height: 460,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 231, 240, 255)),
            ),
          ),
        ),
        Positioned(
          left: 214,
          top: 123,
          child: Hero(
            tag: '1',
            child: Container(
              width: 460,
              height: 460,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 231, 240, 255)),
            ),
          ),
        ),
        Positioned(
            left: 215,
            top: 175,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: const SizedBox(
                width: 80,
                height: 80,
                child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://1fid.com/wp-content/uploads/2022/07/boy-anime-wallpaper-image-for-profile-pic-81.jpg")),
              ),
            )),
        Positioned(
            left: 165,
            top: 265,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const SizedBox(
                width: 125,
                height: 125,
                child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb26W7SWibBnZunUxxMn04DgpNgb-4aLzKart7iEmUIw8jcDpVxOQ93aQuQc-VHu59mLg&usqp=CAU")),
              ),
            )),
        Align(
          alignment: Alignment.bottomCenter,
          child: ListView(children: <Widget>[
            const SizedBox(
              height: 425,
            ),
            Container(
              margin: const EdgeInsets.only(left: 31),
              child: Text(
                "Let's Get Started",
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 55,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 31, top: 8),
              child: Text(
                "Grow Together",
                style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              width: 281,
              height: 70,
              child: Container(
                margin: const EdgeInsets.fromLTRB(68, 20, 68, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black),
                child: Material(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(50),
                    splashColor: Colors.white,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return const LoginPage();
                      }));
                    },
                    child: Center(
                        child: Text(
                      "JOIN NOW",
                      style: GoogleFonts.inder(
                          color: Colors.white,
                          fontSize: 31,
                          fontWeight: FontWeight.w400),
                    )),
                  ),
                ),
              ),
            )
          ]),
        )
      ]),
    );
  }
}
