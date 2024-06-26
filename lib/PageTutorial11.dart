import 'package:flutter/material.dart';

class PageTutorial11_1 extends StatelessWidget {
  const PageTutorial11_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorial 11-1'),
        automaticallyImplyLeading: false, // Remove the default back arrow
      ),
      body: PageView(
        children: <Widget>[
          Container(
            color: Colors.lightBlue[50],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text('Page 1',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 50, 19, 107))),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Navigate back to the home page
                  },
                  child: const Text('Move to Home page'),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text('Page 2',
                  style: TextStyle(fontSize: 24, color: Colors.white)),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text('Page 3',
                  style: TextStyle(fontSize: 24, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
