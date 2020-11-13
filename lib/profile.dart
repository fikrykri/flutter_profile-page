import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profilpage_cupertino_inisiated/custom/costum_text.dart';
import 'package:flutter_profilpage_cupertino_inisiated/custom/custom_button.dart';
import 'package:flutter_profilpage_cupertino_inisiated/edit_profile.dart';

class ProfilePage extends StatefulWidget {
  final String id, name, desc, photoUrl;

  ProfilePage({this.name, this.id, this.desc, this.photoUrl});
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: GestureDetector(
            child: Icon(
              Icons.add,
              color: Colors.black,
            ),
            onTap: () {},
          ),
          middle: Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Row(
              children: [Text(widget.id == null ? "Your Id" : widget.id)],
            ),
          ),
          trailing: GestureDetector(
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onTap: () {},
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.grey[300]),
                        bottom: BorderSide(color: Colors.grey[300]))),
                child: Center(
                  child: CupertinoButton(
                    child: Text(
                      "See Covid-19 Business Resources",
                      style: TextStyle(fontSize: 12),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey,
                        backgroundImage: widget.photoUrl == null
                            ? NetworkImage(
                                "https://www.mdblakehurst.catholic.edu.au/wp-content/uploads/sites/39/2019/05/Person-icon.jpg")
                            : NetworkImage(widget.photoUrl)),
                    CustomText(numbers: 0, text: "Posts"),
                    CustomText(numbers: 124, text: "Followers"),
                    CustomText(numbers: 166, text: "Following"),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 15),
                      child: Text(
                        widget.name == null ? "Your Name" : widget.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 20),
                      child: Text(
                        widget.desc == null ? "Your Description" : widget.desc,
                        style: TextStyle(fontSize: 14),
                      ))),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                        text: "Edit Profile",
                        onProcessed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfile(
                                      name: widget.name,
                                      id: widget.id,
                                      desc: widget.desc,
                                      photoUrl: widget.photoUrl)));
                        }),
                    CustomButton(
                        text: "Promotions",
                        onProcessed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  CupertinoAlertDialog(
                                    title: Text('Profile Changed'),
                                    content:
                                        Text("Do you want to save your edits"),
                                    actions: [
                                      CupertinoDialogAction(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text('Cancel')),
                                      CupertinoDialogAction(
                                          onPressed: () {}, child: Text('Save'))
                                    ],
                                  ),
                              barrierColor: Colors.black.withOpacity(0.8),
                              barrierDismissible: false);
                        }),
                    CustomButton(text: "Insights", onProcessed: () {}),
                  ],
                ),
              )
            ],
          ),
        )
        // : Center(child: CircularProgressIndicator()),
        );
  }
}
