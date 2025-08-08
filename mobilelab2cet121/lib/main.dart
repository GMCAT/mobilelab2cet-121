import 'package:flutter/material.dart';
// import 'package:mobilelab2cet121/screen/home.dart'; // ตรวจสอบว่า path นี้ถูกต้อง
import 'package:mobilelab2cet121/screen/item.dart';

void main() {
  // 3. เรียกใช้ Widget หลักของแอป
  runApp(const MyApp());
}

// 1. สร้าง StatelessWidget ใหม่ชื่อ MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // 2. ย้าย MaterialApp มาไว้ในเมธอด build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("CET App my 121"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: const Item(), //body: const Home(),
      ),
    );
  }
}
