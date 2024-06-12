import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/aboutlisttile.dart';

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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
