// ignore_for_file: prefer_const_constructors

import 'package:app_io/logic/cubit/firebase_cubit.dart';
import 'package:app_io/presentation/home_screen/components/florafauna_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final floraFaunaList = BlocBuilder<FirestoreCubit, FirebaseCubitState>(
  builder: (context, state) {
    if (state.status == FirestoreStatus.loaded) {
      final combined = state.faunaList + state.floraList;
      return Container(
        margin: EdgeInsets.only(left: 16),
        height: 330,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: combined.length,
            itemBuilder: (context, index) => FloraFaunaCard(
                model: combined[index],
                type: state.faunaList.contains(combined[index])
                    ? 'fauna'
                    : 'flora',
                asset: Image.asset('assets/cactus.png'))),
      );
    } else {
      return Container(child: CircularProgressIndicator());
    }
  },
);
