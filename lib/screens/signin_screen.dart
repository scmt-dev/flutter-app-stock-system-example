import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(
                    label: Text('Email'),
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email)
                  ),
                ),
                const SizedBox(height: 10),
                const TextField(
                  decoration: InputDecoration(
                    label: Text('Password'),
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Sign In'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
