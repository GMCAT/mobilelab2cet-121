import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 234, 136, 136),
            ),
            onPressed: () {},
            child: const Text(
              "Click Me",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          FilledButton(
            style: FilledButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 213, 136, 234),
            ),
            onPressed: () {},
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Color.fromARGB(255, 136, 180, 234)),
              backgroundColor: Colors.yellowAccent,
              foregroundColor: const Color.fromARGB(255, 136, 180, 234),
            ),
            onPressed: () {},
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 196, 216, 67),
            ),
            onPressed: () {},
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
