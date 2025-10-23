import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
bool _showpassword = true;
final TextEditingController _emailcontroller = TextEditingController();
final TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
          Text("Email :"),
          TextField(
            controller: _emailcontroller,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person_2),
              hintText: "email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8)
              )
            ),
          ),
          Text("Kata sandi :"),
          TextField(
            controller: _passwordcontroller,
            obscureText: _showpassword,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _showpassword = !_showpassword;
                  });
                }, 
                icon: Icon(_showpassword ? Icons.remove_red_eye : Icons.visibility_off,
                ),
              ),
              hintText: "Masukkan kata sandi",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),                      
          ],
        ),
      ),
    );
  }
}