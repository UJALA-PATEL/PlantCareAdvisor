import 'package:flutter/material.dart';
import 'SignUpScreen.dart';
import 'DashBoardScreen.dart'; // Dashboard after successful login

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _loginWithEmail() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DashboardPage()),
      );
    }
  }

  void _loginWithGoogle() {
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 60), // Space from top

                // Centered "Login" Heading
                Text(
                  "Login",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40), // Space below heading

                // Email Field
                Align(alignment: Alignment.centerLeft, child: Text("Email", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                SizedBox(height: 8),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email is required.";
                    }
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$').hasMatch(value)) {
                      return "Enter a valid email.";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),

                // Password Field
                Align(alignment: Alignment.centerLeft, child: Text("Password", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                SizedBox(height: 8),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password is required.";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30),

                // Login Button
                ElevatedButton(
                  onPressed: _loginWithEmail,
                  child: Text("Login with Email"),
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

                // Google Login Button
                ElevatedButton(
                  onPressed: _loginWithGoogle,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/google_logo.jpg", height: 24),
                      SizedBox(width: 10),
                      Text("Login with Google"),
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

                // Sign Up Link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                      },
                      child: Text("Sign Up"),
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
