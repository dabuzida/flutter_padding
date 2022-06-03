import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Padding',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Padding'),
          elevation: 0,
          foregroundColor: Colors.yellowAccent,
          // foregroundColor: Colors.cyanAccent,
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        backgroundColor: Colors.blueGrey[100],
        body: const AAA(),
      ),
    );
  }
}

class AAA extends StatelessWidget {
  const AAA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1500,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purpleAccent, width: 2),
      ),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.indigo)),
                padding: EdgeInsets.symmetric(horizontal: 100),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red[500]!,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: TextButton(onPressed: () {}, child: Text('data')),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 100),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _padding() {
    return Text('data');
  }
}
