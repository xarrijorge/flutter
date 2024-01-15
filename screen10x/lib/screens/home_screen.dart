// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpeg'),
            fit: BoxFit.cover,
            opacity: 0.1,
          ),
        ),
        margin: EdgeInsets.all(0.0),
        padding: EdgeInsets.all(0.0),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('Pressed');
                      },
                      icon: Icon(
                        Icons.arrow_back,
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.grey.withOpacity(0.2)),
                        shape: MaterialStateProperty.all(CircleBorder()),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("Scan QR",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                        textAlign: TextAlign.center),
                    Text(
                      "You can find it on the scooters front panel free to unlock+ \$0.39/min + tax",
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          decoration: TextDecoration.none),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Icon(
                  Icons.qr_code,
                  size: 300.0,
                  color: Colors.white,
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.circle,
                            size: 80.0,
                            color: Colors.grey[850],
                          ),
                          Icon(
                            Icons.flashlight_on_rounded,
                            size: 35.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 80.0,
                        child: Container(
                          margin: EdgeInsets.only(top: 20.0),
                          child: ElevatedButton(
                              onPressed: () {
                                print('Pressed');
                              },
                              child: Text(
                                'Button',
                                style: TextStyle(
                                    fontSize: 25.0, color: Colors.white),
                              ),
                              style: ButtonStyle(
                                alignment: Alignment.center,
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.green[800],
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
