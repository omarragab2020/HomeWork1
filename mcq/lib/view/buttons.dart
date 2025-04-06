import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future showFinishDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Do you like finish exam !"),
        content: Text("you can't add more answers after finish"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Close Exam"),
          ),
        ],
      );
    },
  );
}
