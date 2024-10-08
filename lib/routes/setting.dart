import 'dart:ui';

import 'package:flutter/material.dart';

import 'about_dialog.dart';
import 'alert_language_dialog.dart';

class SettingMinistry extends StatefulWidget {
  const SettingMinistry({super.key});

  @override
  _SettingMinistryState createState() => _SettingMinistryState();
}

class _SettingMinistryState extends State<SettingMinistry> {
  bool isSwitched = true; // Switch state

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(340, 70),
          child: Container(
              margin: EdgeInsets.only(top: 10, right: 10, left: 10),
              width: 340,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFF0FAB7D),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 6,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: AppBar(
                title: Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "PoppinsRegular",
                  ),
                ),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,
                iconTheme: IconThemeData(
                  color: Colors.white,
                ),
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12, top: 25),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.notifications_none_outlined,
                    color: Color(0xFF0FAB7D),
                    size: 40,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Notification",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "PoppinsRegular",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 360,
                height: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 50, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "App Notification",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "PoppinsRegular",
                      ),
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                      activeColor: Color(0xFF0FAB7D),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.add_circle_outline,
                    color: Color(0xFF0FAB7D),
                    size: 40,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "More",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "PoppinsRegular",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 360,
                height: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  showCustomDialog(context);
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 27, right: 3, top: 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Language",
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: "PoppinsRegular",
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 17,
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 27, right: 3, top: 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Dark Mode",
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: "PoppinsRegular",
                        ),
                      ),
                      Icon(
                        Icons.dark_mode_outlined,
                        color: Colors.black,
                        size: 17,
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  showInfoDialog(context);
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 27, right: 3, top: 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "About",
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: "PoppinsRegular",
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 17,
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 170),
                  alignment: Alignment.center,
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF0FAB7D),
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.logout_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Logout",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "PoppinsRegular",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
