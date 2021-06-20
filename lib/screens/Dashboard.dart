import 'package:flutter/material.dart';
import 'package:lms/screens/Welcome.dart';
import 'package:lms/widgets/AppDrawer.dart';

import 'Archives.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: AppDrawer(),
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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
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
                        children: <Widget>[
                          ListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                            ),
                            tileColor: Colors.indigo[500],
                            title: Text('Your Webinar Sessions',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Container(
                            height: 200,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0, top: 20, bottom: 20),
                              child: ListTile(
                                tileColor: Colors.black,
                                title: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30, bottom: 8.0),
                                  child: Icon(Icons.play_arrow,
                                      color: Colors.white, size: 50),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 35, top: 10, bottom: 12),
                                  child: Text(
                                    '(No Webinar assigned for you)',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ]))),
          ]),
        ));
  }
}
