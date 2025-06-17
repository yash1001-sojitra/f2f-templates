import 'package:figma_to_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Onboarding4Screen extends StatelessWidget {
  const Onboarding4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 60),
            // Top image
            Expanded(
              flex: 5,
              child: Center(
                child: Image.asset(
                  Assets.png.check.path, // Replace with your image path
                  height: 300,
                ),
              ),
            ),

            // Text content
            Expanded(
              flex: 3,
              child: Column(
                children: const [
                  Text(
                    'Realtime Updates',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'Get real time updates on flights and delays.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),

            // Indicators & Next Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Page indicators
                  Row(
                    children: [
                      dot(isActive: true),
                      dot(isActive: false),
                      dot(isActive: false),
                    ],
                  ),

                  // Next Button
                  TextButton.icon(
                    onPressed: () {
                      // Handle next
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xFFE63946),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(16),
                    ),
                    icon: const SizedBox.shrink(),
                    label: const Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget dot({required bool isActive}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFE63946) : Colors.grey.shade300,
        shape: BoxShape.circle,
      ),
    );
  }
}
