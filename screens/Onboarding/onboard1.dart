import 'package:figma_to_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5FF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top row: Logo + Skip
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    Assets.png.locationPin.path, // Replace with your logo
                    height: 40,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("skip", style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),

              SizedBox(height: 30),

              // Illustration
              Center(
                child: Image.asset(
                  Assets.png.map.path, // Replace with your image
                  height: 300,
                ),
              ),

              SizedBox(height: 40),

              // Title
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Gps",
                      style: GoogleFonts.montserrat(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: " Solutions",
                      style: GoogleFonts.montserrat(
                        fontSize: 38,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              // Subtitle
              Text(
                "Providing tailored GPS management\nand offers tracking solutions.",
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  color: Colors.grey[800],
                ),
              ),

              Spacer(),

              // Bottom row: Page Indicator + Next button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      SizedBox(width: 4),
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      SizedBox(width: 4),
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: StadiumBorder(),
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white),
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
