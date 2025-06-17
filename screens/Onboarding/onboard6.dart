import 'package:figma_to_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Onboarding6Screen extends StatelessWidget {
  const Onboarding6Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAED),
      body: SafeArea(
        child: Column(
          children: [
            // Skip button
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // Main image
            Expanded(
              flex: 5,
              child: Image.asset(
                Assets.png.monkey.path, // Add your image to this path
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 32),

            // Title with NFTs highlighted
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Discover, Collect\nand Sell ',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'NFTs\n',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFB3EA00),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFFB3EA00),
                        decorationThickness: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Subtitle
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'A vibrant marketplace where creators showcase their unique NFTs.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  height: 1.5,
                ),
              ),
            ),

            const Spacer(),

            // Bottom row: page indicator + button
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
              child: Row(
                children: [
                  // Page indicator (example)
                  Row(
                    children: [
                      _buildDot(isActive: false),
                      const SizedBox(width: 6),
                      _buildDot(isActive: true),
                      const SizedBox(width: 6),
                      _buildDot(isActive: false),
                    ],
                  ),
                  const Spacer(),
                  // Next button
                  InkWell(
                    onTap: () {
                      // TODO: Navigate to next onboarding screen
                    },
                    child: Container(
                      height: 56,
                      width: 56,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child:
                          const Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDot({required bool isActive}) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.grey.shade400,
        shape: BoxShape.circle,
      ),
    );
  }
}
