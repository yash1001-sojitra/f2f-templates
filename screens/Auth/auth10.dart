import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Auth10Screen extends StatelessWidget {
  const Auth10Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E1C0F),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.arrow_back, color: Colors.white),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Icon(
                    Icons.attach_money,
                    color: Color(0xFF00FF66),
                    size: 30,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "CashPay",
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF00FF66),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                "Sign up to your account",
                style: GoogleFonts.poppins(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 4),
              Text(
                "Welcome back! Select method to sign up",
                style: GoogleFonts.poppins(fontSize: 14, color: Colors.white70),
              ),
              const SizedBox(height: 24),
              _buildTextField("Enter Full Name", Icons.person),
              const SizedBox(height: 16),
              _buildTextField("Enter Your Email", Icons.email),
              const SizedBox(height: 16),
              _buildTextField(
                "Enter Your Password",
                Icons.lock,
                isPassword: true,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Icon(
                    Icons.radio_button_unchecked,
                    color: Colors.white70,
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "I agree with the ",
                            style: GoogleFonts.poppins(color: Colors.white70),
                          ),
                          TextSpan(
                            text: "Terms and Conditions",
                            style: GoogleFonts.poppins(
                              color: Colors.greenAccent,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: " and ",
                            style: GoogleFonts.poppins(color: Colors.white70),
                          ),
                          TextSpan(
                            text: "Privacy Policy",
                            style: GoogleFonts.poppins(
                              color: Colors.greenAccent,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00FF66),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: const Text("Create Account"),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: const [
                  Expanded(child: Divider(color: Colors.white30)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Or Continue With",
                      style: TextStyle(color: Colors.white54),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.white30)),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  _buildSocialButton("Google", Icons.g_mobiledata),
                  const SizedBox(width: 16),
                  _buildSocialButton("Apple", Icons.apple),
                ],
              ),
              const Spacer(),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Have an account? Log in",
                    style: GoogleFonts.poppins(color: Colors.greenAccent),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
    String hint,
    IconData icon, {
    bool isPassword = false,
  }) {
    return TextField(
      obscureText: isPassword,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFF1F2D1F),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white54),
        prefixIcon: Icon(icon, color: Colors.white70),
        suffixIcon:
            isPassword
                ? const Icon(Icons.visibility_off, color: Colors.white54)
                : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildSocialButton(String label, IconData icon) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1F2D1F),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 8),
            Text(label, style: const TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
