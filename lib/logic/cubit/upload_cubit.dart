import 'package:app_io/data/api/apiprovider.dart';
import 'package:app_io/logic/cubit/flora_search_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'upload_state.dart';

class UploadCubit extends Cubit<UploadState> {
  ApiProvider apiProvider;
  UploadCubit(this.apiProvider) : super(UploadState.initial());

  void getUrl(String prompt) async {
    emit(UploadState(url: '', status: Status.loading));
    try {
      String url = await apiProvider.getUrl(prompt);
      emit(UploadState(url: url, status: Status.loaded));
    } on Exception catch (e) {
      emit(UploadState(url: '', status: Status.error));
    }
  }
}
