import 'package:flutter/material.dart';
import 'home_page.dart';

class LogInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _login(BuildContext context) {
    if (emailController.text == 'ardenarjuna28@gmail.com' &&
        passwordController.text == '12345678') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid email or password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Log In',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _login(context),
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
              child: Text('Log In'),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot your password?',
                style: TextStyle(color: Colors.pink),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
