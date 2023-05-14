import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(
              Icons.star,
            ),
          ],
          title: Text(
            '앱임',
          ),
          leading: Icon(
            Icons.star,
          ),
        ),
        body: SizedBox(
            child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'btn',
          ),
        )),
      ),
    );
  }
}
