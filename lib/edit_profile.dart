import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController newController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: GestureDetector(
          child: Icon(
            Icons.close,
            color: Colors.black,
          ),
          onTap: () {},
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
            color: Colors.black,
          ),
          onTap: () {},
        ),
      ),
      child: SafeArea(
          child: Container(
        margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: [
            CupertinoTextField(
              controller: newController,
              placeholder: "id",
            ),
            // TextField(
            //   controller: newController,
            //   decoration: InputDecoration(
            //     border: UnderlineInputBorder(),
            //     labelText: "Name",
            //   ),
            // ),
            // TextField(
            //   controller: newController,
            //   decoration: InputDecoration(
            //     border: UnderlineInputBorder(),
            //     labelText: "Description",
            //   ),
            // ),
            // TextField(
            //   controller: newController,
            //   decoration: InputDecoration(
            //       border: UnderlineInputBorder(),
            //       labelText: "Photo URL",
            //       helperText:
            //           "Provide your personal information, even if the accounts is used for business, a pet or something else. This won't be a part of your public profile."),
            // ),
          ],
        ),
      )),
    );
  }
}
