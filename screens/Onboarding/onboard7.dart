import 'package:figma_to_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Onboarding7Screen extends StatelessWidget {
  const Onboarding7Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              Assets.png.plant.path, // Update this path to your asset
              fit: BoxFit.cover,
            ),
          ),

          // Overlay content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),
                const Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3B6C45),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  "we're glad that that\nyou are here",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF3B6C45),
                    height: 1.4,
                  ),
                ),
                const Spacer(),

                // "Let's get started" button
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Add navigation logic
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3B6C45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 14,
                      ),
                    ),
                    child: const Text(
                      "Lets get started",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Page Indicator
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildDot(true),
                      _buildDot(false),
                      _buildDot(false),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDot(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: isActive ? 24 : 8,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF3B6C45) : Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
