import 'package:flutter/material.dart';
import 'package:widgetbook_demo/widgets/custom_button.dart';
import 'package:widgetbook_demo/widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo or App Name
                const Icon(
                  Icons.developer_mode,
                  size: 100,
                  color: Colors.blue,
                ),
                const SizedBox(height: 50),

                // Welcome Text
                const Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Please sign in to continue',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 50),

                // Email TextField
                CustomTextField(
                  controller: _emailController,
                  hintText: 'Email',
                  prefixIcon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Password TextField
                CustomTextField(
                  controller: _passwordController,
                  hintText: 'Password',
                  prefixIcon: Icons.lock,
                  suffixIcon: _obscurePassword ? Icons.visibility_off : Icons.visibility,
                  obscureText: _obscurePassword,
                  onSuffixIconTap: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),

                // Forgot Password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Forgot Password?', style: TextStyle(color: Colors.blue)),
                  ),
                ),
                const SizedBox(height: 24),

                // Login Button
                CustomButton(
                  text: 'Login',
                  onPressed: () {},
                  backgroundColor: Colors.blue,
                  isLoading: false,
                  icon: Icons.login,
                ),
                const SizedBox(height: 24),

                // Social Login Buttons
                CustomButton(
                  text: 'Continue with Google',
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  textColor: Colors.black87,
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  icon: Icons.g_mobiledata,
                ),
                const SizedBox(height: 12),

                CustomButton(
                  text: 'Continue with Facebook',
                  onPressed: () {},
                  backgroundColor: const Color(0xFF1877F2),
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  icon: Icons.facebook,
                ),

                const SizedBox(height: 24),

                // Sign Up Option
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Sign Up'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
