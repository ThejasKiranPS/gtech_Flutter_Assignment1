import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    Widget myText(String str, {double size: 20}) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
        child: Text(
          str,
          style: TextStyle(
            color: Colors.lightBlue,
            fontSize: size,
          ),
        ),
      );
    }

    Widget myButtons(str) {
      return TextButton(
        style: ButtonStyle(
         padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(10, 40, 10, 40)),
         backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
        ),
        onPressed: null,
        child: Text(
          str,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              child: Image.asset('assets/profile-compressed.jpg'),
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      myText(
                        'Thejas Kiran P S',
                      ),
                      myText(
                        'Learning flutter',
                      ),
                    ])),
            Container(
              height: 3,
              width: double.infinity,
              color: Colors.blue,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 30),
              child: myText('Tagline'),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 60),
              child: Text(
                'Details',
                style: TextStyle(),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 60, right: 60),
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nos.'),
            ),
            Container(
              padding: EdgeInsets.only(right: 30),
              width: double.infinity,
              alignment: Alignment.bottomRight,
              child: TextButton(
                child: Text(
                  'Contact me',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: null,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
              ),
            ),
            Container(
              child: myButtons('About Me'),
            )
          ],
        ),
      ),
    );
  }
}
