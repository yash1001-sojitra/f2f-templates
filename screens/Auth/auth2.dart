import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart'; // Required for TapGestureRecognizer

class Auth2Screen extends StatelessWidget {
  const Auth2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Explicitly set background to black
      appBar: AppBar(
        backgroundColor: Colors.black, // App bar background
        elevation: 0, // No shadow
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Handle back button press, e.g., navigate back
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Get your free account',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            _buildSocialLoginButton(
              context,
              'Continue with Apple',
              'https://img.icons8.com/?size=100&id=30840&format=png&color=FFFFFF', // Local asset path for Apple
            ),
            const SizedBox(height: 15),
            _buildSocialLoginButton(
              context,
              'Continue with Google',
              'https://img.icons8.com/?size=100&id=V5cGWnc9R4xj&format=png&color=000000', // Local asset path for Google
            ),
            const SizedBox(height: 30),
            const Center(
              child: Text(
                'OR',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            const SizedBox(height: 30),
            _buildEmailInputField(
              label: 'Work Email *',
              hintText: 'hello@company.com',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Handle "Continue with Email"
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Continue with Email',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Spacer(), // Pushes content to the top
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Align(
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    text: 'Already have an account ',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                    children: [
                      TextSpan(
                        text: 'Login',
                        style: const TextStyle(
                          color: Color(0xFF5DD96B), // Greenish color
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          decoration:
                              TextDecoration
                                  .underline, // Add underline for link
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                // Handle "Login" tap, e.g., navigate to LoginScreen
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
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
    );
  }

  Widget _buildSocialLoginButton(
    BuildContext context,
    String text,
    String assetPath,
  ) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        onPressed: () {
          // Handle social login
        },
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.grey),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              // Using Image.asset for local files
              assetPath,
              height: 24,
              width: 24,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailInputField({
    required String label,
    required String hintText,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          keyboardType: keyboardType,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            filled: true,
            fillColor: const Color(0xFF1E1E1E), // Darker input field background
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none, // No border
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Color(0xFF5DD96B),
              ), // Highlight border on focus
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
          ),
        ),
      ],
    );
  }
}
