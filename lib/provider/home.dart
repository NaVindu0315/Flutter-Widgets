import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [Text('Data')],
            ),
            Row(
              children: [ElevatedButton(onPressed: () {}, child: Text('addd'))],
            ),
          ],
        ),
      ),
    );
  }
}
