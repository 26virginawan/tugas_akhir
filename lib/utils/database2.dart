import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uas_mobile/auth/sign_in.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _mainCollection = _firestore.collection('detail');

class Database2 {
  static Future<void> addItem(
      {String brand, String color, String stok, String price}) async {
    DocumentReference documentReferencer =
        _mainCollection.doc(userUid).collection('detail').doc();

    Map<String, dynamic> data = <String, dynamic>{
      "brand": brand,
      "color": color,
      "stok": stok,
      "price": price,
    };

    await documentReferencer
        .set(data)
        .whenComplete(() => print("Note item added to the database"))
        .catchError((e) => print(e));
  }

  static Future<void> updateItem({
    String brand,
    String color,
    String stok,
    String price,
    String docId,
  }) async {
    DocumentReference documentReferencer =
        _mainCollection.doc(userUid).collection('detail').doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      "brand": brand,
      "color": color,
      "stok": stok,
      "price": price,
    };
    await documentReferencer
        .update(data)
        .whenComplete(() => print("Note item updated in the database"))
        .catchError((e) => print(e));
  }

  static Stream<QuerySnapshot> readItems() {
    CollectionReference notesItemCollection =
        _mainCollection.doc(userUid).collection('detail');

    return notesItemCollection.snapshots();
  }

  static Future<void> deleteItem({
    String docId,
  }) async {
    DocumentReference documentReferencer =
        _mainCollection.doc(userUid).collection('detail').doc(docId);

    await documentReferencer
        .delete()
        .whenComplete(() => print('Note item deleted from the database'))
        .catchError((e) => print(e));
  }
}
