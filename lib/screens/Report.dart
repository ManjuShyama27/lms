import 'package:flutter/material.dart';
import 'package:lms/widgets/AppDrawer.dart';

import 'Welcome.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  var _chosenSubject;

  var _chosenSemester;
  var _chosenSchedule;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: AppDrawer(),
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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                width: 360,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child:
                      Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                      ),
                      tileColor: Colors.indigo[500],
                      title: Text('E1 Report',
                          style: TextStyle(color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 200, top: 20),
                      child: RichText(
                        text: TextSpan(
                          text: 'Semester',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                          children: const <TextSpan>[
                            TextSpan(
                                text: ' *',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.red)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: 45,
                        width: 290.0,
                        padding: EdgeInsets.fromLTRB(15.0, 3.0, 5.0, 3.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            )),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: _chosenSemester,
                            //elevation: 5,
                            style: TextStyle(color: Colors.grey),
                            icon: Icon(Icons.keyboard_arrow_down),
                            iconEnabledColor: Colors.grey,
                            items: <String>[
                              'Semester 1',
                              'Semester 2',
                              'Semester 3',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              );
                            }).toList(),
                            hint: Text(
                              "Semester",
                              style: TextStyle(
                                  // color: Colors.grey,
                                  fontSize: 18),
                            ),

                            onChanged: (String? value) {
                              setState(() {
                                _chosenSemester = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 200, top: 10),
                        child: RichText(
                          text: TextSpan(
                            text: 'Subject',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: ' *',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.red)),
                            ],
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: 45,
                        width: 290.0,
                        padding: EdgeInsets.fromLTRB(15.0, 3.0, 5.0, 3.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            )),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: _chosenSubject,
                            //elevation: 5,
                            style: TextStyle(color: Colors.grey),
                            icon: Icon(Icons.keyboard_arrow_down),
                            iconEnabledColor: Colors.grey,
                            items: <String>[
                              'Subject 1',
                              'Subject 2',
                              'Subject 3',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              );
                            }).toList(),
                            hint: Text(
                              "Subject",
                              style: TextStyle(
                                  // color: Colors.grey,
                                  fontSize: 18),
                            ),
                            onChanged: (String? value) {
                              setState(() {
                                _chosenSubject = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 200, top: 10),
                        child: RichText(
                          text: TextSpan(
                            text: 'Schedules',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: ' *',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.red)),
                            ],
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: 45,
                        width: 290.0,
                        padding: EdgeInsets.fromLTRB(15.0, 3.0, 5.0, 3.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            )),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: _chosenSchedule,
                            //elevation: 5,
                            style: TextStyle(color: Colors.grey),
                            icon: Icon(Icons.keyboard_arrow_down),
                            iconEnabledColor: Colors.grey,
                            items: <String>[
                              'Schedule 1',
                              'Schedule 2',
                              'Schedule 3',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              );
                            }).toList(),
                            hint: Text(
                              "Schedules",
                              style: TextStyle(
                                  // color: Colors.grey,
                                  fontSize: 18),
                            ),
                            onChanged: (String? value) {
                              setState(() {
                                _chosenSchedule = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 20),
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text('View Marks'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green[700],
                            onPrimary: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          )),
                    )
                  ]),
                )),
          ]),
        ));
  }
}
