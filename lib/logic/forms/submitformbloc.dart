import 'package:app_io/data/models/entity_model.dart';
import 'package:app_io/logic/cubit/firebase_cubit.dart';
import 'package:app_io/logic/cubit/upload_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class SubmitFormBloc extends FormBloc<String, String> {
  FirestoreCubit firestoreCubit;
  UploadCubit uploadCubit;

  final type = SelectFieldBloc(
      validators: [FieldBlocValidators.required], items: ['flora', 'fauna']);

  final dangerous = BooleanFieldBloc();

  final name = TextFieldBloc(
    validators: [FieldBlocValidators.required],
  );

  final uses = TextFieldBloc(
    validators: [FieldBlocValidators.required],
  );

  final description = TextFieldBloc(
    validators: [FieldBlocValidators.required],
  );

  final rating = TextFieldBloc(
    validators: [FieldBlocValidators.required],
  );

  SubmitFormBloc(this.firestoreCubit, this.uploadCubit) {
    addFieldBlocs(
        fieldBlocs: [type, dangerous, name, uses, description, rating]);
  }

  @override
  onSubmitting() async {
    try {
      if (type.value == 'flora') {
        firestoreCubit.uploadFlora(EntityModel(
            name: name.value,
            dangerous: dangerous.value == 'dangerous' ? true : false,
            rating: rating.valueToInt,
            description: description.value,
            photoUrl: uploadCubit.state.url.isNotEmpty
                ? uploadCubit.state.url
                : "https://firebasestorage.googleapis.com/v0/b/io-survivalguide.appspot.com/o/flora%2Fflowers.jpeg?alt=media&token=8771d2f5-a64f-4d37-86d0-ef32631912e0",
            uses: uses.value));
        clear();
        emitSuccess(canSubmitAgain: false);
      } else {
        firestoreCubit.uploadFauna(EntityModel(
            name: name.value,
            dangerous: dangerous.value == 'dangerous' ? true : false,
            rating: rating.valueToInt,
            description: description.value,
            photoUrl: uploadCubit.state.url.isNotEmpty
                ? uploadCubit.state.url
                : "https://firebasestorage.googleapis.com/v0/b/io-survivalguide.appspot.com/o/flora%2Fflowers.jpeg?alt=media&token=8771d2f5-a64f-4d37-86d0-ef32631912e0",
            uses: uses.value));
        emitSuccess();
      }
    } catch (e) {
      emitFailure();
    }
  }
}
