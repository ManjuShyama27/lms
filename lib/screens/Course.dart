import 'package:flutter/material.dart';
import 'package:lms/screens/About.dart';
import 'package:lms/screens/Archives.dart';
import 'package:lms/screens/Gradebook.dart';

import 'package:lms/widgets/Drawer.dart';
import 'Attendance.dart';
import 'Studentforum.dart';
import 'Lesson.dart';
import 'StdAssignment.dart';
import 'Welcome.dart';

class Course extends StatefulWidget {
  const Course({Key? key}) : super(key: key);

  @override
  _CourseState createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
            drawer: StudentDrawer(),
            appBar: AppBar(
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
                      isScrollable: true,
                      indicatorColor: Colors.indigo,
                      tabs: [
                        Tab(
                          child: Text('About',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Tab(
                          child: Text('Lesson',
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
                          child: Text('Gradebook',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Tab(
                          child: Text('Attendance',
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
                About(),
                Lesson(),
                Studentassign(),
                Gradebook(),
                Attendance(),
                Forum(),
              ],
            )));
  }
}
