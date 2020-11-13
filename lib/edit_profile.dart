import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_profilpage_cupertino_inisiated/profile.dart';

class EditProfile extends StatefulWidget {
  final String id, name, desc, photoUrl;

  EditProfile(
      {@required this.name,
      @required this.id,
      @required this.desc,
      @required this.photoUrl});

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController idController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController descController = new TextEditingController();
  TextEditingController photoController = new TextEditingController();
  final globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      key: globalKey,
      navigationBar: CupertinoNavigationBar(
        leading: GestureDetector(
          child: Icon(
            Icons.close,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        middle: Container(
          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Row(
            children: [
              Text("Edit Profile"),
            ],
          ),
        ),
        trailing: GestureDetector(
          child: Icon(
            Icons.check,
            color: Colors.blueAccent,
          ),
          onTap: () {
            showAlertDialogCupertino(context);
          },
        ),
      ),
      child: SafeArea(
          child: Container(
        margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(children: [
          Column(
            children: [
              // ID
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Id",
                    style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                  )),
              CupertinoTextField(
                controller: idController,
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))),
              ),
              // NAME
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Name",
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    )),
              ),
              CupertinoTextField(
                controller: nameController,
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))),
              ),
              // DESCRIPTION
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Description",
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    )),
              ),
              CupertinoTextField(
                controller: descController,
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))),
                maxLines: 3,
              ),
              // PHOTO URL
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Photo URL",
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    )),
              ),
              CupertinoTextField(
                controller: photoController,
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))),
                maxLines: 2,
              ),
              //
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Provide your personal information, even if the accounts is used for business, a pet or something else. This won't be a part of your public profile.",
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    )),
              ),
            ],
          ),
        ]),
      )),
    );
  }

  void showAlertDialogCupertino(BuildContext context) {
    // final context = globalKey.currentState.overlay.context;
    showDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              // final dialog = CupertinoAlertDialog(
              title: Text('Profile Changed'),
              content: Text("Do you want to save your edits ?"),
              actions: [
                CupertinoDialogAction(
                    isDefaultAction: true,
                    onPressed: () {
                      Navigator.pop(globalKey.currentContext);
                    },
                    child: Text('Cancel')),
                CupertinoDialogAction(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage(
                                  name: nameController.text,
                                  id: idController.text,
                                  desc: descController.text,
                                  photoUrl: photoController.text)));
                    },
                    child: Text('Save'))
              ],
            ),
        // showDialog(context: context, builder: (x) => dialog);
        barrierColor: Colors.black.withOpacity(0.8),
        barrierDismissible: false);
  }
}
