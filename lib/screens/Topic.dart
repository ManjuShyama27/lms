import 'package:flutter/material.dart';
import 'package:lms/widgets/Drawer.dart';

import 'Course.dart';
import 'Welcome.dart';

class Topic extends StatefulWidget {
  const Topic({Key? key}) : super(key: key);

  @override
  _TopicState createState() => _TopicState();
}

class _TopicState extends State<Topic> {
  List<Widget> _samplePages = [
    Center(
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Text(
            'Subject: Organizations : Behaviour, Structure, Processes [MPOB7113]',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ),
        Card(
            elevation: 1,
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
                                color: Colors.indigo),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: 'What Is Organizational Behavior?',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
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
                              '- Demonstrate the importance of interpersonal skills in the workplace.\n- Describe the manager’s functions, roles, and skills.\n- Define organizational behavior (OB).\n- Show the value to OB of systematic study.\n- Identify the major behavioral science disciplines that contribute to OB.\n- Demonstrate why few absolutes apply to OB.\n- Identify the challenges and opportunities managers have in applying OB concepts.\n- Compare the three levels of analysis in this books OB model',
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
                              'The first chapter entitled “What is Organizational Behavior,” begins by defining eight learning objectives for the chapter. These lay a foundational understanding for the origins of OB and its applications in management and organizational existence. You should focus on this chapter to ground yourself, and as a starting place for the more complex and significant concepts throughout the book. We will elaborate on each of these objectives to ensure that you acquire a base knowledge of the core OB competencies.',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ]))),
      ]),
    ),
    Center(
      child: Container(
        width: 370,
        height: 450,
        child: Card(
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
                                      'The Importance of Interpersonal Skills ( Time to complete: 0.20 )',
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
                              '- Management and Organizational Behavior \n- Management Roles \n- Management Skills \n- Effective versus \n- Successful Managerial Activities',
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
                            title:
                                Text('The Importance of Interpersonal Skills'),
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
                    ]))),
      ),
    ),
    Center(
      child: Container(
        height: 450,
        width: 370,
        child: Card(
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
                                      'Disciplines That Contribute to the OB Field ( Time to complete: 0.20 )',
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
                              '- Psychology\n- Social Psychology\n- Sociology\n- Anthropology',
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
                            title: Text(
                                'Disciplines That Contribute to the OB Field'),
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
                    ]))),
      ),
    ),
    Center(
      child: Container(
        height: 200,
        width: 330,
        child: Card(
            elevation: 3,
            shadowColor: Colors.indigo,
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Text('Quiz', style: TextStyle(fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: ListTile(
                      leading: Icon(Icons.quiz, color: Colors.indigo),
                      title: Text('Quiz is not started for this subject'),
                    ),
                  )
                ]))),
      ),
    ),
  ];
  final _controller = new PageController();
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          builder: (BuildContext context) => Welcome()));
                },
                child: Icon(
                  Icons.logout,
                ),
              )),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: _samplePages.length,
              itemBuilder: (BuildContext context, int index) {
                return _samplePages[index % _samplePages.length];
              },
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                child: Text('Prev'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.indigo,
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  shape: StadiumBorder(
                    side: BorderSide(color: Colors.indigo),
                  ),
                ),
                onPressed: () {
                  _controller.previousPage(
                      duration: _kDuration, curve: _kCurve);
                },
              ),
              SizedBox(width: 90),
              ElevatedButton(
                child: Text('Next'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo,
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  shape: StadiumBorder(),
                ),
                onPressed: () {
                  _controller.nextPage(duration: _kDuration, curve: _kCurve);
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
