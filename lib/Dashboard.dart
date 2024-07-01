import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/NavBar.dart';
import 'package:flutter_widgets/widgets/Stepper_page.dart';
import 'package:flutter_widgets/widgets/aboutlisttile.dart';
import 'package:flutter_widgets/widgets/circular.dart';

import 'firebase/realtime.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dash(),
    );
  }
}

class Dash extends StatefulWidget {
  const Dash({Key? key}) : super(key: key);

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {
  int currentStep = 0;
  bool get isFirstStep => currentStep == 0;
  bool get isLastStep => currentStep == steps().length - 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // preferredSize: Size.fromHeight(kToolbarHeight + 20),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Builder(builder: (context) {
              return Icon(
                Icons.widgets,
                color: Colors.white,
              );
            }),
            onPressed: () {
              //Navigator.pop(context);
            },
          ),

          title: Text(
            'Widgets',
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: IconThemeData(color: Colors.white),

          //centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),

                ///first row
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AboutDialog(
                              applicationIcon: FlutterLogo(),
                              applicationLegalese: 'legalese',
                              applicationName: 'Flutter Widgets',
                              applicationVersion: '1.0',
                              children: [Text('Fltter widgets')],
                            ),
                          );
                        },
                        child: Text('About Dialog')),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutTile()),
                          );
                        },
                        child: Text('About List tile')),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutTile()),
                          );
                        },
                        child: Text('Animated Align')),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Circlur()),
                          );
                        },
                        child: Text('Circular Indicator')),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NaVBarr()),
                          );
                        },
                        child: Text('Navigation Bar')),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Realtime()),
                          );
                        },
                        child: Text('Real Time')),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Realtime()),
                          );
                        },
                        child: Text('Provider')),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Stepper_Wid()),
                          );
                        },
                        child: Text('Stepper')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
