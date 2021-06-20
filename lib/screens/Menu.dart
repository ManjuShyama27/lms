import 'package:flutter/material.dart';
import 'package:lms/screens/Welcome.dart';
import 'package:lms/screens/Options.dart';
import 'package:lms/screens/Quizbank.dart';
import 'package:lms/screens/Startquiz.dart';
import 'package:lms/screens/Topicresources.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Options()));
                },
              ),
              iconTheme: IconThemeData(color: Colors.indigo),
              backgroundColor: Colors.white,
              title: Text('Dashboard', style: TextStyle(color: Colors.indigo)),
              actions: <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 25.0),
                    child: GestureDetector(
                      onTap: null,
                      child: Icon(
                        Icons.notifications,
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Welcome()));
                      },
                      child: Icon(
                        Icons.logout,
                      ),
                    )),
              ],
              bottom: PreferredSize(
                  child: TabBar(
                      isScrollable: false,
                      indicatorColor: Colors.indigo,
                      tabs: [
                        Tab(
                          child: Text('Topic',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Tab(
                          child: Text('Quiz Bank',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Tab(
                          child: Text('Start Quiz',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ]),
                  preferredSize: Size.fromHeight(30.0)),
            ),
            body: TabBarView(
              children: <Widget>[
                Topicresources(),
                Quizbank(),
                Startquiz(),
              ],
            )));
  }
}
