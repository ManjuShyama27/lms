import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 20, right: 15.0),
            child: Text(
              'Subject: Organizations : Behaviour, Structure, Processes   [ MPOB7113 ]',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.indigo,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircularProfileAvatar(
                      '',
                      child: Icon(Icons.person, color: Colors.indigo, size: 90),
                      borderColor: Colors.indigo,
                      borderWidth: 1,
                      elevation: 1,
                      radius: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Faculty Name:DR BAHARU BIN KEMAT,\nEmail : baharu.kemat@uniru.edu.my',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                    ),
                    ExpansionTile(
                      iconColor: Colors.black,
                      textColor: Colors.black,
                      collapsedIconColor: Colors.white,
                      collapsedTextColor: Colors.white,
                      collapsedBackgroundColor: Colors.indigo,
                      backgroundColor: Colors.grey[300],
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
                            'The main objectives of this course is to enhance students’ understanding of the key concepts and theories of organisational behavior, organisational structure and design and those related to organisational processes and to understand how these concepts and theories relate to successful management of organisations',
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
                      backgroundColor: Colors.grey[300],
                      title: Text(
                        'Synopsis',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: Text(
                            'This   subject   seeks   to expose students to elements and issues on how organizations ‘behaved’ and what causes them to behave as such. It focuses on theories, research and practice of OB especially those on the organizational dynamics related to culture, individual behavior, social perception  and attributes,  motivation,  performance, behavior modifications and decision making',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                  ]),
            ),
          )
        ],
      ),
    ));
  }
}
