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
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController studentcontroller = new TextEditingController();

  int stnum = 0;
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Row(
          children: [
            Text(
              'Name - $name',
              style: TextStyle(fontSize: 25.0, color: Colors.black),
            ),
            Spacer(),
          ],
        ),
        Row(
          children: [
            Text(
              'Student Number - $stnum',
              style: TextStyle(fontSize: 25.0, color: Colors.black),
            ),
            Spacer(),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          children: [
            SizedBox(
              height: 70,
              width: 300, // Set the width of the SizedBox to 300 pixels
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: namecontroller,
                  onChanged: (value) {
                    //email = value;
                    name = value;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.summarize_outlined,
                    ),
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),

        ///student numer
        Row(
          children: [
            SizedBox(
              height: 70,
              width: 300, // Set the width of the SizedBox to 300 pixels
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: studentcontroller,
                  onChanged: (value) {
                    //email = value;
                    stnum = int.parse(value);
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.summarize_outlined,
                    ),
                    labelText: 'Student Number ',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    ));
  }
}
