import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:lms/screens/Create.dart';
import 'package:lms/screens/Options.dart';
import 'package:lms/widgets/AppDrawer.dart';
import 'LoginScreen.dart';

enum menu {
  Edit,
  Delete,
}

class Coursecreate extends StatefulWidget {
  const Coursecreate({Key? key}) : super(key: key);

  @override
  _CoursecreateState createState() => _CoursecreateState();
}

class _CoursecreateState extends State<Coursecreate> {
  var _option1;
  var _option2;

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
                            builder: (BuildContext context) => LoginScreen()));
                  },
                  child: Icon(
                    Icons.logout,
                  ),
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Subject View',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Row(
                        //mainAxisSize: MainAxisSize.min,
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ElevatedButton(
                            child: Text('Initiate Subject'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green[700],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Create()));
                            },
                          ),
                          SizedBox(width: 60),
                          ElevatedButton(
                            child: Text('Merge Subject'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                              onPrimary: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () => showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                      title: Text(
                                          'Merge Content with another Subject',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      content: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text('Content to copy from:',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton<String>(
                                                value: _option1,
                                                //elevation: 5,
                                                style: TextStyle(
                                                    color: Colors.grey),
                                                icon: Icon(
                                                    Icons.keyboard_arrow_down),
                                                iconEnabledColor: Colors.grey,
                                                items: <String>[
                                                  'Professional Communication',
                                                  'Study Skills',
                                                  'Academic English 1',
                                                ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      style: TextStyle(
                                                          fontSize: 14,
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
                                                    _option1 = value;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text('Content to copy to:',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 5),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton<String>(
                                                value: _option2,
                                                //elevation: 5,
                                                style: TextStyle(
                                                    color: Colors.grey),
                                                icon: Icon(
                                                    Icons.keyboard_arrow_down),
                                                iconEnabledColor: Colors.grey,
                                                items: <String>[
                                                  'Professional Communication',
                                                  'Study Skills',
                                                  'Academic English 1',
                                                ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      style: TextStyle(
                                                          fontSize: 14,
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
                                                    _option2 = value;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                          ElevatedButton(
                                            child: Text('Save'),
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.green[700],
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 50),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ],
                                      ));
                                }),
                          )
                        ],
                      ),
                    ),
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
                            title: Text(
                                'UCC - Professional Communication [FMUC1013]',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text(
                                'Center: UNIRAZAK CITY CAMPUS\nActive: Active [202101]'),
                            trailing: PopupMenuButton(
                                //onSelected: () {},
                                icon: Icon(
                                  Icons.more_vert,
                                ),
                                itemBuilder: (_) => [
                                      PopupMenuItem(
                                        child: Text('Edit'),
                                        value: menu.Edit,
                                      ),
                                      PopupMenuItem(
                                        child: Text('Delete'),
                                        value: menu.Delete,
                                      ),
                                    ],
                                onSelected: (menu selectedValue) {
                                  if (selectedValue == menu.Edit) {
                                    Navigator.pushNamed(context, '/create');
                                  } else {
                                    AwesomeDialog(
                                            context: context,
                                            dialogType: DialogType.WARNING,
                                            headerAnimationLoop: false,
                                            animType: AnimType.SCALE,
                                            title: 'Warning',
                                            desc:
                                                'Are you sure you want to delete the course?',
                                            btnCancelOnPress: () {},
                                            btnOkOnPress: () {})
                                        .show();
                                  }
                                }),
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Options()));
                            },
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
                            title: Text(
                                'UCC - Professional Communication [FMUC1013]',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text(
                                'Center: UNIRAZAK CITY CAMPUS\nActive: Active [202101]'),
                            trailing: PopupMenuButton(
                                //onSelected: () {},
                                icon: Icon(
                                  Icons.more_vert,
                                ),
                                itemBuilder: (_) => [
                                      PopupMenuItem(
                                        child: Text('Edit'),
                                        value: menu.Edit,
                                      ),
                                      PopupMenuItem(
                                        child: Text('Delete'),
                                        value: menu.Delete,
                                      ),
                                    ],
                                onSelected: (menu selectedValue) {
                                  if (selectedValue == menu.Edit) {
                                    Navigator.pushNamed(context, '/create');
                                  } else {
                                    AwesomeDialog(
                                            context: context,
                                            dialogType: DialogType.WARNING,
                                            headerAnimationLoop: false,
                                            animType: AnimType.SCALE,
                                            title: 'Warning',
                                            desc:
                                                'Are you sure you want to delete the course?',
                                            btnCancelOnPress: () {},
                                            btnOkOnPress: () {})
                                        .show();
                                  }
                                }),
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Options()));
                            },
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
                            leading: Text('3'),
                            title: Text('UCC - Academic English 1 [DMUC1012]',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text(
                                'Center: UNIRAZAK CITY CAMPUS\nActive: Active [202101]'),
                            trailing: PopupMenuButton(
                                icon: Icon(
                                  Icons.more_vert,
                                ),
                                itemBuilder: (_) => [
                                      PopupMenuItem(
                                        child: Text('Edit'),
                                        value: menu.Edit,
                                      ),
                                      PopupMenuItem(
                                        child: Text('Delete'),
                                        value: menu.Delete,
                                      ),
                                    ],
                                onSelected: (menu selectedValue) {
                                  if (selectedValue == menu.Edit) {
                                    Navigator.pushNamed(context, '/create');
                                  } else {
                                    AwesomeDialog(
                                            context: context,
                                            dialogType: DialogType.WARNING,
                                            headerAnimationLoop: false,
                                            animType: AnimType.SCALE,
                                            title: 'Warning',
                                            desc:
                                                'Are you sure you want to delete the course?',
                                            btnCancelOnPress: () {},
                                            btnOkOnPress: () {})
                                        .show();
                                  }
                                }),
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Options()));
                            },
                          ),
                        )),
                  ])),
        ));
  }
}
