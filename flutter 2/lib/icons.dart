import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconsApp extends StatelessWidget {
  const IconsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.cyan.withOpacity(.2),
              child: Icon(Icons.call, color: Colors.lightBlue, size: 30),
            ),
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.green.withOpacity(.2),
              child: Icon(Icons.send, color: Colors.green, size: 35),
            ),
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.purple.withOpacity(.2),
              child: Icon(Icons.share, color: Colors.purple, size: 35),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Call",
              style: TextStyle(color: Colors.lightBlue, fontSize: 18),
            ),
            Text("Route", style: TextStyle(color: Colors.green, fontSize: 18)),
            Text("Share", style: TextStyle(color: Colors.purple, fontSize: 18)),
          ],
        ),
      ],
    );
  }
}
