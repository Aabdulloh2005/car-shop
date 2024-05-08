import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homework/widgets/mob_widgets.dart';

class CarRent extends StatelessWidget {
  const CarRent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE3E3E3),
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [Image.asset("assets/images/person.png")],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchContainer(),
            const ImageContainer(),
            const CarInformation(),
            Container(
              margin: EdgeInsets.all(15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffffffff),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Reviews",
                        style: GoogleFonts.plusJakartaSans().copyWith(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 6, 20, 6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color(0XFF3563E9)),
                        child: Text(
                          "13",
                          style: GoogleFonts.plusJakartaSans().copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 17),
                        ),
                      )
                    ],
                  ),
                  ReviewContainer(i: 0),
                  ReviewContainer(i: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Show All",
                        style: GoogleFonts.plusJakartaSans().copyWith(
                            color: const Color(0XFF90A3BF),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_arrow_down_rounded),
                        color: const Color(0XFF90A3BF),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
