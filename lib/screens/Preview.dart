import 'package:flutter/material.dart';

import 'Learn.dart';

class Preview extends StatefulWidget {
  const Preview({Key? key}) : super(key: key);

  @override
  _PreviewState createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5.0, top: 5, right: 5.0, bottom: 5),
                        child: Text(
                          'Preview Course \nUCC - Professional Communication [FMUC1013]',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        shadowColor: Colors.indigo,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0, right: 15),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Subject Code:',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text: ' FMUC1013',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                              )),
                                        ],
                                      ),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Subject Name:',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text:
                                                  'Professional Communication',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                              )),
                                        ],
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: ExpansionTile(
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
                                          'By the end of this course you will be able to:\n1.identify effective oral communication skills\n2.describe the written communication skills\n3.communicate orally better and effectively\n4.write curriculum vitae effectively',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: ExpansionTile(
                                    iconColor: Colors.black,
                                    textColor: Colors.black,
                                    collapsedIconColor: Colors.white,
                                    collapsedTextColor: Colors.white,
                                    collapsedBackgroundColor: Colors.indigo,
                                    backgroundColor: Colors.grey[200],
                                    title: Text(
                                      'Description',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    children: [
                                      ListTile(
                                        title: Text(
                                          'This course provides a comprehensive reference guide on the essentials of good communication skills, so that they can develop and improve their communication skills. It explains the principles of effective communication, both written and oral, and provides solid advice and practical guidelines on how to strengthen communication skills and produce better cv writing. It introduces the layouts of effective curriculum vitae.',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text('Lessons',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
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
                            title: Text('WEEK 1 -ORAL PRESENTATION SKILLS'),
                            leading: Text('1'),
                            trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.indigo),
                                child: Text('Learn'),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Learn()));
                                })),
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
                            title: Text('WEEK 2 - COMMUNICATION'),
                            leading: Text('2'),
                            trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.indigo),
                                child: Text('Learn'),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Learn()));
                                })),
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
                            title: Text('WEEK 3- MODE OF COMMUNICATION'),
                            leading: Text('3'),
                            trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.indigo),
                                child: Text('Learn'),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Learn()));
                                })),
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
                            title: Text('WEEK 4- ROLES OF OFFICE -BEARERS'),
                            leading: Text('4'),
                            trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.indigo),
                                child: Text('Learn'),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Learn()));
                                })),
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
                            title: Text('WEEK 5 - BEFORE A MEETING'),
                            leading: Text('5'),
                            trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.indigo),
                                child: Text('Learn'),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Learn()));
                                })),
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
                            title: Text(
                                'WEEK 6 - EFFECTIVE BUSINESS READING PART 1'),
                            leading: Text('6'),
                            trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.indigo),
                                child: Text('Learn'),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Learn()));
                                })),
                      ),
                    ]))));
  }
}
