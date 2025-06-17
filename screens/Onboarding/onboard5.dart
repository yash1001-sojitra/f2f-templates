import 'package:figma_to_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Onboarding5Screen extends StatelessWidget {
  const Onboarding5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),

            // Image
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(
                  Assets.png.coffeeBoy.path, // Update with your image path
                  fit: BoxFit.contain,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Title
            const Text(
              'Discover Your\nDream Job here',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F4CF5),
              ),
            ),

            const SizedBox(height: 16),

            // Subtitle
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Explore all the existing job roles based on your interest and study major',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
            ),

            const Spacer(),

            // Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
              child: Row(
                children: [
                  // Login Button
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Handle Login
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1F4CF5),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 5,
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(width: 16),

                  // Register TextButton
                  TextButton(
                    onPressed: () {
                      // TODO: Handle Register
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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
