import 'package:figma_to_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Onboarding3Screen extends StatelessWidget {
  const Onboarding3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2E2A85), // Deep purple background
      body: Column(
        children: [
          const SizedBox(height: 60),
          // Image section
          Expanded(
            flex: 5,
            child: Center(
              child: Image.asset(
                Assets.png.clockBro.path, // Replace with actual image path
                width: 250,
              ),
            ),
          ),
          // Bottom white container
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(32),
                ),
              ),
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      Text(
                        'Familiale à souhait',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2E2A85),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Dolor sit amet, consectetur adipiscing elit. Pharetra sit lorem praesent eu ac nec dignissim. At eget nisl ultrices integer. Hendrerit.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  // Page Indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      indicator(false),
                      indicator(true),
                      indicator(false),
                    ],
                  ),
                  // Navigation buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Skip
                        },
                        child: const Text(
                          'Sauter',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Go to next onboarding
                        },
                        child: Row(
                          children: const [
                            Text(
                              'Suivant',
                              style: TextStyle(color: Color(0xFF2E2A85)),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF2E2A85),
                              size: 18,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 12 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive
            ? const Color(0xFF00CFE8)
            : const Color(0xFF00CFE8).withOpacity(0.5),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
