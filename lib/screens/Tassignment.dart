import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class Tassignment extends StatefulWidget {
  const Tassignment({Key? key}) : super(key: key);

  @override
  _TassignmentState createState() => _TassignmentState();
}

class _TassignmentState extends State<Tassignment> {
  String? path;
  String radioButtonItem = 'Everyone';
  int id = 1;
  String? _chosenSubject;
  String? _chosenAssessment;
  DateTime? _selectedDate;

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1960),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
    print('...');
  }

  Future<Null> _pickFile() async {
    path = await FilePicker.getFilePath();
  }

  Future<Null> _pickImageFromGallery() async {
    final PickedFile? imageFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
  }

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
                  'Assignment \nUCC - Professional Communication [FMUC1013]',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: const EdgeInsets.only(top: 10),
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
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Container(
                                  height: 45,
                                  width: 295.0,
                                  padding:
                                      EdgeInsets.fromLTRB(15.0, 3.0, 5.0, 3.0),
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
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(
                                            value,
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.grey[900]),
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
                                padding: const EdgeInsets.only(top: 10),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Assignment Name',
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
                                  width: 295,
                                  height: 45,
                                  child: TextFormField(
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide()),
                                        labelStyle:
                                            TextStyle(color: Colors.black54),
                                        hintText: 'Enter Assignment Name',
                                      )),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Assignment Type',
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
                                  width: 295.0,
                                  padding:
                                      EdgeInsets.fromLTRB(15.0, 3.0, 5.0, 3.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.0),
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1,
                                      )),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      value: _chosenAssessment,
                                      //elevation: 5,
                                      style: TextStyle(color: Colors.grey),
                                      icon: Icon(Icons.keyboard_arrow_down),
                                      iconEnabledColor: Colors.grey,
                                      items: <String>[
                                        'Assessment 1',
                                        'Assessment 2',
                                        'Assessment 3',
                                        'Assessment 4',
                                        'Mid Term Exam',
                                        'Final Exam'
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(
                                            value,
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.grey[900]),
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
                                          _chosenAssessment = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Assignment Submission Date',
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
                                  width: 295,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 3),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black38),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                            _selectedDate == null
                                                ? 'Submission Date '
                                                : 'Date: ${DateFormat.yMd().format(_selectedDate!)}',
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 16,
                                            )),
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.calendar_today),
                                        onPressed: () => _presentDatePicker(),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
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
                                  width: 295,
                                  height: 45,
                                  child: TextFormField(
                                      maxLines: 6,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide()),
                                        labelStyle:
                                            TextStyle(color: Colors.black54),
                                        hintText: 'Enter Description',
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
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
                                  width: 295,
                                  height: 45,
                                  child: TextFormField(
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide()),
                                        labelStyle:
                                            TextStyle(color: Colors.black54),
                                        hintText: 'Enter Schedule',
                                      )),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text('Assign to ' + '$radioButtonItem',
                                      style: TextStyle(fontSize: 16))),
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
                                    style: new TextStyle(fontSize: 14.0),
                                  ),
                                  Radio(
                                    activeColor: Colors.indigo,
                                    value: 2,
                                    groupValue: id,
                                    onChanged: (val) {
                                      setState(() {
                                        radioButtonItem = 'Specific Student(s)';
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
                              Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Upload Assignment',
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
                                  width: 295,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 3),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black38),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                            path == null
                                                ? 'No File Chosen'
                                                : '',
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 16,
                                            )),
                                      ),
                                      IconButton(
                                          icon: Icon(Icons.attach_file),
                                          onPressed: () {
                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return SimpleDialog(
                                                  title: const Text(
                                                      'Choose File Type'),
                                                  children: <Widget>[
                                                    SimpleDialogOption(
                                                      onPressed: () async =>
                                                          await _pickImageFromGallery(),
                                                      child:
                                                          const Text('Image'),
                                                    ),
                                                    SimpleDialogOption(
                                                      onPressed: () async =>
                                                          await _pickFile(),
                                                      child: const Text(
                                                          'PDF/Word'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          })
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5.0, left: 80, bottom: 10),
                                child: ElevatedButton(
                                  child: Text('Save Assignment'),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green[700],
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ]),
                      ))),
            ]),
      ),
    ));
  }
}
