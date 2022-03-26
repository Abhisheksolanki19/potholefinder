import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

class StorageMethods {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Adding images to firebase stoarge
  Future<String> uploadImageToStorage(
      String childName, Uint8List file) async {
    Reference ref =
        _storage.ref().child(childName).child(_auth.currentUser!.uid);

    // if (isPost) {
    //   String id = const Uuid().v1();
    //   ref = ref.child(id);
    // }

    UploadTask uploadTask = ref.putData(file);
    //Not work for web/ Only for mobile App
    // ref.putFile(File(_file.path));

    TaskSnapshot snap = await uploadTask;
    String downloadUrl = await snap.ref.getDownloadURL();
    return downloadUrl;
  }
}
