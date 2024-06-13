import 'package:flutter/material.dart';

class AnimatedWidgetAlign extends StatelessWidget {
  const AnimatedWidgetAlign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Animatedd(),
    );
  }
}

class Animatedd extends StatefulWidget {
  const Animatedd({Key? key}) : super(key: key);

  @override
  State<Animatedd> createState() => _AnimateddState();
}

class _AnimateddState extends State<Animatedd> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Center(
        child: Container(
          width: double.infinity,
          height: 250.0,
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
