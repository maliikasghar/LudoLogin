import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/Background.png'), // Ensure this path is correct
                fit: BoxFit.cover, // Make the image cover the entire background
              ),
            ),
          ),
          // Center the form in the screen
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Image at the top (outside the login container)
                Image.asset(
                  'lib/assets/ludoicon.png', // Replace with your asset path
                  height: 250, // Set the height as needed
                  width: 250, // Set the width as needed
                ),
                // Remove the SizedBox entirely to eliminate space
                // Container for the login form
                Container(
                  padding: EdgeInsets.all(10),
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.amberAccent, width: 2),
                    // color: Colors.white.withOpacity(0.1), // Optional: Add a background color for the container
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Row with an icon and the "Login" text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.lock, // Choose an icon (e.g., lock)
                            color: Colors.white, // Icon color
                          ),
                          SizedBox(width: 10), // Space between the icon and text
                          Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white, // White text for "Login"
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            // Email TextFormField
                            TextFormField(
                              style: TextStyle(color: Colors.white), // White text color
                              decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(color: Colors.white), // White label
                                filled: true, // Fill the background
                                fillColor: Colors.white.withOpacity(0.3), // Semi-transparent white background
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 20),
                            // Password TextFormField
                            TextFormField(
                              obscureText: true,
                              style: TextStyle(color: Colors.white), // White text color
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Colors.white), // White label
                                filled: true, // Fill the background
                                fillColor: Colors.white.withOpacity(0.3), // Semi-transparent white background
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 20),
                            // Login Button
                            ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // Handle login logic
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10.0,
                                  horizontal: 20.0,
                                ),
                                child: Text(
                                  'Login',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amberAccent, // Change button color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10), // Rounded corners
                                ),
                              ),
                            ),
                            SizedBox(height: 10), // Space if needed
                            // Forgot Password and Sign Up Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    // Handle "Forgot Password" logic
                                  },
                                  child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(color: Colors.white), // White text for Forgot Password
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Handle "Sign Up" logic
                                  },
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(color: Colors.white), // White text for Sign Up
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
