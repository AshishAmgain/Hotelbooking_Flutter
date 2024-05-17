import 'package:flutter/material.dart';
import 'package:hotel_booking/screen/dashboard_screen.dart';
import 'package:hotel_booking/screen/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Hide the app bar
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.red, // Set text color to red
                    fontSize: 24.0, // Increase font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Implement login functionality here
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashboardScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Set button color to green
                    padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 40), // Increase button padding
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18), // Increase button text size
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    //DashBoardScreen
                  },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                    },
                    child: Text(
                      "Don't have an account? Register",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
