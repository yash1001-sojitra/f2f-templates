import 'package:figma_to_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Onboarding8Screen extends StatelessWidget {
  const Onboarding8Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Illustration
          Positioned.fill(
            child: Image.asset(
              Assets.png.sun.path, // Replace with your image path
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
          // Content (Title, Description, Button, Pagination)
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: MediaQuery.of(context).padding.top +
                        20), // Top padding for status bar

                const Spacer(), // Pushes content to the bottom

                // Title Text
                const Text(
                  'Your Title Goes\nHere', // Use \n for line break as seen in image
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 15),

                // Description Text
                const Text(
                  'Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit.\nVestibulum porta ipsum',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70, // Slightly transparent white
                  ),
                ),
                const SizedBox(height: 40),

                // Button and Pagination Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Pagination Indicators
                    Row(
                      children: [
                        _buildPageIndicator(false), // Previous page (inactive)
                        const SizedBox(width: 8),
                        _buildPageIndicator(false), // Previous page (inactive)
                        const SizedBox(width: 8),
                        _buildPageIndicator(true), // Current page (active)
                      ],
                    ),
                    const SizedBox(
                        width: 20), // Spacer between indicators and button

                    // Circular Navigation Button
                    InkWell(
                      onTap: () {
                        // TODO: Handle navigation button press (e.g., to next screen)
                        print('Navigation button pressed!');
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black87, // Darker color for the arrow
                          size: 28,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20), // Bottom padding for content
              ],
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
            ? Colors.white
            : Colors.white54, // Active is white, inactive is transparent white
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
