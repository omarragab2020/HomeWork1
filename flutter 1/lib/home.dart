import 'package:flutter/cupertino.dart'
    show BuildContext, Placeholder, State, StatefulWidget, Widget;
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Container(
              // height: 300,
              // width: 400,
              decoration: BoxDecoration(color: Color(0xffbbdefa)),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    buildRowItem(
                      text: 'A',
                      color: Colors.red,
                      text2: 'B',
                      color2: Colors.orange,
                      text3: 'C',
                      color3: Colors.amber,
                    ),
                    SizedBox(height: 20),

                    Container(
                      color: Color(0xffc5cae8),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'Fancy session',
                              style: TextStyle(
                                color: Color(0xff4251ae),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 10),

                            buildRowItem(
                              text: '1',
                              color: Color(0xff7e57c2),
                              text2: '2',
                              color2: Colors.purple[200],
                              text3: '3',
                              color3: Colors.deepPurple[200],
                            ),
                            SizedBox(height: 10),
                            buildRowItem(
                              text: '4',
                              color: Color(0xffb968c7),
                              text2: '5',
                              color2: Color(0xffb39ddb),
                              text3: '6',
                              color3: Color(0xffcf93d9),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),

                    Text(
                      'Info Cards',
                      style: TextStyle(
                        color: Color(0xff4251ae),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          color: Colors.white,
                          height: 80,
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '23',
                                style: TextStyle(
                                  color: Color(0xff1fa797),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Active',
                                style: TextStyle(
                                  color: Color(0xff1fa797),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          height: 80,
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '15',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Pending',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          color: Colors.white,
                          height: 80,
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '7',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Complete',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildRowItem({
  Color? color,
  String? text,
  Color? color2,
  Color? color3,
  String? text2,
  Color textColor = Colors.white,
  String? text3,
  double? height = 40,
  double? width = 50,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,

    children: [
      Container(
        height: height,
        width: width,
        color: color,
        child: Center(
          child: Text(text ?? '', style: TextStyle(color: textColor)),
        ),
      ),
      SizedBox(width: 20),
      Container(
        height: 40,
        width: 50,
        color: color2,
        child: Center(
          child: Text(text2 ?? '', style: TextStyle(color: textColor)),
        ),
      ),
      SizedBox(width: 20),

      Container(
        height: 40,
        width: 50,
        color: color3,
        child: Center(
          child: Text(text3 ?? '', style: TextStyle(color: textColor)),
        ),
      ),
    ],
  );
}
