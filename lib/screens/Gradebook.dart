import 'package:flutter/material.dart';

class Gradebook extends StatefulWidget {
  const Gradebook({Key? key}) : super(key: key);

  @override
  _GradebookState createState() => _GradebookState();
}

class _GradebookState extends State<Gradebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 15.0, top: 10, right: 15.0, bottom: 10),
          child: Text(
            'Subject: Organizations : Behaviour, Structure, Processes [MPOB7113]',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ),
        Container(
            width: 360,
            height: 160,
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
                    title: Text('Gradebook',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ]))),
      ]),
    ));
  }
}
