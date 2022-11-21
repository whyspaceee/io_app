import 'dart:async';
import 'package:app_io/data/models/entity_model.dart';
import 'package:app_io/data/repository/firestore_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

part 'firestore_cubit_state.dart';

class FirestoreCubit extends Cubit<FirebaseCubitState> {
  FirestoreRepository repository;
  late StreamSubscription floraSubscription;
  late StreamSubscription faunaSubscription;

  void setFlora(QuerySnapshot<Map<String, dynamic>> event) {
    emit(FirebaseCubitState(
        status: FirestoreStatus.loaded,
        faunaList: state.faunaList,
        floraList:
            event.docs.map((e) => EntityModel.fromJson(e.data())).toList()));
  }

  void setFauna(QuerySnapshot<Map<String, dynamic>> event) {
    emit(FirebaseCubitState(
        status: FirestoreStatus.loaded,
        faunaList:
            event.docs.map((e) => EntityModel.fromJson(e.data())).toList(),
        floraList: state.floraList));
  }

  FirestoreCubit(this.repository) : super(FirebaseCubitState.initial()) {
    floraSubscription = repository.getFloraStream().listen((event) {
      setFlora(event);
    });
    faunaSubscription = repository.getFaunaStream().listen((event) {
      setFauna(event);
    });
  }

  @override
  Future<void> close() {
    floraSubscription.cancel();
    return super.close();
  }
}
