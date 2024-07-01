import 'package:flutter/material.dart';

class Stepper_Wid extends StatefulWidget {
  const Stepper_Wid({Key? key}) : super(key: key);

  @override
  State<Stepper_Wid> createState() => _Stepper_WidState();
}

class _Stepper_WidState extends State<Stepper_Wid> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
          ),
          leading: null,
          actions: <Widget>[],
          title: Text(
            '                 AppBar',
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Color(0xff237ACC),
        ),
        body: Stepper(
          steps: [],
        ),
      ),
    );
  }
}

List<Step> steps() => [
      const Step(
        title: Text('Personal'),
        content: Column(),
      ),
      const Step(
        title: Text('Work'),
        content: Column(),
      ),
      const Step(
        title: Text('Complete'),
        content: Column(),
      )
    ];
