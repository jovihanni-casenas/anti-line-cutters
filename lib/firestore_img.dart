import 'dart:html';

import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:firebase_storage/firebase_storage.dart';

import 'firestore_database.dart';


class FireStoreImg extends StatelessWidget{
  FireStoreImg({required this.width, required this.height, required this. personDetected, super.key});

  double width, height;
  bool personDetected;

  @override 
  Widget build(BuildContext context){
    return GenBox(
      width: width * 0.4,
      height: height * 0.3,
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: personDetected ?
                  Colors.deepOrange
                  : Colors.grey[300]!,
                ),
              ),
              // child: const Icon(Icons.image),
              child: FetchImg1(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Tile 1"),
          ),
        ]
      ),
    );
  }
}

// general box
class GenBox extends StatelessWidget{
  // color is temporary since the box will depend its color on its child
  GenBox({this.color, this.width, this.height, this.child, super.key});

  var color, width, height, child;

  @override 
  Widget build(BuildContext context){
    return Container(
      child: child,
      width: width,
      height: height,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        boxShadow: [
          BoxShadow(
            color: Colors.grey[500]!,
            offset: const Offset(5, 5),
            blurRadius: 5.0,
          ),
          const BoxShadow(
            color: Colors.white,
            offset: Offset(-5, -5),
            blurRadius: 5.0,
          ),
        ],
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}


@override
Widget FetchImg1(){
  return FutureBuilder(
    future: FireStoreDataBase().getData(),
    builder:(context, snapshot) {
      if (snapshot.hasError) {
            return const Text(
              "Something went wrong",
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Image.network(
              snapshot.data.toString(),
            );
          }
          return const Center(child: CircularProgressIndicator());
    },
  );
}