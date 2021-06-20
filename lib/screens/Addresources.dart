import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'Welcome.dart';

class Addresources extends StatefulWidget {
  const Addresources({Key? key}) : super(key: key);
  static const routeName = '/addresources';
  @override
  _AddresourcesState createState() => _AddresourcesState();
}

class _AddresourcesState extends State<Addresources> {
  var _resourceType;
  String? path;
  Future<Null> _pickFile() async {
    path = await FilePicker.getFilePath();
  }

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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5.0, top: 5, right: 5.0, bottom: 5),
                        child: Text(
                          'Resources\nProfessional Communication [ FMUC1013 ]\nWEEK 1 -ORAL PRESENTATION SKILLS\nCHAPTER 1',
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
                                              text: 'Resource Title',
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
                                                      'Enter Resource Title',
                                                )),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: RichText(
                                            text: TextSpan(
                                              text: 'Resource Synopsis',
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
                                                      'Enter Resource Synopsis',
                                                )),
                                          ),
                                        ),
                                        Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: RichText(
                                              text: TextSpan(
                                                text: 'Resource Type',
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
                                                value: _resourceType,
                                                //elevation: 5,
                                                style: TextStyle(
                                                    color: Colors.grey),
                                                icon: Icon(
                                                    Icons.keyboard_arrow_down),
                                                iconEnabledColor: Colors.grey,
                                                items: <String>[
                                                  'PDF',
                                                  'Word',
                                                  'Excel',
                                                  'Video',
                                                  'Audio',
                                                  'Powerpoint'
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
                                                    _resourceType = value;
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
                                                text: 'Upload Assignment',
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
                                            width: 295,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 3),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black38),
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
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
                                                  onPressed: () async =>
                                                      await _pickFile(),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5.0, left: 90, bottom: 10),
                                          child: ElevatedButton(
                                            child: Text('Save Resource'),
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
                            child: ExpansionTile(
                              backgroundColor: Colors.white,
                              collapsedBackgroundColor: Colors.white,
                              iconColor: Colors.indigo,
                              textColor: Colors.indigo,
                              leading: Text('1'),
                              title: Text('vv',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  onPrimary: Colors.white,
                                ),
                                child: Text('Delete'),
                                onPressed: () {},
                              ),
                              children: [
                                ListTile(
                                  title: Text(
                                    'Resource Synopsis:vccv	\nFile Name:NOTICE for Bursar (1)\nResource Type:	WORD',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.0),
                                border: Border.all(
                                  color: Colors.black45,
                                  width: 1,
                                )),
                            child: ExpansionTile(
                              backgroundColor: Colors.white,
                              collapsedBackgroundColor: Colors.white,
                              iconColor: Colors.indigo,
                              textColor: Colors.indigo,
                              leading: Text('2'),
                              title: Text('CHAPTER 1',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              trailing: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  onPrimary: Colors.white,
                                ),
                                child: Text('Delete'),
                                onPressed: () {},
                              ),
                              children: [
                                ListTile(
                                  title: Text(
                                    'Resource Synopsis:Oral communication is considered to be a core aspect of employability, and involves informing, persuading, creating understanding, and building consensus	\nFile Name:ORAL SKILLS.pptx \nResource Type:	POWERPOINT',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ]))));
  }
}
