import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:firebase_storage/firebase_storage.dart';

import 'package:flutter/material.dart';

// getting snapped photo from firebase storage
class FireStoreDataBase {
  String? downloadURL;

  Future getData() async {
    try {
      await downloadURLExample();
      return downloadURL;
    } catch (e) {
      debugPrint("Error - $e");
      return null;
    }
  }

  Future<void> downloadURLExample() async {
    downloadURL = await FirebaseStorage.instance
        .ref()
        .child("FB_IMG_15869205070055304.jpg")
        .getDownloadURL();
    debugPrint(downloadURL.toString());
  }
}