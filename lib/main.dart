import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profilpage_cupertino_inisiated/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: ProfilePage(),
    );
  }
}
