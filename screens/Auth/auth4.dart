import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart'; // For TapGestureRecognizer

class Auth4Screen extends StatefulWidget {
  const Auth4Screen({super.key});

  @override
  State<Auth4Screen> createState() => _Auth4ScreenState();
}

class _Auth4ScreenState extends State<Auth4Screen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    // Define the primary red color
    const Color primaryRed = Color(0xFFE53935); // A typical bright red

    return Scaffold(
      backgroundColor: primaryRed, // Red background for the top half
      body: Column(
        children: [
          // Top Red Section
          Expanded(
            flex: 2, // Takes up more space
            child: Padding(
              padding: const EdgeInsets.fromLTRB(28.0, 80.0, 28.0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 50), // Spacing
                  _buildInputField(
                    label: 'Email',
                    hintText: 'Prajapati.Mayank31@gmail.com',
                    keyboardType: TextInputType.emailAddress,
                    labelColor: Colors.white,
                    hintColor: Colors.white70,
                    textColor: Colors.white,
                    borderColor: Colors.white,
                  ),
                  const SizedBox(height: 20),
                  _buildInputField(
                    label: 'Password',
                    hintText: '**********',
                    obscureText: _obscureText,
                    labelColor: Colors.white,
                    hintColor: Colors.white70,
                    textColor: Colors.white,
                    borderColor: Colors.white,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.white70,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // Handle Forgot Password
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Bottom White Section
          Expanded(
            flex: 1, // Takes up less space than the top
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), // Rounded top corners
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 28.0,
                  vertical: 30.0,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: OutlinedButton(
                              onPressed: () {
                                // Handle Signup
                              },
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.black, // Text color
                                side: const BorderSide(
                                  color: Colors.black,
                                ), // Border color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    25,
                                  ), // Highly rounded
                                ),
                              ),
                              child: const Text(
                                'SIGNUP',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle Login
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.black, // Black background
                                foregroundColor: Colors.white, // White text
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    25,
                                  ), // Highly rounded
                                ),
                              ),
                              child: const Text(
                                'LOGIN',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'or login with',
                      style: TextStyle(color: Colors.black54, fontSize: 14),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildSocialIconButton(
                          'https://img.icons8.com/?size=100&id=V5cGWnc9R4xj&format=png&color=000000',
                          () {
                            // Handle Google login
                          },
                        ),
                        const SizedBox(width: 20),
                        _buildSocialIconButton(
                          'https://img.icons8.com/?size=100&id=118497&format=png&color=000000',
                          () {
                            // Handle Facebook login
                          },
                        ),
                        const SizedBox(width: 20),
                        _buildSocialIconButton(
                          'https://img.icons8.com/?size=100&id=fJp7hepMryiw&format=png&color=000000',
                          () {
                            // Handle Twitter login
                          },
                        ),
                      ],
                    ),
                    const Spacer(), // Pushes the "Don't have an account?" to the bottom
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text.rich(
                        TextSpan(
                          text: 'Don\'t have an account? ',
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                          children: [
                            TextSpan(
                              text: 'SIGN UP',
                              style: TextStyle(
                                color: primaryRed, // Red color for SIGN UP
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                // No underline in the image, so omitting it
                              ),
                              recognizer:
                                  TapGestureRecognizer()
                                    ..onTap = () {
                                      // Navigate to signup screen
                                    },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper for Input Fields (customized for this red background)
  Widget _buildInputField({
    required String label,
    required String hintText,
    TextInputType keyboardType = TextInputType.text,
    bool obscureText = false,
    Widget? suffixIcon,
    Color labelColor = Colors.white,
    Color hintColor = Colors.white70,
    Color textColor = Colors.white,
    Color borderColor = Colors.white,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: labelColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          keyboardType: keyboardType,
          obscureText: obscureText,
          style: TextStyle(color: textColor, fontSize: 16),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: hintColor),
            filled: false, // Not filled, just border below
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: borderColor, width: 1),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: borderColor, width: 2),
            ),
            contentPadding: const EdgeInsets.only(
              bottom: 8,
            ), // Adjust padding for underline style
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }

  // Helper for Social Icon Buttons
  Widget _buildSocialIconButton(String assetPath, VoidCallback onPressed) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10), // Slightly rounded corners
        border: Border.all(color: Colors.grey.shade300), // Light border
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onPressed,
        child: Center(
          child: Image.network(
            assetPath,
            height: 30, // Adjust icon size
            width: 30,
          ),
        ),
      ),
    );
  }
}
