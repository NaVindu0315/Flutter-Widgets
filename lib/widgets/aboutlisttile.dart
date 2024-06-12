import 'package:flutter/material.dart';

class AboutTile extends StatefulWidget {
  const AboutTile({Key? key}) : super(key: key);

  @override
  State<AboutTile> createState() => _AboutTileState();
}

class _AboutTileState extends State<AboutTile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AboutListTile(
            icon: Icon(Icons.info),
            applicationIcon: FlutterLogo(),
            applicationLegalese: 'Legalese',
            applicationName: 'Flutter Widgets',
            applicationVersion: '1.0',
            aboutBoxChildren: [
              Text('Flutter Widgets'),
            ],
          ),
        ),
      ),
    );
  }
}
