import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lms/widgets/Drawer.dart';
import 'dart:io';

import 'Welcome.dart';

class Studentprofile extends StatefulWidget {
  const Studentprofile({Key? key}) : super(key: key);

  @override
  _StudentprofileState createState() => _StudentprofileState();
}

class _StudentprofileState extends State<Studentprofile> {
  late File _imageFile;
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
      body: Center(
        child: Container(
          height: 290,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            shadowColor: Colors.indigo,
            elevation: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                CircularProfileAvatar('',
                    child: Icon(Icons.person, color: Colors.indigo, size: 120),
                    borderColor: Colors.indigo,
                    borderWidth: 1,
                    elevation: 1,
                    radius: 70, onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        title: const Text('Change Profile Picture'),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () async => await _pickImageFromCamera(),
                            child: const Text('Take picture from Camera'),
                          ),
                          SimpleDialogOption(
                            onPressed: () async =>
                                await _pickImageFromGallery(),
                            child: const Text('Select from Gallery'),
                          ),
                        ],
                      );
                    },
                  );
                }),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 30, left: 20.0, right: 20, bottom: 10),
                  child: Text(
                    'Faculty Name:DR BAHARU BIN KEMAT,\nEmail : baharu.kemat@uniru.edu.my',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<Null> _pickImageFromGallery() async {
    final PickedFile? imageFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
  }

  Future<Null> _pickImageFromCamera() async {
    //final PickedFile? imageFile =
    //await ImagePicker.getImage(source: ImageSource.camera);
  }
}
