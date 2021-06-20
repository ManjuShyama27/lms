import 'package:flutter/material.dart';

import 'Cousecreate.dart';
import 'Welcome.dart';

class Create extends StatefulWidget {
  const Create({Key? key}) : super(key: key);
  static const routeName = '/create';
  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
  var _chosenSubject;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.indigo),
          backgroundColor: Colors.white,
          title: Text('Dashboard', style: TextStyle(color: Colors.indigo)),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Coursecreate()));
            },
          ),
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
                      tileColor: Colors.indigo[500],
                      title: Text('Subject Objective',
                          style: TextStyle(color: Colors.white)),
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
                              "Please Select",
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
                      padding: const EdgeInsets.only(right: 200, top: 15),
                      child: RichText(
                        text: TextSpan(
                          text: 'Objective',
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
                        width: 290,
                        height: 45,
                        child: TextFormField(
                            maxLines: 6,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              border:
                                  OutlineInputBorder(borderSide: BorderSide()),
                              labelStyle: TextStyle(color: Colors.black54),
                              hintText: 'Enter Objective',
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 190, top: 15),
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
                        width: 290,
                        height: 45,
                        child: TextFormField(
                            maxLines: 6,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                              border:
                                  OutlineInputBorder(borderSide: BorderSide()),
                              labelStyle: TextStyle(color: Colors.black54),
                              hintText: 'Enter Description',
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 20),
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Save & Create Lesson Plan'),
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
