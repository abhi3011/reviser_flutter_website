import 'package:flutter/material.dart';
import 'package:flutter_website/constants/pallete.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'For Students',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final homeContainerKey = new GlobalKey();
  final missionContainerKey = new GlobalKey();
  final aboutUsContainerKey = new GlobalKey();
  final contactContainerKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: primaryHighlight,
            height: 60,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 50,
                  child: Image(image: AssetImage('images/logo.jpg')),
                ),
                Spacer(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        12.0,
                        0.0,
                        12.0,
                        0.0,
                      ),
                      child: InkWell(
                        child: Container(
                          child: Text('Home'),
                        ),
                        onTap: () {
                          Scrollable.ensureVisible(homeContainerKey.currentContext);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        12.0,
                        0.0,
                        12.0,
                        0.0,
                      ),
                      child: InkWell(
                        child: Container(
                          child: Text('Mission'),
                        ),
                        onTap: () {
                          Scrollable.ensureVisible(missionContainerKey.currentContext);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        12.0,
                        0.0,
                        12.0,
                        0.0,
                      ),
                      child: InkWell(
                        child: Container(
                          child: Text('About us'),
                        ),
                        onTap: () {
                          Scrollable.ensureVisible(aboutUsContainerKey.currentContext);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        12.0,
                        0.0,
                        12.0,
                        0.0,
                      ),
                      child: InkWell(
                        child: Container(
                          child: Text('Contact'),
                        ),
                        onTap: () {
                          Scrollable.ensureVisible(contactContainerKey.currentContext);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  key: homeContainerKey,
                  decoration: BoxDecoration(color: primaryDarkest),
                  height: 550,
                ),
                Container(
                  key: missionContainerKey,
                  decoration: BoxDecoration(color: primaryTextColor),
                  height: 550,
                ),
                Container(
                  key: aboutUsContainerKey,
                  decoration: BoxDecoration(color: primaryHighlight),
                  height: 550,
                ),
                Container(
                  key: contactContainerKey,
                  decoration: BoxDecoration(color: todoColour4),
                  height: 550,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
