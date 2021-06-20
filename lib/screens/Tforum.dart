import 'package:flutter/material.dart';
import 'package:lms/screens/Createforum.dart';

class Tforum extends StatefulWidget {
  const Tforum({Key? key}) : super(key: key);

  @override
  _TforumState createState() => _TforumState();
}

class _TforumState extends State<Tforum> {
  String? _chosenSubject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 5.0, top: 10, right: 5.0, bottom: 10),
          child: Text(
            'Subject: Professional Communication [FMUC1013]',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ),
        Container(
            width: 360,
            height: 200,
            child: Card(
                elevation: 5,
                shadowColor: Colors.indigo,
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
                    tileColor: Colors.indigo,
                    title: Text('Forum View',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
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
                            '202009',
                            '202010',
                            '202011',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey[900]),
                              ),
                            );
                          }).toList(),
                          hint: Text(
                            "Choose Semester",
                            style: TextStyle(
                                // color: Colors.grey,
                                fontSize: 16),
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
                    padding: const EdgeInsets.only(top: 10.0),
                    child: ElevatedButton(
                      child: Text('Create Forum'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green[700],
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Createforum()));
                      },
                    ),
                  ),
                ]))),
      ]),
    ));
  }
}
