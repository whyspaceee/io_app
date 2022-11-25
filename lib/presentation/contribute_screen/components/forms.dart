import 'package:app_io/logic/forms/submitformbloc.dart';
import 'package:app_io/scheme/colorscheme.dart';
import 'package:app_io/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class UploadForms extends StatelessWidget {
  const UploadForms({super.key});

  @override
  Widget build(BuildContext context) {
    final submitFormBloc = context.read<SubmitFormBloc>();
    return Theme(
      data: Theme.of(context).copyWith(
          inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
      )),
      child: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ChoiceChipFieldBlocBuilder(
              padding: EdgeInsets.all(0),
              selectedColor: yellowText,
              selectFieldBloc: submitFormBloc.type,
              itemBuilder: (context, value) =>
                  ChipFieldItem(label: Text(value.capitalize())),
              decoration: InputDecoration(fillColor: Colors.transparent),
            ),
            TextFieldBlocBuilder(
              textFieldBloc: submitFormBloc.name,
              autofillHints: [AutofillHints.username, AutofillHints.email],
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            TextFieldBlocBuilder(
              textFieldBloc: submitFormBloc.uses,
              autofillHints: [AutofillHints.username, AutofillHints.email],
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Uses',
              ),
            ),
            TextFieldBlocBuilder(
              textFieldBloc: submitFormBloc.rating,
              autofillHints: [AutofillHints.username, AutofillHints.email],
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Rating',
              ),
            ),
            TextFieldBlocBuilder(
              maxLines: 12,
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.top,
              textFieldBloc: submitFormBloc.description,
              autofillHints: [AutofillHints.username, AutofillHints.email],
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  labelText: 'Description',
                  hintText: 'Description'),
            ),
            SwitchFieldBlocBuilder(
                booleanFieldBloc: submitFormBloc.dangerous,
                body: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Dangerous?',
                    ),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                )),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: yellowText, foregroundColor: Colors.white),
              onPressed: () => submitFormBloc.submit(),
              child: Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}
