import 'package:flutter/material.dart';

class Realtime extends StatelessWidget {
  const Realtime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RealData(),
    );
  }
}

class RealData extends StatefulWidget {
  const RealData({Key? key}) : super(key: key);

  @override
  State<RealData> createState() => _RealDataState();
}

class _RealDataState extends State<RealData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Row(
            children: [
              Spacer(),
              Center(
                child: TextField(
                  //  controller: _controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your text',
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
