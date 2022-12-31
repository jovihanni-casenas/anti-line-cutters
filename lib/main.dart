import 'dart:html';

import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:firebase_storage/firebase_storage.dart';

import 'firestore_database.dart';
import 'firestore_img.dart';

import 'monitoring_box.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        backgroundColor: Colors.grey[300],
      ),
      home: MyHomePage(title: 'Anti-Line Cutters Floor Mat Monitoring App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;
  var width, height;
  var notifier = Colors.grey[300];
  bool personDetected = false;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    widget.width = MediaQuery.of(context).size.width;
    widget.height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // notifier box
            MonitoringBox(
              width: widget.width, 
              height: widget.height, 
              personDetected: widget.personDetected, 
              notifier: widget.notifier!,
            ),
            // tiles of images
            Wrap(
              direction: Axis.horizontal,
              spacing: 5,
              runSpacing: 5,
              children: <Widget>[
                // Tile 1: snapped photo
                FireStoreImg(
                  width: widget.width, 
                  height: widget.height, 
                  personDetected: widget.personDetected
                ),
                // Tile 2: snapped photo
                FireStoreImg(
                  width: widget.width, 
                  height: widget.height, 
                  personDetected: widget.personDetected
                ),
                // Tile 1: after sensed photo
                FireStoreImg(
                  width: widget.width, 
                  height: widget.height, 
                  personDetected: widget.personDetected
                ),
                // Tile 2: after sensed photo
                FireStoreImg(
                  width: widget.width, 
                  height: widget.height, 
                  personDetected: widget.personDetected
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}