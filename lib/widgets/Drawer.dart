import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lms/screens/About.dart';
import 'package:lms/screens/Archives.dart';
import 'package:lms/screens/Attendance.dart';
import 'package:lms/screens/ChangePassword.dart';
import 'package:lms/screens/Course.dart';
import 'package:lms/screens/Lesson.dart';
import 'package:lms/screens/Profile.dart';
import 'package:lms/screens/Recordings.dart';
import 'package:lms/screens/StdPassword.dart';
import 'package:lms/screens/StdProfile.dart';
import 'package:lms/screens/StdRecording.dart';

class StudentDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AppBar(
              backgroundColor: Colors.white,
              leading: Icon(
                Icons.home,
                size: 28,
                color: Colors.indigo,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: Colors.indigo,
                ),
                textAlign: TextAlign.start,
              ),
              automaticallyImplyLeading: false,
            ),
            ExpansionTile(
                textColor: Colors.indigo,
                iconColor: Colors.indigo,
                leading: Icon(
                  FontAwesomeIcons.book,
                  size: 24,
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_left,
                  size: 22,
                ),
                title: Text(
                  'My Courses',
                  style: TextStyle(fontSize: 18),
                ),
                children: [
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.bookOpen,
                      size: 24,
                    ),
                    title: Text(
                      'MPOB7113',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Course()));
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.bookOpen,
                      size: 24,
                    ),
                    title: Text(
                      'MPIB7103',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Course()));
                    },
                  )
                ]),
            ListTile(
              leading: Icon(
                Icons.video_library,
                size: 26,
              ),
              title: Text(
                'Recordings',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Studentrecording()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.security,
                size: 26,
              ),
              title: Text(
                'Change Password',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Stdpassword()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.circle_outlined,
                size: 26,
              ),
              title: Text(
                'User Manual',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                size: 26,
              ),
              title: Text(
                'My Profile',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Studentprofile()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
