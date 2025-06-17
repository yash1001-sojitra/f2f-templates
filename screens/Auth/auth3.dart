import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart'; // For TapGestureRecognizer

class Auth3Screen extends StatefulWidget {
  const Auth3Screen({super.key});

  @override
  State<Auth3Screen> createState() => _Auth3ScreenState();
}

class _Auth3ScreenState extends State<Auth3Screen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    const Color primaryPurple = Color(
      0xFF8B5CF6,
    ); // A sample purple from the image
    const Color lightPurple = Color(0xFFC7B1F3); // Lighter purple for elements

    return Scaffold(
      backgroundColor: Colors.white, // White background as per image
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // No shadow for the app bar
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            const SizedBox(height: 50), // Spacing from top
            Image.network(
              'https://img.icons8.com/?size=100&id=tHT8rktpUKCH&format=png&color=000000', // Replace with your actual logo path
              height: 150, // Adjust size as needed
            ),
            const SizedBox(height: 30),
            const Text(
              'Welcome!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'to ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'CRM.io',
                  style: TextStyle(
                    color: primaryPurple, // Use the defined purple color
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            _buildInputField(
              label: 'Phone number',
              hintText: '+98 9039650049',
              keyboardType: TextInputType.phone,
              prefixIcon: const Icon(
                Icons.phone,
                color: lightPurple,
              ), // Phone icon
              suffixIcon: const Icon(
                Icons.call,
                color: lightPurple,
              ), // Call icon
            ),
            const SizedBox(height: 20),
            _buildInputField(
              label: 'Password',
              hintText: '**********',
              obscureText: _obscureText,
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: lightPurple,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  // Handle Login button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      primaryPurple, // Purple background for button
                  foregroundColor: Colors.white, // White text
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // Rounded corners
                  ),
                  elevation: 5, // Subtle shadow for the button
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Handle "I forgot my password"
              },
              child: Text(
                'I forgot my password',
                style: TextStyle(
                  color: primaryPurple, // Purple text
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Spacer(), // Pushes content to the top
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Text.rich(
                TextSpan(
                  text: 'Wanna try our services? ',
                  style: const TextStyle(color: Colors.black54, fontSize: 16),
                  children: [
                    TextSpan(
                      text: 'here you are',
                      style: TextStyle(
                        color: primaryPurple,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                              // Handle "here you are" tap
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
    Widget? prefixIcon,
    Widget? suffixIcon,
  }) {
    // Define the border color for the input fields
    const Color inputBorderColor = Color(
      0xFFC7B1F3,
    ); // Lighter purple from the image

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.black54, // Lighter black for label
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          keyboardType: keyboardType,
          obscureText: obscureText,
          style: const TextStyle(color: Colors.black, fontSize: 18),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
            filled: true,
            fillColor:
                Colors.white, // White background for the input field itself
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15), // Rounded corners
              borderSide: const BorderSide(
                color: inputBorderColor,
                width: 1.5,
              ), // Purple border
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: inputBorderColor, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Color(0xFF8B5CF6),
                width: 2,
              ), // Darker purple on focus
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
