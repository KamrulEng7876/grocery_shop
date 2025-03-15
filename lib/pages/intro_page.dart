import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
                padding:
                    EdgeInsets.only(left: 80, right: 80, bottom: 40, top: 160),
                child: Image.asset('assets/images/avocado.jpg')),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                'We deliver groceries at your doorstep',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "Fresh items everyday",
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Spacer(),

            //get started button

            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>HomePageScreen(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(16)),
                padding: EdgeInsets.all(24),
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
