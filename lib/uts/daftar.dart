import 'package:flutter/material.dart';

class DaftarPage extends StatefulWidget {
  const DaftarPage({super.key});

  @override
  State<DaftarPage> createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
bool _showpassword = true;
final TextEditingController _namacontroller = TextEditingController();
final TextEditingController _passwordcontroller = TextEditingController();
final TextEditingController _alamatcontroller = TextEditingController();
final TextEditingController _confirmpasswordcontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
          Text("Nama Lengkap"),
          TextField(
            controller: _namacontroller,
            decoration: InputDecoration(
              hintText: "Nama Lengkap",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8)
              )
            ),
          ),
          Text("Alamat"),
          TextField(
            controller: _alamatcontroller,
            decoration: InputDecoration(
              hintText: "Alamat",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8)
              )
            ),
          ),
          Text("Password*"),
          TextField(
            controller: _passwordcontroller,
            obscureText: _showpassword,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _showpassword = !_showpassword;
                  });
                }, 
                icon: Icon(_showpassword ? Icons.remove_red_eye : Icons.visibility_off,
                ),
              ),
              hintText: "Min 8 characters",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          Text("Konfirmasi Password*"),
          TextField(
            controller: _confirmpasswordcontroller,
            obscureText: _showpassword,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _showpassword = !_showpassword;
                  });
                }, 
                icon: Icon(_showpassword ? Icons.remove_red_eye : Icons.visibility_off,
                ),
              ),
              hintText: "Min 8 characters",
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