import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DesafioPage extends StatefulWidget {
  const DesafioPage({super.key});

  @override
  State<DesafioPage> createState() => _DesafioPageState();
}

class _DesafioPageState extends State<DesafioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 254, 108, 110),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/fogotinder.jpg',
                  width: 120,
                  height: 120,
                ),
                SizedBox(height: 30),
                Text(
                  'Location Changer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  'Plugins apps for Tinder',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.5,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 250,
                  height: 50,
                  child: ElevatedButton(onPressed: () {}, 
                    child: Text(
                      'Login with Facebook', 
                      style: TextStyle(
                        color: Color.fromARGB(255, 254, 108, 110),
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}