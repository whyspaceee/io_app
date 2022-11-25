// ignore_for_file: prefer_const_constructors

import 'package:app_io/logic/cubit/firebase_cubit.dart';
import 'package:app_io/logic/cubit/flora_search_cubit.dart';
import 'package:app_io/presentation/flora_fauna_screen/components/card.dart';
import 'package:app_io/presentation/flora_fauna_screen/components/search_bar.dart';
import 'package:app_io/presentation/flora_fauna_screen/components/title.dart';
import 'package:app_io/scheme/colorscheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FloraScreen extends StatefulWidget {
  const FloraScreen({super.key});

  @override
  State<FloraScreen> createState() => _FloraScreenState();
}

class _FloraScreenState extends State<FloraScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(gradient: floraGradient),
      child: ListView(children: [
        SizedBox(height: 32),
        FFTitle(title: 'Flora'),
        SizedBox(
          height: 24,
        ),
        SearchBar(
            controller: TextEditingController(),
            color: green,
            onChanged: (p0) =>
                context.read<FloraSearchCubit>().searchFlora(p0)),
        SizedBox(height: 16),
        BlocBuilder<FloraSearchCubit, FloraSearchState>(
          builder: (context, state) {
            return ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: state.floraList.length,
                itemBuilder: ((context, index) => FFListCard(
                      model: state.floraList[index],
                      color: green,
                    )));
          },
        ),
      ]),
    );
  }
}
