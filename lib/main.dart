// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app_io/data/repository/firestore_repository.dart';
import 'package:app_io/logic/cubit/firebase_cubit.dart';
import 'package:app_io/presentation/flora_screen/main.dart';
import 'package:app_io/presentation/home_screen/home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => FirestoreRepository(FirebaseFirestore.instance),
      child: BlocProvider(
        create: (_) => FirestoreCubit(_.read<FirestoreRepository>()),
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              bottomAppBarColor: Colors.white,
              useMaterial3: true,
              textTheme: GoogleFonts.beVietnamProTextTheme(),
              fontFamily: GoogleFonts.beVietnamPro().fontFamily,
            ),
            home: const FloraScreen()),
      ),
    );
  }
}
