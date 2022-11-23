import 'package:app_io/logic/cubit/firebase_cubit.dart';
import 'package:app_io/presentation/flora_fauna_screen/components/card.dart';
import 'package:app_io/presentation/flora_fauna_screen/components/search_bar.dart';
import 'package:app_io/presentation/flora_fauna_screen/components/title.dart';
import 'package:app_io/presentation/home_screen/home_screen.dart';
import 'package:app_io/scheme/colorscheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class FaunaScreen extends StatelessWidget {
  const FaunaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(gradient: faunaGradient),
      child: ListView(children: [
        SizedBox(height: 32),
        FFTitle(title: 'Fauna'),
        SizedBox(
          height: 24,
        ),
        SearchBar(color: red),
        SizedBox(height: 16),
        BlocBuilder<FirestoreCubit, FirebaseCubitState>(
          builder: (context, state) {
            return ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: state.faunaList.length,
                itemBuilder: ((context, index) => FFListCard(
                      model: state.faunaList[index],
                      color: red,
                    )));
          },
        ),
      ]),
    );
    ;
  }
}
