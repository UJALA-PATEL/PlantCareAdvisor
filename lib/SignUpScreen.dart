import 'package:flutter/material.dart';
import 'DashBoardScreen.dart';
import 'login_file.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  void _signUpWithEmail() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => DashboardPage()),
    );
  }

  void _signUpWithGoogle() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => DashboardPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 60), // Space from top

                // Centered "Sign Up" Heading
                Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40), // Space below heading

                // Email field
                Align(alignment: Alignment.centerLeft, child: Text("Email", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                SizedBox(height: 8),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(height: 16),

                // Password field
                Align(alignment: Alignment.centerLeft, child: Text("Password", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                SizedBox(height: 8),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(height: 16),

                // Confirm Password field
                Align(alignment: Alignment.centerLeft, child: Text("Confirm Password", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                SizedBox(height: 8),
                TextField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Confirm your password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(height: 30),

                // Sign-Up button
                ElevatedButton(
                  onPressed: _signUpWithEmail,
                  child: Text("Sign Up with Email"),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    minimumSize: Size(double.infinity, 50),
                  ),
                ),
                SizedBox(height: 10),

                // OR Divider
                Row(
                  children: [
                    Expanded(child: Divider(thickness: 1)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("OR"),
                    ),
                    Expanded(child: Divider(thickness: 1)),
                  ],
                ),
                SizedBox(height: 10),

                // Google Sign-Up Button
                ElevatedButton(
                  onPressed: _signUpWithGoogle,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/google_logo.jpg", height: 24),
                      SizedBox(width: 10),
                      Text("Sign Up with Google"),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    minimumSize: Size(double.infinity, 50),
                    side: BorderSide(color: Colors.grey),
                  ),
                ),
                SizedBox(height: 20),

                // Login link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? "),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                      child: Text("Login"),
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
