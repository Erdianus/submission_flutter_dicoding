import 'package:flutter/material.dart';
import 'home_page.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              "DAFTAR NAMA ANDA TERLEBIH DAHULU",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Nama anda',
                labelText: 'Nama',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
