import 'package:flutter/material.dart';
import 'package:lms/screens/Archives.dart';
import 'package:lms/screens/ChangePassword.dart';
import 'package:lms/screens/Conference.dart';
import 'package:lms/screens/Cousecreate.dart';
import 'package:lms/screens/Profile.dart';
import 'package:lms/screens/Recordings.dart';
import 'package:lms/screens/Report.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
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
            iconColor: Colors.indigo,
            textColor: Colors.indigo,
            leading: Icon(
              Icons.add_box,
              size: 26,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_left,
              size: 22,
            ),
            title: Text(
              'Course Creation',
              style: TextStyle(fontSize: 18),
            ),
            children: [
              ListTile(
                leading: Icon(
                  Icons.circle_outlined,
                  size: 18,
                ),
                title: Text(
                  'Course Creation',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Coursecreate()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.circle_outlined,
                  size: 18,
                ),
                title: Text(
                  'Assignment Archives',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Archives()));
                },
              ),
            ],
          ),
          ExpansionTile(
            iconColor: Colors.indigo,
            textColor: Colors.indigo,
            leading: Icon(
              Icons.assessment,
              size: 26,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_left,
              size: 22,
            ),
            title: Text(
              'Reports',
              style: TextStyle(fontSize: 18),
            ),
            children: [
              ListTile(
                leading: Icon(
                  Icons.circle_outlined,
                  size: 18,
                ),
                title: Text(
                  'E1 Report',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Report()));
                },
              ),
            ],
          ),
          ExpansionTile(
            iconColor: Colors.indigo,
            textColor: Colors.indigo,
            leading: Icon(
              Icons.video_call,
              size: 26,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_left,
              size: 22,
            ),
            title: Text(
              'Video Conference',
              style: TextStyle(fontSize: 18),
            ),
            children: [
              ListTile(
                leading: Icon(
                  Icons.circle_outlined,
                  size: 20,
                ),
                title: Text(
                  'Initiate Class',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Conference()));
                },
              ),
            ],
          ),
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
                      builder: (BuildContext context) => Recording()));
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
                      builder: (BuildContext context) => ChangePassword()));
            },
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
                      builder: (BuildContext context) => Profile()));
            },
          ),
        ],
      ),
    );
  }
}
