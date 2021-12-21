import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('Summary Page'),
          Container(
              height: 400,
              child: ListView(children: [
                Container(
                    height: 200,
                    child: Column(children: [
                      FittedBox(child: Image.network(
                        'https://fakeimg.pl/300/',
                      ), fit: BoxFit.cover),
                      Text('Header text here'),
                      Text('Body text here')
                    ]))
              ]))
        ],
      ),
    );
  }
}
