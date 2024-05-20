import 'package:flutter/material.dart';
import 'PageTutorial11.dart'; // Import the new file
import 'PageTutorial11_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ABP Week 11',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Profile Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
          color: Colors.green[100],
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Muhammad Ilham Yushronni',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Text(
                  'NIM: 1301213447',
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 50, 19, 107)),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PageTutorial11_1()),
                    );
                  },
                  child: const Text('Move to Tutorial 11-1'),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Tutorial11_2Page()),
                    );
                  },
                  child: const Text('Move to Tutorial 11-2'),
                ),
              ],
            ),
          )),
    );
  }
}
