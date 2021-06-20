import 'package:flutter/material.dart';
import 'package:lms/widgets/Drawer.dart';

import 'Welcome.dart';

class Attendance extends StatefulWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.only(left: 5.0, top: 20, right: 5.0),
          child: Column(children: [
            Text(
              'Subject: Organizations : Behaviour, Structure, Processes [MPOB7113]',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    width: 185,
                    height: 70,
                    child: Card(
                        elevation: 5,
                        shadowColor: Colors.indigo,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Row(
                            children: [
                              Icon(Icons.person),
                              Text(
                                '\t Total Classes in LMS \n\t6',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        )),
                  ),
                  Container(
                    width: 180,
                    height: 70,
                    child: Card(
                        elevation: 5,
                        shadowColor: Colors.indigo,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: [
                              Icon(Icons.thumb_up),
                              SizedBox(width: 20),
                              Text(
                                '\t Present \n\t6',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: 185,
                  height: 70,
                  child: Card(
                      elevation: 5,
                      shadowColor: Colors.indigo,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Icon(Icons.thumb_down),
                            SizedBox(width: 20),
                            Text(
                              '\t Absent \n\t0',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )),
                ),
                Container(
                  width: 180,
                  height: 70,
                  child: Card(
                      elevation: 5,
                      shadowColor: Colors.indigo,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          children: [
                            Text('%',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(width: 20),
                            Text(
                              '\t Percentage \n\t100',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Card(
                elevation: 5,
                shadowColor: Colors.indigo,
                child: DataTable(
                  columnSpacing: 20,
                  columns: [
                    DataColumn(
                        label: Text('No',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo))),
                    DataColumn(
                        label: Text('Classcode',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo))),
                    DataColumn(
                        label: Text('Date',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo))),
                    DataColumn(
                        label: Text('Status',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo))),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('202101F0099')),
                      DataCell(Text('06/03/2021')),
                      DataCell(Text('Present',
                          style: TextStyle(color: Colors.green))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('2')),
                      DataCell(Text('202101F0099')),
                      DataCell(Text('06/03/2021')),
                      DataCell(Text('Present',
                          style: TextStyle(color: Colors.green))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('3')),
                      DataCell(Text('202101F0099')),
                      DataCell(Text('06/03/2021')),
                      DataCell(Text('Present',
                          style: TextStyle(color: Colors.green))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('4')),
                      DataCell(Text('202101F0099')),
                      DataCell(Text('06/03/2021')),
                      DataCell(Text('Present',
                          style: TextStyle(color: Colors.green))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('5')),
                      DataCell(Text('202101F0099')),
                      DataCell(Text('06/03/2021')),
                      DataCell(Text('Present',
                          style: TextStyle(color: Colors.green))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('6')),
                      DataCell(Text('202101F0099')),
                      DataCell(Text('06/03/2021')),
                      DataCell(Text('Present',
                          style: TextStyle(color: Colors.green))),
                    ]),
                  ],
                ),
              ),
            ),
          ])),
    ));
  }
}
