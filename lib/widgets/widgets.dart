import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//yang dibutuhkan hanya class Platform
import 'dart:io' show Platform;

///widgets loading app
Widget wAppLoading() {
  return Center(
    //bentuk loading, agak terlihat seperti loading IOS
    child: Platform.isIOS
        ? CupertinoActivityIndicator()
        : CircularProgressIndicator(),
  );
}

Widget wAauthTitle({required String title, required String subTitle}) {
  return Container(
    //agar tulisan mepet kiri
    width: double.infinity,
    padding: EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 3),
        Text(subTitle)
      ],
    ),
  );
}

Widget wTextDivider() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: <Widget>[
        //garis
        Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text('OR CONNECT WITH',
              style: TextStyle(fontSize: 12, color: Colors.grey)),
        ),
        Expanded(child: Divider()),
      ],
    ),
  );
}
