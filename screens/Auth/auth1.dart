import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Auth1Screen extends StatefulWidget {
  const Auth1Screen({super.key});

  @override
  State<Auth1Screen> createState() => _Auth1ScreenState();
}

class _Auth1ScreenState extends State<Auth1Screen> {
  bool _obscureText = true;

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
            // Handle back button press
            // Navigator.of(context).pop();
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
              'Log in to Scale',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            _buildInputField(
              label: 'Email',
              hintText: 'hello@company.com',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            _buildInputField(
              label: 'Password',
              hintText: 'Your password',
              obscureText: _obscureText,
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ),
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Handle forgot password
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color(0xFF5DD96B), // A greenish color from the image
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Handle login
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Center(
              child: Text(
                'OR',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            const SizedBox(height: 30),
            _buildSocialLoginButton(
              context,
              'Continue with Apple',
              'https://img.icons8.com/?size=100&id=30840&format=png&color=FFFFFF', // Placeholder URL for Apple
            ),
            const SizedBox(height: 15),
            _buildSocialLoginButton(
              context,
              'Continue with Google',
              'https://img.icons8.com/?size=100&id=V5cGWnc9R4xj&format=png&color=000000', // Placeholder URL for Google
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text.rich(
                TextSpan(
                  text:
                      'Scale uses cookies for analytics personalized content and ads. By using Scale\'s services you agree to this use of cookies. ',
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                  children: [
                    TextSpan(
                      text: 'Learn more',
                      style: const TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                              // Handle Learn more tap
                            },
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField({
    required String label,
    required String hintText,
    TextInputType keyboardType = TextInputType.text,
    bool obscureText = false,
    Widget? suffixIcon,
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
          obscureText: obscureText,
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
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }

  Widget _buildSocialLoginButton(
    BuildContext context,
    String text,
    String imageUrl,
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
              imageUrl,
              height: 24, // Adjust size as needed
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
}
