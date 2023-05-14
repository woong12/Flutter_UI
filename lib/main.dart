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
        appBar: AppBar(),
        body: Container(
          height: 150,
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Image.asset('assets/bongocat.png'),
              SizedBox(
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '고양이 팝니다',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Text('금호동 3가'),
                    Text('70000원'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.favorite,
                        ),
                        Text(
                          '4',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
