// main.dart
import 'package:flutter/material.dart';
import 'package:mobilelab2cet121/screen/addform.dart';
import 'package:mobilelab2cet121/screen/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(), // เรียก widget แยก
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CET App my 121"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: const Item(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add, size: 40, color: Colors.white),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddForm()),
          );
        },
      ),
    );
  }
}
