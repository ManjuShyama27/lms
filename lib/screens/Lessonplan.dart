import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:lms/screens/Options.dart';

import 'Menu.dart';

enum option {
  Edit,
  Delete,
}

class Lessonplan extends StatefulWidget {
  const Lessonplan({Key? key}) : super(key: key);

  @override
  _LessonplanState createState() => _LessonplanState();
}

class _LessonplanState extends State<Lessonplan> {
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
                          'Lesson Plan\nUCC - Professional Communication [FMUC1013]',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ),
                      Container(
                          width: 360,
                          child: Card(
                              elevation: 5,
                              shadowColor: Colors.indigo,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: RichText(
                                            text: TextSpan(
                                              text: 'Lesson Name',
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
                                                  hintText: 'Enter Lesson Name',
                                                )),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: RichText(
                                            text: TextSpan(
                                              text: 'Learning Outcome',
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
                                                  hintText:
                                                      'Enter Learning outcome',
                                                )),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
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
                                                  hintText: 'Enter Objective',
                                                )),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5.0, left: 80, bottom: 10),
                                          child: ElevatedButton(
                                            child: Text('Save Lesson'),
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.green[700],
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ])))),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 45,
                          width: 350,
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Search',
                              prefixIcon: Icon(Icons.search,
                                  color: Colors.grey[600], size: 24),
                              labelStyle: TextStyle(color: Colors.black54),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide()),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Card(
                            elevation: 3,
                            shadowColor: Colors.indigo,
                            child: ListTile(
                              tileColor: Colors.white,
                              leading: Text('1'),
                              title: Text('WEEK 1 -ORAL PRESENTATION SKILLS',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              trailing: PopupMenuButton(
                                //onSelected: () {},
                                icon: Icon(
                                  Icons.more_vert,
                                ),
                                itemBuilder: (BuildContext bc) => [
                                  PopupMenuItem(
                                    child: Text('Edit'),
                                    value: option.Edit,
                                  ),
                                  PopupMenuItem(
                                    child: Text('Delete'),
                                    value: option.Delete,
                                  ),
                                ],
                                onSelected: (option selectedValue) {
                                  if (selectedValue == option.Edit) {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Options()));
                                  } else {
                                    AwesomeDialog(
                                            context: context,
                                            dialogType: DialogType.WARNING,
                                            headerAnimationLoop: false,
                                            animType: AnimType.SCALE,
                                            title: 'Warning',
                                            desc:
                                                'Are you sure you want to delete the topic?',
                                            btnCancelOnPress: () {},
                                            btnOkOnPress: () {})
                                        .show();
                                  }
                                },
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Menu()));
                              },
                            ),
                          )),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Card(
                            elevation: 3,
                            shadowColor: Colors.indigo,
                            child: ListTile(
                              tileColor: Colors.white,
                              leading: Text('2'),
                              title: Text('WEEK 2 - COMMUNICATION',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              trailing: PopupMenuButton(
                                //onSelected: () {},
                                icon: Icon(
                                  Icons.more_vert,
                                ),
                                itemBuilder: (BuildContext bc) => [
                                  PopupMenuItem(
                                    child: Text('Edit'),
                                    value: option.Edit,
                                  ),
                                  PopupMenuItem(
                                    child: Text('Delete'),
                                    value: option.Delete,
                                  ),
                                ],
                                onSelected: (option selectedValue) {
                                  if (selectedValue == option.Edit) {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Options()));
                                  } else {
                                    AwesomeDialog(
                                            context: context,
                                            dialogType: DialogType.WARNING,
                                            headerAnimationLoop: false,
                                            animType: AnimType.SCALE,
                                            title: 'Warning',
                                            desc:
                                                'Are you sure you want to delete the topic?',
                                            btnCancelOnPress: () {},
                                            btnOkOnPress: () {})
                                        .show();
                                  }
                                },
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Menu()));
                              },
                            ),
                          )),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Card(
                            elevation: 3,
                            shadowColor: Colors.indigo,
                            child: ListTile(
                              tileColor: Colors.white,
                              leading: Text('3'),
                              title: Text('WEEK 3- MODE OF COMMUNICATION',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              trailing: PopupMenuButton(
                                icon: Icon(
                                  Icons.more_vert,
                                ),
                                itemBuilder: (BuildContext bc) => [
                                  PopupMenuItem(
                                    child: Text('Edit'),
                                    value: option.Edit,
                                  ),
                                  PopupMenuItem(
                                    child: Text('Delete'),
                                    value: option.Delete,
                                  ),
                                ],
                                onSelected: (option selectedValue) {
                                  if (selectedValue == option.Edit) {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Options()));
                                  } else {
                                    AwesomeDialog(
                                            context: context,
                                            dialogType: DialogType.WARNING,
                                            headerAnimationLoop: false,
                                            animType: AnimType.SCALE,
                                            title: 'Warning',
                                            desc:
                                                'Are you sure you want to delete the topic?',
                                            btnCancelOnPress: () {},
                                            btnOkOnPress: () {})
                                        .show();
                                  }
                                },
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Menu()));
                              },
                            ),
                          )),
                    ]))));
  }
}
