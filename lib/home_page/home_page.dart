import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ana Sayfa',
          style: TextStyle(color: Colors.white),
        ), // AppBar başlığı
        backgroundColor: Colors.deepPurple.shade400, // Arkaplan rengi
      ),
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Ana Sayfa")],
        ),
      ),
    );
  }
}
