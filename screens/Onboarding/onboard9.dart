import 'package:figma_to_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Onboarding9Screen extends StatelessWidget {
  const Onboarding9Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Enhanced Background Gradient
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft, // Start from top-left
            end: Alignment.bottomRight, // End towards bottom-right
            colors: [
              Color.fromARGB(
                  255, 205, 138, 241), // Lighter purple/pink, top-left
              Color.fromARGB(255, 144, 103, 174), // Slightly deeper purple
              Color(
                  0xFF7A4A9A), // Card color, but also appears in middle gradient
              Color(0xFF5D307D), // Deeper purple, similar to bottom
            ],
            stops: [
              0.0,
              0.3,
              0.7,
              1.0
            ], // Experiment with stops to control color distribution
          ),
        ),
        child: Stack(
          children: [
            // Custom App Bar elements (top left back arrow, top right heart icon)
            Positioned(
              top: MediaQuery.of(context).padding.top +
                  10, // Adjust for status bar
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back,
                        color: Colors.white, size: 28),
                    onPressed: () {
                      // TODO: Handle back button press
                      print('Back button pressed');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.favorite_border,
                        color: Colors.white, size: 28),
                    onPressed: () {
                      // TODO: Handle favorite button press
                      print('Favorite button pressed');
                    },
                  ),
                ],
              ),
            ),

            // Circular Image
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top +
                        80), // Adjust top padding
                child: Container(
                  width: 250, // Diameter of the circle
                  height: 250, // Diameter of the circle
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      Assets.png.yogaGirl.path, // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),

            // Bottom Card
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 0), // No horizontal margin, fills width
                padding: const EdgeInsets.all(30.0),
                decoration: const BoxDecoration(
                  color: Color(0xFF7A4A9A), // Lighter purple for the card
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                height: MediaQuery.of(context).size.height *
                    0.45, // Occupy bottom 45% of screen
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Choose\nyour\ntop goal',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Practice your breathing, relax your\nbody, listen the calming sound music\nmake you feel better.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                    const Spacer(), // Pushes buttons to the bottom
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Skip Button
                        TextButton(
                          onPressed: () {
                            // TODO: Handle Skip button press
                            print('Skip button pressed');
                          },
                          child: const Text(
                            'Skip',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        // Next Button
                        ElevatedButton(
                          onPressed: () {
                            // TODO: Handle Next button press
                            print('Next button pressed');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(
                                0xFFBE9DD6), // A very light purple for the button
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 15),
                          ),
                          child: const Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10), // Padding below buttons
                  ],
                ),
              ),
            ),

            // Pagination Indicators (at the very bottom, slightly outside the card)
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20), // Adjust as needed
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildPageIndicator(false), // Inactive
                    const SizedBox(width: 8),
                    _buildPageIndicator(true), // Active (current page)
                    const SizedBox(width: 8),
                    _buildPageIndicator(false), // Inactive
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPageIndicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 8.0,
      width: isActive ? 24.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white54,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
