import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<LoginScreen> {
  bool isLoggedIn = false;

  void _changeIcon() {
    setState(() {
      isLoggedIn = !isLoggedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  isLoggedIn
                      ? Icon(
                          Icons.login,
                          size: 100,
                        )
                      : Icon(
                          Icons.lock_outline,
                          size: 100,
                        ),
                  SizedBox(height: 16),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {
                        _changeIcon();
                      },
                      child: Text(isLoggedIn ? 'Logged in' : 'Login'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          fixedSize: const Size(300, 50)),
                    ),
                    SizedBox(height: 50),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          isLoggedIn
                              ? Image.asset(
                                  'images/insta.png',
                                  height: 100,
                                  width: 40,
                                )
                              : Image.asset(
                                  'images/meta1.png',
                                  height: 100,
                                  width: 100,
                                ),
                          isLoggedIn
                              ? Image.asset(
                                  'images/meta1.png',
                                  height: 100,
                                  width: 100,
                                )
                              : Image.asset(
                                  'images/insta.png',
                                  height: 100,
                                  width: 40,
                                ),
                        ],
                      ),
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
