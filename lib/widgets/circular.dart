import 'package:flutter/material.dart';

class Circlur extends StatelessWidget {
  const Circlur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: indi(),
    );
  }
}

class indi extends StatefulWidget {
  const indi({Key? key}) : super(key: key);

  @override
  State<indi> createState() => _indiState();
}

class _indiState extends State<indi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.black,
          backgroundColor: Colors.red,
          value: 0.50,
        ),
      ),
    );
  }
}
