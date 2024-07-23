import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // Unique GlobalKey for LoginPage
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            '../assets/images/logo.png', // Ensure this path is correct
            width: 200,
            height: 50,
            fit: BoxFit.contain,
          ),
        ),
        // title: Text('Login'),
        backgroundColor: const Color.fromARGB(255, 187, 187, 187),
      ),
      body: SingleChildScrollView(
        // Added to handle overflow in case of smaller screens
        child: Column(
          children: <Widget>[
            Image.network(
              '../assets/images/headerall.jpg', // Replace with your image URL
              width: double.infinity,
              height: 200.0, // Adjust height as needed
              fit: BoxFit.cover,
            ),
            Padding(
              padding:
                  const EdgeInsets.all(16.0), // Add padding around the form
              child: Form(
                key: _loginFormKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Username'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Password'),
                      obscureText: true,
                    ),
                    SizedBox(height: 20), // Add some spacing before the button
                    ElevatedButton(
                      onPressed: () {
                        if (_loginFormKey.currentState?.validate() ?? false) {
                          // Process data.
                        }
                      },
                      child: Text('Login'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
