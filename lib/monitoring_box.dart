import 'package:flutter/material.dart';
import 'firestore_img.dart';
import 'package:flutter/cupertino.dart';

class MonitoringBox extends StatelessWidget{
  MonitoringBox({required this.width, required this.height, required this. personDetected, required this.notifier, super.key});

  double width, height;
  bool personDetected;
  Color notifier;


  @override 
  Widget build(BuildContext context){
    return GenBox(
      width: width * 0.4,
      height: height * 0.05,
      child: Container(
        width: width * 0.4,
        height: height * 0.05,
        decoration: BoxDecoration(
          color: notifier,
          border: Border.all(
            color: Colors.deepOrange,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            personDetected ?
            "Person detected"
            : "Idle mode",
          ),
        ),
      ),
    );
  }
}