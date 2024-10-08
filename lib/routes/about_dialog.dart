import 'dart:ui';
import 'package:flutter/material.dart';

void showInfoDialog(BuildContext context) {
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
          contentPadding: EdgeInsets.all(20),
          content: Container(
            constraints: BoxConstraints(
              minHeight: 250,
              maxHeight: 500,
            ),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 40,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "The Digital Egypt Pioneers initiative is a key component of Egypt's digital transformation strategy and investing in students' digital skills by offering specialized training programs and workshops in various technological fields so that Egypt can build a more prosperous future.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: "PoppinsRegular",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
