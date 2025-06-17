import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart'; // Required for TapGestureRecognizer

class Auth5Screen extends StatefulWidget {
  const Auth5Screen({super.key});

  @override
  State<Auth5Screen> createState() => _Auth5ScreenState();
}

class _Auth5ScreenState extends State<Auth5Screen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    // Define custom colors based on the image
    const Color primaryDarkBackground = Color(
      0xFF1E1E2E,
    ); // Dark blue/purple background
    const Color cardBackground = Color(
      0xFF2D2D44,
    ); // Slightly lighter dark for cards
    const Color accentPurple = Color(
      0xFF8A2BE2,
    ); // Vibrant purple for buttons/logo
    const Color facebookBlue = Color(0xFF3B5998); // Standard Facebook blue

    return Scaffold(
      backgroundColor: primaryDarkBackground,
      body: Stack(
        children: [
          // Background dots/patterns (simplified for code, can be more complex with custom painter)
          Positioned(
            top: -50,
            left: -50,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: accentPurple.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: -50,
            right: -50,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: accentPurple.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Image.network(
              'https://img.icons8.com/?size=100&id=fu4OChmjxQuT&format=png&color=000000', // Your custom logo
              height: 60,
              width: 60,
            ),
          ),
          // Main content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 120), // Spacing from top
                const Text(
                  'Welcome\nBack!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    height: 1.1, // Adjust line height
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Enter your email address and password to get\naccess your account.',
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
                const SizedBox(height: 40),
                // Grouped Input Fields
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: cardBackground,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      _buildInputField(
                        icon: Icons.email,
                        hintText: 'Email',
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const Divider(
                        color: Colors.white12,
                        height: 20,
                        thickness: 1,
                      ), // Separator
                      _buildInputField(
                        icon: Icons.lock,
                        hintText: 'Password',
                        obscureText: _obscureText,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.white54,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                // Forgot & Login Button Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Handle Forgot Password
                      },
                      child: const Text(
                        'Forgot?',
                        style: TextStyle(color: Colors.white70, fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Handle Login
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: accentPurple,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                        ),
                        icon: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        label: const Icon(Icons.arrow_forward, size: 24),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                // Login with Facebook Button
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Handle Login with Facebook
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: facebookBlue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 5,
                    ),
                    icon: Image.network(
                      'https://img.icons8.com/?size=100&id=CtrV2SV33rD9&format=png&color=000000', // Your Facebook logo
                      height: 24,
                      width: 24,
                      color:
                          Colors
                              .white, // Assuming the logo is monochrome and needs tinting
                    ),
                    label: const Text(
                      'Login with Facebook',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Spacer(), // Pushes content to the top
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text.rich(
                      TextSpan(
                        text: 'Don\'t have an account? ',
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: 'Create account',
                            style: TextStyle(
                              color: accentPurple,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer:
                                TapGestureRecognizer()
                                  ..onTap = () {
                                    // Handle "Create account" tap
                                  },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper for Input Fields
  Widget _buildInputField({
    required IconData icon,
    required String hintText,
    TextInputType keyboardType = TextInputType.text,
    bool obscureText = false,
    Widget? suffixIcon,
  }) {
    return TextField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: const TextStyle(color: Colors.white, fontSize: 17),
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.white54),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white54),
        border: InputBorder.none, // No border for fields inside the container
        contentPadding: const EdgeInsets.symmetric(vertical: 10),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
