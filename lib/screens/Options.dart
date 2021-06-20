import 'package:flutter/material.dart';
import 'package:lms/screens/Cousecreate.dart';
import 'package:lms/screens/Tforum.dart';
import 'package:lms/widgets/AppDrawer.dart';

import 'Lessonplan.dart';
import 'Welcome.dart';
import 'Preview.dart';
import 'Tassignment.dart';

class Options extends StatefulWidget {
  const Options({Key? key}) : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            drawer: AppDrawer(),
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.indigo),
              backgroundColor: Colors.white,
              title: Text('Dashboard', style: TextStyle(color: Colors.indigo)),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Coursecreate()));
                },
              ),
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
                      isScrollable: true,
                      indicatorColor: Colors.indigo,
                      tabs: [
                        Tab(
                          child: Text('Lesson Plan',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Tab(
                          child: Text('Assignment',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Tab(
                          child: Text('Preview',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Tab(
                          child: Text('Forum',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.w500)),
                        )
                      ]),
                  preferredSize: Size.fromHeight(30.0)),
            ),
            body: TabBarView(
              children: <Widget>[
                Lessonplan(),
                Tassignment(),
                Preview(),
                Tforum(),
              ],
            )));
  }
}
