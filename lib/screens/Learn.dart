import 'package:flutter/material.dart';
import 'package:lms/screens/Course.dart';
import 'package:lms/screens/Lesson.dart';
import 'package:lms/widgets/Drawer.dart';

import 'LoginScreen.dart';

class Learn extends StatefulWidget {
  const Learn({Key? key}) : super(key: key);

  @override
  _LearnState createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //drawer: StudentDrawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.indigo),
          backgroundColor: Colors.white,
          title: Text('Dashboard', style: TextStyle(color: Colors.indigo)),
          bottom: PreferredSize(
              preferredSize: Size(23, 1),
              child: Container(
                child: LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  backgroundColor: Colors.indigoAccent,
                ),
              )),
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
                            builder: (BuildContext context) => LoginScreen()));
                  },
                  child: Icon(
                    Icons.logout,
                  ),
                )),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 20, right: 15),
          child: Column(children: [
            Text(
              'Preview Course\nUCC - Professional Communication [ FMUC1013 ]',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            Card(
                elevation: 5,
                shadowColor: Colors.indigo,
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: RichText(
                              text: TextSpan(
                                text: 'Lesson: ',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text: 'WEEK 1 -ORAL PRESENTATION SKILLS',
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      )),
                                ],
                              ),
                            ),
                          ),
                          ExpansionTile(
                            iconColor: Colors.black,
                            textColor: Colors.black,
                            collapsedIconColor: Colors.white,
                            collapsedTextColor: Colors.white,
                            collapsedBackgroundColor: Colors.indigo,
                            backgroundColor: Colors.grey[200],
                            title: Text(
                              'Learning Outcome',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            children: [
                              ListTile(
                                title: Text(
                                  'At the end of the lesson, students should be able to:\n- know how to prepare oral presentations\n- how to decide a topic for speech\n- what is the attention grabber\n- how to prepare a speech',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          ExpansionTile(
                            iconColor: Colors.black,
                            textColor: Colors.black,
                            collapsedIconColor: Colors.white,
                            collapsedTextColor: Colors.white,
                            collapsedBackgroundColor: Colors.indigo,
                            backgroundColor: Colors.grey[200],
                            title: Text(
                              'Objective',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            children: [
                              ListTile(
                                title: Text(
                                  'To make students feel confident and well prepared when it comes to presentation',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ]))),
            SizedBox(height: 10),
            Card(
                elevation: 5,
                shadowColor: Colors.indigo,
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: RichText(
                              text: TextSpan(
                                text: 'Topic: ',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text:
                                          'CHAPTER 1 ( Time to complete: 1.00 )',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      )),
                                ],
                              ),
                            ),
                          ),
                          ExpansionTile(
                            iconColor: Colors.black,
                            textColor: Colors.black,
                            collapsedIconColor: Colors.white,
                            collapsedTextColor: Colors.white,
                            collapsedBackgroundColor: Colors.indigo,
                            backgroundColor: Colors.grey[200],
                            title: Text(
                              'Content',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            children: [
                              ListTile(
                                title: Text(
                                  'Oral communication is considered to be a core aspect of employability, and involves informing, persuading, creating understanding, and building consensus',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 205.0),
                            child: Text('Resources',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.0),
                                border: Border.all(
                                  color: Colors.black45,
                                  width: 1,
                                )),
                            child: ListTile(
                                tileColor: Colors.white,
                                leading: Text('1'),
                                title: Text('vv'),
                                subtitle: Text('Word Doc'),
                                trailing: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green[700],
                                    onPrimary: Colors.white,
                                  ),
                                  child: Text('View'),
                                  onPressed: () {},
                                )),
                          ),
                          Divider(),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.0),
                                border: Border.all(
                                  color: Colors.black45,
                                  width: 1,
                                )),
                            child: ListTile(
                                tileColor: Colors.white,
                                leading: Text('2'),
                                title: Text('CHAPTER 1'),
                                subtitle: Text('Powerpoint'),
                                trailing: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green[700],
                                    onPrimary: Colors.white,
                                  ),
                                  child: Text('View'),
                                  onPressed: () {},
                                )),
                          ),
                        ]))),
          ]),
        )));
  }
}
