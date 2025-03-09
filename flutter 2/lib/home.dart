import 'package:flutter/cupertino.dart'
    show BuildContext, Placeholder, State, StatefulWidget, Widget;
import 'package:flutter/material.dart';

import 'icons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Travel Distination"),
        actions: [
          Icon(Icons.favorite_outline_outlined),
          SizedBox(width: 12),
          Icon(Icons.share),
        ],
        backgroundColor: Colors.grey[300],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset("assets/images/1.jpg"),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.photo_camera, color: Colors.white, size: 18),
                        SizedBox(width: 5),
                        Text("Gallery", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ocean lake campground',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.place, color: Colors.red),

                          Text(
                            'Kandersteg, Switzerland',
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 18,
                            ),
                          ),

                          Spacer(),

                          Icon(Icons.star, color: Colors.red),
                          Text('41'),
                        ],
                      ),
                      Divider(),
                      IconsApp(),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.info_outline, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        "About",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                color: Colors.cyan[50],
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.local_offer, color: Colors.lightBlue),
                          Text(
                            "1.578 km above the sea leavel",
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        "lake oeschinen lies at the foot of the bluemlisalp in the bernese alps . situated 1,578 meters above sea level , it's one of the larger alpine lakes . A gondola ride from kandersteg , follwed by a half- hour walk through pastures and pine forest , leads you to the lake , which warms to 20 degress celisius in the summer. activities enjoyed here include rowing , and riding the summer toboggan run.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple[50],
        child: Icon(Icons.bookmark, color: Colors.purple),
      ),
    );
  }
}
