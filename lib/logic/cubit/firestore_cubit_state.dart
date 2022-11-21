part of 'firebase_cubit.dart';

enum FirestoreStatus { initial, loading, loaded, error }

class FirebaseCubitState extends Equatable {
  final FirestoreStatus status;
  final List<EntityModel> floraList;
  final List<EntityModel> faunaList;

  const FirebaseCubitState(
      {required this.faunaList, required this.floraList, required this.status});

  FirebaseCubitState.initial()
      : this(status: FirestoreStatus.initial, floraList: [], faunaList: []);

  @override
  List<Object> get props => [status, faunaList, floraList];
}
