import 'package:figma_to_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Onboarding2Screen extends StatelessWidget {
  const Onboarding2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00B6D4), // Teal blue background
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),
            // Image
            Expanded(
              flex: 5,
              child: Center(
                child: Image.asset(
                  Assets.png.bro.path, // Add your image to assets
                  width: 250,
                ),
              ),
            ),

            // Text
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Profitez du voyage',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Dolor sit amet, consectetur adipiscing elit. Pharetra sit lorem praesent eu ac nec dignissim. At eget nisl ultrices integer. Hendrerit.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    // Page Indicator
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        dot(isActive: false),
                        dot(isActive: true),
                        dot(isActive: false),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Bottom Buttons
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        // Navigate to register
                      },
                      child: const Text(
                        "S'INSCRIRE",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to login
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFF00B6D4),
                      ),
                      child: const Text("SE CONNECTER"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget dot({required bool isActive}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 12 : 8,
      height: isActive ? 12 : 8,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}
