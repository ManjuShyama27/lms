import 'package:flutter/material.dart';

class Quizbank extends StatefulWidget {
  const Quizbank({Key? key}) : super(key: key);

  @override
  _QuizbankState createState() => _QuizbankState();
}

class _QuizbankState extends State<Quizbank> {
  String? _quizMode;

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
                          'Quiz\nUCC - Professional Communication [FMUC1013]\nWEEK 1 -ORAL PRESENTATION SKILLS',
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
                                                text: 'Quiz Mode',
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
                                                value: _quizMode,
                                                //elevation: 5,
                                                style: TextStyle(
                                                    color: Colors.grey),
                                                icon: Icon(
                                                    Icons.keyboard_arrow_down),
                                                iconEnabledColor: Colors.grey,
                                                items: <String>[
                                                  'MCQ and True/False',
                                                  'Short Answer',
                                                  'Essay Type',
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
                                                    _quizMode = value;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5.0, left: 90, bottom: 10),
                                          child: ElevatedButton(
                                            child: Text('Create Question'),
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
                              title: Text('Short Answer',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              subtitle: Text('cvv vx'),
                              trailing: PopupMenuButton(
                                //onSelected: () {},
                                icon: Icon(
                                  Icons.more_vert,
                                ),
                                itemBuilder: (_) => [
                                  PopupMenuItem(
                                    child: Text('Edit'),
                                  ),
                                  PopupMenuItem(
                                    child: Text('Active'),
                                  ),
                                ],
                              ),
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
                            child: ListTile(
                              tileColor: Colors.white,
                              leading: Text('2'),
                              title: Text('MCQ and True / False',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              subtitle: Text('cvv vx'),
                              trailing: PopupMenuButton(
                                //onSelected: () {},
                                icon: Icon(
                                  Icons.more_vert,
                                ),
                                itemBuilder: (_) => [
                                  PopupMenuItem(
                                    child: Text('Edit'),
                                  ),
                                  PopupMenuItem(
                                    child: Text('Active'),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ]))));
  }
}
