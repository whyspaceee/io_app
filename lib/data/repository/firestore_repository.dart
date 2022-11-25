import 'package:app_io/data/models/entity_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreRepository {
  final FirebaseFirestore _firestore;

  FirestoreRepository(this._firestore);

  Stream<QuerySnapshot<Map<String, dynamic>>> getFloraStream() =>
      _firestore.collection('flora').snapshots();
  Stream<QuerySnapshot<Map<String, dynamic>>> getFaunaStream() =>
      _firestore.collection('fauna').snapshots();

  Future<QuerySnapshot<Map<String, dynamic>>> getSearchFlora(
      String search) async {
    final searched = await _firestore
        .collection('flora')
        .where('name', isGreaterThanOrEqualTo: search)
        .get();
    return searched;
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getSearchFauna(
      String search) async {
    final searched = await _firestore
        .collection('fauna')
        .where('name', isGreaterThanOrEqualTo: search)
        .get();
    return searched;
  }

  Future<void> addFlora(EntityModel model) async {
    try {
      await _firestore.collection('flora').add(model.toJson());
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  Future<void> addFauna(EntityModel model) async {
    try {
      await _firestore.collection('fauna').add(model.toJson());
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  Future<Map<String, dynamic>> getSingleFlora(String id) async {
    try {
      final doc = await _firestore.collection('flora').doc(id).get();
      return doc.data()!;
    } on Exception catch (e) {
      print(e.toString());
      return {};
    }
  }

  Future<Map<String, dynamic>> getSingleFauna(String id) async {
    try {
      final doc = await _firestore.collection('fauna').doc(id).get();
      return doc.data()!;
    } on Exception catch (e) {
      print(e.toString());
      return {};
    }
  }
}
