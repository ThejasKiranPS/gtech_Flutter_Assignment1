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
      return Container(
        margin: EdgeInsets.all(5),
        child: TextButton(
          style: ButtonStyle(
            padding:
                MaterialStateProperty.all(EdgeInsets.fromLTRB(10, 0, 10, 0)),
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
        ),
      );
    }

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width:177,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/profile-compressed.jpg'),
                ),
              ),
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
              height: 2,
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
                style: TextStyle(
                  color: Colors.lightBlue,
                ),
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
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightBlueAccent),
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
              ),
            ),
            Container(
              height: 110,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                myButtons('About Me'),
                myButtons('Social Media'),
                myButtons('Hobbies'),
                myButtons('Experience'),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
