import 'package:flutter/material.dart';
import 'login_page.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LogInPage()),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.pink, fontSize: 16),
                ),
              ),
            ),
            Text(
              'Sign Up',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
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
            Row(
              children: [
                Checkbox(value: false, onChanged: (bool? value) {}),
                Expanded(
                  child: Text(
                    'I would like to receive your newsletter and other promotional information.',
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogInPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
              child: Text('Sign Up'),
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
