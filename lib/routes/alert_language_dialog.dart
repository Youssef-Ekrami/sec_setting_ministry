import 'dart:ui';
import 'package:flutter/material.dart';

void showCustomDialog(BuildContext context,
    {double iconSize = 30, double textSize = 18}) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: EdgeInsets.all(0),
          content: Container(
            width: 350,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.language, size: iconSize),
                        SizedBox(width: 10),
                        Text('Arabic',
                            style: TextStyle(
                              fontSize: textSize,
                              fontFamily: "PoppinsRegular",
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: 250,
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(height: 8),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.language, size: iconSize),
                        SizedBox(width: 10),
                        Text('English',
                            style: TextStyle(
                              fontSize: textSize,
                              fontFamily: "PoppinsRegular",
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
