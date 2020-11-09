import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profilpage_cupertino_inisiated/custom/costum_text.dart';
import 'package:flutter_profilpage_cupertino_inisiated/custom/custom_button.dart';
import 'package:flutter_profilpage_cupertino_inisiated/edit_profile.dart';

class ProfilePage extends StatefulWidget {
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
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => EditProfile()));
          },
        ),
        middle: Container(
          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Row(
            children: [
              Text("Your ID"),
            ],
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
                    backgroundImage: NetworkImage(
                        "https://www.mdblakehurst.catholic.edu.au/wp-content/uploads/sites/39/2019/05/Person-icon.jpg"),
                  ),
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
                      "Your Name",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ))),
            Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 20),
                    child: Text(
                      "Your Description",
                      style: TextStyle(fontSize: 12),
                    ))),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(text: "Edit Profile", onProcessed: () {}),
                  CustomButton(text: "Promotions", onProcessed: () {}),
                  CustomButton(text: "Insights", onProcessed: () {}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
