import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lms/widgets/Drawer.dart';

import '../theme.dart';
import 'Welcome.dart';
import 'login.dart';

class Sdashboard extends StatefulWidget {
  const Sdashboard({Key? key}) : super(key: key);

  @override
  _SdashboardState createState() => _SdashboardState();
}

class _SdashboardState extends State<Sdashboard> {
  List cardList = [Item1(), Item2()];

  int _currentIndex = 0;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: StudentDrawer(),
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
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Dashboard',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
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
                                  tileColor: Colors.indigo,
                                  title: Text('Your online classes for today',
                                      style: TextStyle(color: Colors.white)),
                                ),
                                Container(
                                  height: 200,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0,
                                        right: 15.0,
                                        top: 20,
                                        bottom: 20),
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
                                            left: 50, top: 10, bottom: 12),
                                        child: Text(
                                          '(No Classes opened yet)',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ]))),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'My Courses',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                        child: Column(
                      children: <Widget>[
                        CarouselSlider(
                          options: CarouselOptions(
                            viewportFraction: 0.8,
                            height: 220.0,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                          ),
                          items: cardList.map((card) {
                            return Builder(builder: (BuildContext context) {
                              return Container(
                                height: 250,
                                width: 250,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    gradient: LinearGradient(
                                        colors: <Color>[
                                          CustomTheme.loginGradientEnd,
                                          CustomTheme.loginGradientStart
                                        ],
                                        begin: FractionalOffset(0.2, 0.2),
                                        end: FractionalOffset(1.0, 1.0),
                                        stops: <double>[0.0, 1.0],
                                        tileMode: TileMode.clamp),
                                  ),
                                  child: Card(
                                    color: Colors.transparent,
                                    child: card,
                                  ),
                                ),
                              );
                            });
                          }).toList(),
                        ),
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 15),
                    child: Text(
                      'My Timetable',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shadowColor: Colors.indigo,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(children: <Widget>[
                        ExpansionTile(
                          iconColor: Colors.black,
                          textColor: Colors.black,
                          collapsedIconColor: Colors.white,
                          collapsedTextColor: Colors.white,
                          collapsedBackgroundColor: Colors.indigo,
                          backgroundColor: Colors.grey[300],
                          leading: Text('1'),
                          title: Text(
                            '11:00 - 12:00',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          children: [
                            ListTile(
                              title: Text(
                                'Day: Saturday \nTime: 11.00 - 12.00 \nSubject Code: MPOB7113 \nOrganizations : Behaviour, Structure, Processes	\nLecturer: DR BAHARU BIN KEMAT \nValid Till:	10/04/2021',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        ExpansionTile(
                          iconColor: Colors.black,
                          textColor: Colors.black,
                          collapsedIconColor: Colors.white,
                          collapsedTextColor: Colors.white,
                          collapsedBackgroundColor: Colors.indigo,
                          backgroundColor: Colors.grey[300],
                          leading: Text('2'),
                          title: Text(
                            '9:00 - 10:00',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          children: [
                            ListTile(
                              title: Text(
                                'Day: Saturday \nTime: 9.00 - 10.00 \nSubject Code: MPIB7103 \nSubject Name: International Business \nLecturer: DR AHMAD BUDIMAN HUSAIN \nValid Till:	10/04/2021',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                      ]),
                    ),
                  )
                ]))));
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("MPOB7113",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold)),
            Text("Organizations : Behaviour, Structure, Processes",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500)),
            Text("DR BAHARU BIN KEMAT",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("MPIB7103",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold)),
            Text("International Business",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500)),
            Text("DR AHMAD BUDIMAN HUSAIN",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
