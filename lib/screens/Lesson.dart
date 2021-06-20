import 'package:flutter/material.dart';
import 'package:lms/screens/Learn.dart';
import 'package:lms/screens/Topic.dart';
import 'package:lms/widgets/Drawer.dart';

import 'Welcome.dart';

class Lesson extends StatefulWidget {
  const Lesson({Key? key}) : super(key: key);

  @override
  _LessonState createState() => _LessonState();
}

class _LessonState extends State<Lesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Padding(
        padding:
            const EdgeInsets.only(left: 15.0, top: 20, bottom: 20, right: 15.0),
        child: Text(
          'Subject: Organizations : Behaviour, Structure, Processes [MPOB7113]',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
      ),
      Padding(
          padding: const EdgeInsets.all(10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: <
                  Widget>[
            ExpansionTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                collapsedIconColor: Colors.white,
                collapsedTextColor: Colors.white,
                collapsedBackgroundColor: Colors.indigo,
                backgroundColor: Colors.grey[200],
                leading: Text('1'),
                title: Text('What Is Organizational Behavior?'),
                trailing: Icon(
                  Icons.keyboard_arrow_left,
                  size: 22,
                ),
                children: [
                  ListTile(
                      leading: Text('1'),
                      title: Text(
                        'Topic 1',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: Text('Start'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Topic()));
                        },
                      )),
                  ListTile(
                    leading: Text('2'),
                    title: Text(
                      'Topic 2',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Text('3'),
                    title: Text(
                      'Quiz',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                ]),
            Divider(),
            ExpansionTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                collapsedIconColor: Colors.white,
                collapsedTextColor: Colors.white,
                collapsedBackgroundColor: Colors.indigo,
                backgroundColor: Colors.grey[200],
                leading: Text('2'),
                title: Text('Emotions and Moods'),
                trailing: Icon(
                  Icons.keyboard_arrow_left,
                  size: 22,
                ),
                children: [
                  ListTile(
                      leading: Text('1'),
                      title: Text(
                        'Topic 1',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: Text('Start'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Topic()));
                        },
                      )),
                  ListTile(
                    leading: Text('2'),
                    title: Text(
                      'Topic 2',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Text('3'),
                    title: Text(
                      'Quiz',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                ]),
            Divider(),
            ExpansionTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                collapsedIconColor: Colors.white,
                collapsedTextColor: Colors.white,
                collapsedBackgroundColor: Colors.indigo,
                backgroundColor: Colors.grey[200],
                leading: Text('3'),
                title: Text('Attitudes and Job Satisfaction'),
                trailing: Icon(
                  Icons.keyboard_arrow_left,
                  size: 22,
                ),
                children: [
                  ListTile(
                      leading: Text('1'),
                      title: Text(
                        'Topic 1',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: Text('Start'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Topic()));
                        },
                      )),
                  ListTile(
                    leading: Text('2'),
                    title: Text(
                      'Topic 2',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Text('3'),
                    title: Text(
                      'Quiz',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                ]),
            Divider(),
            ExpansionTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                collapsedIconColor: Colors.white,
                collapsedTextColor: Colors.white,
                collapsedBackgroundColor: Colors.indigo,
                backgroundColor: Colors.grey[200],
                leading: Text('4'),
                title: Text('Diversity in Organizations'),
                trailing: Icon(
                  Icons.keyboard_arrow_left,
                  size: 22,
                ),
                children: [
                  ListTile(
                      leading: Text('1'),
                      title: Text(
                        'Topic 1',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: Text('Start'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Topic()));
                        },
                      )),
                  ListTile(
                    leading: Text('2'),
                    title: Text(
                      'Topic 2',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Text('3'),
                    title: Text(
                      'Quiz',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                ]),
            Divider(),
            ExpansionTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                collapsedIconColor: Colors.white,
                collapsedTextColor: Colors.white,
                collapsedBackgroundColor: Colors.indigo,
                backgroundColor: Colors.grey[200],
                leading: Text('5'),
                title: Text('Communication'),
                trailing: Icon(
                  Icons.keyboard_arrow_left,
                  size: 22,
                ),
                children: [
                  ListTile(
                      leading: Text('1'),
                      title: Text(
                        'Topic 1',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: Text('Start'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Topic()));
                        },
                      )),
                  ListTile(
                    leading: Text('2'),
                    title: Text(
                      'Topic 2',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Text('3'),
                    title: Text(
                      'Quiz',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                ]),
            Divider(),
            ExpansionTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                collapsedIconColor: Colors.white,
                collapsedTextColor: Colors.white,
                collapsedBackgroundColor: Colors.indigo,
                backgroundColor: Colors.grey[200],
                leading: Text('6'),
                title: Text('Understanding Work Terms'),
                trailing: Icon(
                  Icons.keyboard_arrow_left,
                  size: 22,
                ),
                children: [
                  ListTile(
                      leading: Text('1'),
                      title: Text(
                        'Topic 1',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: Text('Start'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Topic()));
                        },
                      )),
                  ListTile(
                    leading: Text('2'),
                    title: Text(
                      'Topic 2',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Text('3'),
                    title: Text(
                      'Quiz',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                ]),
            Divider(),
            ExpansionTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                collapsedIconColor: Colors.white,
                collapsedTextColor: Colors.white,
                collapsedBackgroundColor: Colors.indigo,
                backgroundColor: Colors.grey[200],
                leading: Text('7'),
                title: Text('Organizational Change and Stress Management'),
                trailing: Icon(
                  Icons.keyboard_arrow_left,
                  size: 22,
                ),
                children: [
                  ListTile(
                      leading: Text('1'),
                      title: Text(
                        'Topic 1',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: Text('Start'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Topic()));
                        },
                      )),
                  ListTile(
                    leading: Text('2'),
                    title: Text(
                      'Topic 2',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Text('3'),
                    title: Text(
                      'Quiz',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                ]),
            Divider(),
            ExpansionTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                collapsedIconColor: Colors.white,
                collapsedTextColor: Colors.white,
                collapsedBackgroundColor: Colors.indigo,
                backgroundColor: Colors.grey[200],
                leading: Text('8'),
                title: Text('Motivation Concepts'),
                trailing: Icon(
                  Icons.keyboard_arrow_left,
                  size: 22,
                ),
                children: [
                  ListTile(
                      leading: Text('1'),
                      title: Text(
                        'Topic 1',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: Text('Start'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Topic()));
                        },
                      )),
                  ListTile(
                    leading: Text('2'),
                    title: Text(
                      'Topic 2',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Text('3'),
                    title: Text(
                      'Quiz',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                ]),
            Divider(),
            ExpansionTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                collapsedIconColor: Colors.white,
                collapsedTextColor: Colors.white,
                collapsedBackgroundColor: Colors.indigo,
                backgroundColor: Colors.grey[200],
                leading: Text('9'),
                title: Text('Motivation: From Concepts to Applications'),
                trailing: Icon(
                  Icons.keyboard_arrow_left,
                  size: 22,
                ),
                children: [
                  ListTile(
                      leading: Text('1'),
                      title: Text(
                        'Topic 1',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: Text('Start'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Topic()));
                        },
                      )),
                  ListTile(
                    leading: Text('2'),
                    title: Text(
                      'Topic 2',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Text('3'),
                    title: Text(
                      'Quiz',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                ]),
            Divider(),
            ExpansionTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                collapsedIconColor: Colors.white,
                collapsedTextColor: Colors.white,
                collapsedBackgroundColor: Colors.indigo,
                backgroundColor: Colors.grey[200],
                leading: Text('10'),
                title: Text('Power and Politics'),
                trailing: Icon(
                  Icons.keyboard_arrow_left,
                  size: 22,
                ),
                children: [
                  ListTile(
                      leading: Text('1'),
                      title: Text(
                        'Topic 1',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: Text('Start'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Topic()));
                        },
                      )),
                  ListTile(
                    leading: Text('2'),
                    title: Text(
                      'Topic 2',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Text('3'),
                    title: Text(
                      'Quiz',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                ]),
            Divider(),
            ExpansionTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                collapsedIconColor: Colors.white,
                collapsedTextColor: Colors.white,
                collapsedBackgroundColor: Colors.indigo,
                backgroundColor: Colors.grey[200],
                leading: Text('11'),
                title: Text('Conflict and Negotiation'),
                trailing: Icon(
                  Icons.keyboard_arrow_left,
                  size: 22,
                ),
                children: [
                  ListTile(
                      leading: Text('1'),
                      title: Text(
                        'Topic 1',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: Text('Start'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Topic()));
                        },
                      )),
                  ListTile(
                    leading: Text('2'),
                    title: Text(
                      'Topic 2',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Text('3'),
                    title: Text(
                      'Quiz',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                ]),
            Divider(),
            ExpansionTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                collapsedIconColor: Colors.white,
                collapsedTextColor: Colors.white,
                collapsedBackgroundColor: Colors.indigo,
                backgroundColor: Colors.grey[200],
                leading: Text('12'),
                title: Text('Organizational Culture'),
                trailing: Icon(
                  Icons.keyboard_arrow_left,
                  size: 22,
                ),
                children: [
                  ListTile(
                      leading: Text('1'),
                      title: Text(
                        'Topic 1',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: Text('Start'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Topic()));
                        },
                      )),
                  ListTile(
                    leading: Text('2'),
                    title: Text(
                      'Topic 2',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Text('3'),
                    title: Text(
                      'Quiz',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                ]),
            Divider(),
            ExpansionTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                collapsedIconColor: Colors.white,
                collapsedTextColor: Colors.white,
                collapsedBackgroundColor: Colors.indigo,
                backgroundColor: Colors.grey[200],
                leading: Text('13'),
                title: Text('Organizational Structure and Design'),
                trailing: Icon(
                  Icons.keyboard_arrow_left,
                  size: 22,
                ),
                children: [
                  ListTile(
                      leading: Text('1'),
                      title: Text(
                        'Topic 1',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: Text('Start'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Topic()));
                        },
                      )),
                  ListTile(
                    leading: Text('2'),
                    title: Text(
                      'Topic 2',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Text('3'),
                    title: Text(
                      'Quiz',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                ]),
            Divider(),
            ExpansionTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                collapsedIconColor: Colors.white,
                collapsedTextColor: Colors.white,
                collapsedBackgroundColor: Colors.indigo,
                backgroundColor: Colors.grey[200],
                leading: Text('14'),
                title: Text('Managing Organizational Change'),
                trailing: Icon(
                  Icons.keyboard_arrow_left,
                  size: 22,
                ),
                children: [
                  ListTile(
                      leading: Text('1'),
                      title: Text(
                        'Topic 1',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: Text('Start'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Topic()));
                        },
                      )),
                  ListTile(
                    leading: Text('2'),
                    title: Text(
                      'Topic 2',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Text('3'),
                    title: Text(
                      'Quiz',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                ]),
          ]))
    ])));
  }
}
