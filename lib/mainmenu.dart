import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("assets/mainmenu.png")))),
                    Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 150,
                left: 10,
                right: 10,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'cari apa?',
                ),
                textCapitalization: TextCapitalization.sentences,
              ),
            ),
            menuCategory(),
            menuHotItem(),
        ],
      ),
        ],)
    );
    
    
  }
  Widget menuCategory() {
      Widget jenisCategory(String img, String text) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.grey, width: 2)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                    color: const Color(0xff090A0A),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Container(
            margin: const EdgeInsets.only(left: 24, bottom: 5),
            child: Text(
              "Category",
              style: GoogleFonts.poppins(
                  color: const Color(0xff090A0A),
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                jenisCategory("assets/plant_white_bg.png", "Plant"),
                const SizedBox(
                  width: 12,
                ),
                jenisCategory("assets/lamp_white_bg.png", "Lamp"),
                const SizedBox(
                  width: 12,
                ),
                jenisCategory("assets/chair_white_bg.png", "Chair"),
              ],
            ),
          ),
        ],
      );
    }

    Widget menuHotItem() {
      Widget jenisHotItem(String img, String text, String subText) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey, width: 2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: GoogleFonts.poppins(
                        color: const Color(0xff090A0A),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subText,
                      style: GoogleFonts.poppins(
                        color: const Color(0xff090A0A),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          Container(
            margin: const EdgeInsets.only(left: 24),
            child: Text(
              "Hot Item",
              style: GoogleFonts.poppins(
                color: const Color(0xff090A0A),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 5)),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: 500,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
                children: [
                  jenisHotItem(
                      "assets/favorite_img_4.jpg", "Cactus", "\u0024 18"),
                  jenisHotItem("assets/favorite_img_2.jpg", "Traditional Chair",
                      "\u0024 24"),
                  jenisHotItem(
                      "assets/favorite_img_3.jpeg", "Wooden Chair", "\u0024 44"),
                  jenisHotItem(
                      "assets/favorite_img_1.jpg", "Elegant Lamp", "\u0024 13"),
                  jenisHotItem("assets/favorite_img_5.jpg", "Beach Beutiful",
                      "\u0024 36"),
                  jenisHotItem("assets/favorite_img_6.jpg", "Archhitectural",
                      "\u0024 30"),
                ],
              ),
            ),
          ),
        ],
);
}
}