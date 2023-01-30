import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    setState(() {
      counter++;
    });
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  void decrease() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // int counter = 0;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: CustomFloatingButtons(
        increaseFunc: increase,
        decreaseFunc: decrease,
        resetFunc: reset,
      ),
      appBar: AppBar(
        title: const Text('Home app counter'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                  style: TextStyle(fontSize: 20, height: 5),
                  'This app is a counter'),
              Text(style: const TextStyle(fontSize: 30), '$counter')
            ]),
      ),
    );
  }
}

class CustomFloatingButtons extends StatelessWidget {
  final Function increaseFunc;
  final Function decreaseFunc;
  final Function resetFunc;

  const CustomFloatingButtons({
    super.key,
    /* Estas funciones no pueden ser nulas por lo que son requeridas */
    required this.increaseFunc,
    required this.decreaseFunc,
    required this.resetFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
            child: const Icon(
              Icons.upload,
            ),
            onPressed: () => increaseFunc()),
        FloatingActionButton(
            child: const Icon(
              Icons.lock_reset,
            ),
            onPressed: () => resetFunc()),
        FloatingActionButton(
            child: const Icon(
              Icons.download_rounded,
            ),
            onPressed: () => decreaseFunc()),
      ],
    );
  }
}
