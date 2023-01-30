import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // int counter = 0;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {},
      ),
      appBar: AppBar(
        title: const Text('Home app counter'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Text(
                  style: TextStyle(fontSize: 20, height: 5),
                  'This app is a counter'),
              Text(style: TextStyle(fontSize: 30), '10')
            ]),
      ),
    );
  }
}
