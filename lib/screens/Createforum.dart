import 'package:flutter/material.dart';

import 'Welcome.dart';

class Createforum extends StatefulWidget {
  const Createforum({Key? key}) : super(key: key);

  @override
  _CreateforumState createState() => _CreateforumState();
}

class _CreateforumState extends State<Createforum> {
  String radioButtonItem = 'Everyone';
  int id = 1;
  String? _chosenSubject;

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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 5.0, top: 5, right: 5.0, bottom: 5),
                    child: Text(
                      'Subject: Professional Communication [FMUC1013]',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ),
                  Container(
                      width: 360,
                      child: Card(
                          elevation: 5,
                          shadowColor: Colors.indigo,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                ListTile(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                  ),
                                  tileColor: Colors.indigo,
                                  title: Text('Forum ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
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
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 16,
                                                          color: Colors.red)),
                                                ],
                                              ),
                                            )),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Container(
                                            height: 45,
                                            width: 295.0,
                                            padding: EdgeInsets.fromLTRB(
                                                15.0, 3.0, 5.0, 3.0),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7.0),
                                                border: Border.all(
                                                  color: Colors.grey,
                                                  width: 1,
                                                )),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton<String>(
                                                value: _chosenSubject,
                                                //elevation: 5,
                                                style: TextStyle(
                                                    color: Colors.grey),
                                                icon: Icon(
                                                    Icons.keyboard_arrow_down),
                                                iconEnabledColor: Colors.grey,
                                                items: <String>[
                                                  '202009',
                                                  '202010',
                                                  '202011',
                                                ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color:
                                                              Colors.grey[900]),
                                                    ),
                                                  );
                                                }).toList(),
                                                hint: Text(
                                                  "Please Select",
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
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: RichText(
                                            text: TextSpan(
                                              text: 'Title',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: ' *',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16,
                                                        color: Colors.red)),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Container(
                                            width: 295,
                                            height: 45,
                                            child: TextFormField(
                                                keyboardType:
                                                    TextInputType.text,
                                                decoration: InputDecoration(
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .black)),
                                                  border: OutlineInputBorder(
                                                      borderSide: BorderSide()),
                                                  labelStyle: TextStyle(
                                                      color: Colors.black54),
                                                  hintText: 'Enter Title',
                                                )),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: RichText(
                                            text: TextSpan(
                                              text: 'Description',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: ' *',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16,
                                                        color: Colors.red)),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Container(
                                            width: 295,
                                            height: 45,
                                            child: TextFormField(
                                                maxLines: 6,
                                                keyboardType:
                                                    TextInputType.text,
                                                decoration: InputDecoration(
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .black)),
                                                  border: OutlineInputBorder(
                                                      borderSide: BorderSide()),
                                                  labelStyle: TextStyle(
                                                      color: Colors.black54),
                                                  hintText: 'Enter Description',
                                                )),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: RichText(
                                            text: TextSpan(
                                              text: 'Schedule',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black),
                                              children: const <TextSpan>[
                                                TextSpan(
                                                    text: ' *',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16,
                                                        color: Colors.red)),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Container(
                                            width: 295,
                                            height: 45,
                                            child: TextFormField(
                                                keyboardType:
                                                    TextInputType.text,
                                                decoration: InputDecoration(
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .black)),
                                                  border: OutlineInputBorder(
                                                      borderSide: BorderSide()),
                                                  labelStyle: TextStyle(
                                                      color: Colors.black54),
                                                  hintText: 'Enter Schedule',
                                                )),
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(top: 10.0),
                                            child: Text(
                                                'Assign to ' +
                                                    '$radioButtonItem',
                                                style:
                                                    TextStyle(fontSize: 16))),
                                        Row(
                                          children: [
                                            Radio(
                                              activeColor: Colors.indigo,
                                              value: 1,
                                              groupValue: id,
                                              onChanged: (val) {
                                                setState(() {
                                                  radioButtonItem = 'Everyone';
                                                  id = 1;
                                                });
                                              },
                                            ),
                                            Text(
                                              'Everyone',
                                              style:
                                                  new TextStyle(fontSize: 14.0),
                                            ),
                                            Radio(
                                              activeColor: Colors.indigo,
                                              value: 2,
                                              groupValue: id,
                                              onChanged: (val) {
                                                setState(() {
                                                  radioButtonItem =
                                                      'Specific Student(s)';
                                                  id = 2;
                                                });
                                              },
                                            ),
                                            Text(
                                              'Specific Student(s)',
                                              style: new TextStyle(
                                                fontSize: 14.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 90, top: 5.0, bottom: 10),
                                  child: ElevatedButton(
                                    child: Text('Create Forum'),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.green[700],
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ]))),
                ]),
          ),
        ));
  }
}
