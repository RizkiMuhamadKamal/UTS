import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts/mainmenu.dart';
import 'package:uts/profile.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("assets/furniture.png")))),
        Column(
          children: [
            Container(
              margin: new EdgeInsets.only(
                top: 600,
                left: 10,
                right: 10,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'E-mail',
                ),
                textCapitalization: TextCapitalization.sentences,
              ),
            ),
            Container(
              margin: new EdgeInsets.only(
                top: 20,
                bottom: 10,
                left: 10,
                right: 10,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Pasword',
                ),
                textCapitalization: TextCapitalization.sentences,
              ),
            ),
          ],
        ),
        const Spacer(),
        GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MainMenuPage()));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 700, left: 125),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 58, vertical: 14,),
                    decoration: BoxDecoration(
                      color: const Color(0xff868951),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Text(
                      "Log In",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    )),
              ],
            )),
            const Spacer(),
        GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Profilepage()));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 800, left: 15),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 58, vertical: 14,),
                    decoration: BoxDecoration(
                      color: const Color(0xffcf8a56),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Text(
                      "Profile",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    )),
              ],
            )),
      ]),
    );
  }
}
