import 'package:app_io/data/models/entity_model.dart';
import 'package:app_io/logic/cubit/firebase_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'fauna_search_state.dart';

class FaunaSearchCubit extends Cubit<FaunaSearchState> {
  final FirestoreCubit _firestoreCubit;
  FaunaSearchCubit(this._firestoreCubit)
      : super(FaunaSearchState(faunaList: _firestoreCubit.state.faunaList)) {
    _firestoreCubit.stream.listen((state) {
      emit(FaunaSearchState(faunaList: state.faunaList));
    });
  }

  void searchFauna(String search) {
    final fauna = _firestoreCubit.state.faunaList
        .where((element) =>
            element.name!.toLowerCase().contains(search.toLowerCase()))
        .toList();
    emit(FaunaSearchState(faunaList: fauna));
  }
}
