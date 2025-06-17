import 'package:figma_to_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Onboarding10Screen extends StatelessWidget {
  const Onboarding10Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Overall background is white
      appBar: AppBar(
        title: const Text(
          'Hobbyr',
          style: TextStyle(
            color: Colors.black, // App bar title color
            fontWeight: FontWeight.w600, // Semi-bold
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white, // App bar background color
        elevation: 0,
      ),
      body: Stack(
        children: [
          // Yellow Wave Background (can be an SVG or a custom painter, using an image for simplicity)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              Assets.png.yellow.path, // Replace with your yellow wave image
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),

          // Illustration (positioned relative to the top/center)
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 80), // Adjust to position the character
              child: Image.asset(
                Assets.png.basket.path, // Replace with your character image
                width: 300, // Adjust size as needed
                height: 300,
                fit: BoxFit.contain,
              ),
            ),
          ),

          // Main Content Column (Title, Description, Pagination)
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min, // Takes minimum space
                children: [
                  // Pagination Indicators
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildPageIndicator(true), // Current page
                      const SizedBox(width: 8),
                      _buildPageIndicator(false),
                      const SizedBox(width: 8),
                      _buildPageIndicator(false),
                      const SizedBox(width: 8),
                      _buildPageIndicator(false),
                    ],
                  ),
                  const SizedBox(
                      height: 50), // Space between pagination and text

                  // Title Text
                  const Text(
                    'This is the title of\nthe onboarding',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2C3E50), // Dark grey
                    ),
                  ),
                  const SizedBox(height: 15),

                  // Description Text
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit aliquam, purus sit amet luctus\nvenenatis',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey, // Lighter grey
                    ),
                  ),
                  const SizedBox(height: 80), // Space before buttons

                  // Buttons Row
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
                            color: Colors.blue, // Blue text
                            fontWeight: FontWeight.w600,
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
                          backgroundColor: Colors.blue, // Blue background
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(30), // Rounded corners
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
                  const SizedBox(height: 40), // Bottom padding
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPageIndicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 8.0,
      width: isActive ? 24.0 : 8.0, // Active indicator is wider
      decoration: BoxDecoration(
        color: isActive
            ? Colors.blue
            : Colors.grey[300], // Active blue, inactive light grey
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
