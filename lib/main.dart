import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Hello Flutter World',
      home: HelloHomePage(),
    );
  }
}

class HelloHomePage extends StatelessWidget {
  const HelloHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: null, 
            icon: Icon(Icons.search),
            tooltip: 'Search',
          ),
        ],
        title: const Text('Hello Flutter World'),
        leading: const IconButton(
          onPressed: null, 
          icon: Icon(Icons.menu),
          tooltip: 'Navigation',
        ),
      ),
      body: HelloWidget(),
    );
  }
}

class HelloWidget extends StatelessWidget {
  const HelloWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      constraints: BoxConstraints.expand(),
      child: Column(
        children: [
          const Text(
            'Hello, ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40.0,
            ),
          ),
          const Text(
            'World!',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 60.0,
            ),
          ),          
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}