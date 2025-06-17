import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Auth9Screen extends StatelessWidget {
  const Auth9Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Text(
                'Welcome back to',
                style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Caret^',
                style: GoogleFonts.inter(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF2962FF), // Blue color
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Sign in to access your package history and get\nreal-time updates on all of your pages.',
                style: GoogleFonts.inter(fontSize: 14, color: Colors.grey[600]),
              ),
              const SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your mail',
                  prefixIcon: const Icon(Icons.email_outlined),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: const Icon(Icons.visibility_off),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (_) {}),
                      Text('Remember me', style: GoogleFonts.inter()),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password',
                      style: GoogleFonts.inter(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2962FF),
                  ),
                  child: Text(
                    'Next',
                    style: GoogleFonts.inter(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  const Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text('or with', style: GoogleFonts.inter()),
                  ),
                  const Expanded(child: Divider()),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: OutlinedButton.icon(
                  icon: Image.network(
                    'https://img.icons8.com/?size=100&id=V5cGWnc9R4xj&format=png&color=000000',
                    height: 20,
                  ),
                  label: Text('Google', style: GoogleFonts.inter(fontSize: 16)),
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an account?", style: GoogleFonts.inter()),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Create new one',
                      style: GoogleFonts.inter(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
