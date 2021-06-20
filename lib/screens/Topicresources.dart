import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import 'Menu.dart';

enum options {
  Edit,
  Addresources,
  Delete,
}

class Topicresources extends StatefulWidget {
  const Topicresources({Key? key}) : super(key: key);

  @override
  _TopicresourcesState createState() => _TopicresourcesState();
}

class _TopicresourcesState extends State<Topicresources> {
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
                          'Topic Resources\nUCC - Professional Communication [FMUC1013]\nWEEK 1 -ORAL PRESENTATION SKILLS',
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
                                              text: 'Topic Name',
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
                                                  hintText: 'Enter Topic Name',
                                                )),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: RichText(
                                            text: TextSpan(
                                              text: 'Hours To Complete',
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
                                                    TextInputType.number,
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
                                                      'Enter Completion Time in Hours',
                                                )),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: RichText(
                                            text: TextSpan(
                                              text: 'Compose Content',
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
                                                  hintText: 'Compose Content',
                                                )),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5.0, left: 90, bottom: 10),
                                          child: ElevatedButton(
                                            child: Text('Save Topic'),
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
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.0),
                                border: Border.all(
                                  color: Colors.black45,
                                  width: 1,
                                )),
                            child: ListTile(
                              tileColor: Colors.white,
                              leading: Text('1'),
                              title: Text('CHAPTER 1',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              subtitle: Text(
                                  'Resources:NOTICE for Bursar (1), ORAL SKILLS.pptx\nHours to Complete:1.00'),
                              trailing: PopupMenuButton(
                                icon: Icon(
                                  Icons.more_vert,
                                ),
                                itemBuilder: (BuildContext bc) => [
                                  PopupMenuItem(
                                    child: Text('Edit'),
                                    value: options.Edit,
                                  ),
                                  PopupMenuItem(
                                    child: Text('Add Resources'),
                                    value: options.Addresources,
                                  ),
                                  PopupMenuItem(
                                      child: Text('Delete'),
                                      value: options.Delete),
                                ],
                                onSelected: (options selectedValue) {
                                  if (selectedValue == options.Addresources) {
                                    Navigator.pushNamed(
                                        context, '/addresources');
                                  } else if (selectedValue == options.Edit) {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Menu()));
                                  } else {
                                    AwesomeDialog(
                                            context: context,
                                            dialogType: DialogType.WARNING,
                                            headerAnimationLoop: false,
                                            animType: AnimType.SCALE,
                                            title: 'Warning',
                                            desc:
                                                'Are you sure you want to delete the resource?',
                                            btnCancelOnPress: () {},
                                            btnOkOnPress: () {})
                                        .show();
                                  }
                                },
                              ),
                            ),
                          )),
                    ]))));
  }
}
