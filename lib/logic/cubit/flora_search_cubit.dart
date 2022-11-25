import 'package:app_io/data/models/entity_model.dart';
import 'package:app_io/logic/cubit/firebase_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'flora_search_state.dart';

class FloraSearchCubit extends Cubit<FloraSearchState> {
  final FirestoreCubit _firestoreCubit;
  FloraSearchCubit(this._firestoreCubit)
      : super(FloraSearchState(floraList: _firestoreCubit.state.floraList));

  void searchFlora(String search) {
    final flora = _firestoreCubit.state.floraList
        .where((element) =>
            element.name!.toLowerCase().contains(search.toLowerCase()))
        .toList();
    emit(FloraSearchState(floraList: flora));
  }
}
