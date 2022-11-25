import 'dart:ui';

import 'package:app_io/logic/cubit/upload_cubit.dart';
import 'package:app_io/scheme/colorscheme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AIPrompt extends StatefulWidget {
  const AIPrompt({super.key});

  @override
  State<AIPrompt> createState() => _AIPromptState();
}

class _AIPromptState extends State<AIPrompt> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Container(
      height: 220,
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          BlocBuilder<UploadCubit, UploadState>(
            builder: (context, state) {
              if (state.status == Status.initial) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/flowers.jpeg'),
                          fit: BoxFit.cover),
                      color: yellowText),
                  height: 220,
                );
              }
              if (state.status == Status.loaded) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: yellowText),
                  height: 220,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: CachedNetworkImage(
                      width: double.infinity,
                      imageUrl: state.url,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              } else {
                return Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(32),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: yellowText),
                  child: Center(
                    child: (Container(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                      width: 80,
                      height: 80,
                    )),
                  ),
                  height: 220,
                );
              }
            },
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Positioned(
                child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                alignment: Alignment.center,
                height: 100,
                color: Color.fromRGBO(44, 44, 44, 0.6),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Generate Image using OpenAI',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 48,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: TextField(
                              controller: controller,
                              style: TextStyle(fontSize: 14),
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(20)),
                                  hintText: 'Describe your flora or fauna'),
                            )),
                            SizedBox(width: 8),
                            IconButton(
                                iconSize: 28,
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    fixedSize:
                                        MaterialStatePropertyAll(Size(64, 64)),
                                    backgroundColor:
                                        MaterialStatePropertyAll(yellowText),
                                    foregroundColor:
                                        MaterialStatePropertyAll(Colors.white)),
                                onPressed: () => {
                                      if (controller.value.text.isNotEmpty)
                                        {
                                          context.read<UploadCubit>().getUrl(
                                              controller.value.text.trim()),
                                          controller.clear()
                                        }
                                    },
                                icon: Icon(CupertinoIcons.arrow_right))
                          ],
                        ),
                      )
                    ]),
              ),
            )),
          )
        ],
      ),
    );
  }
}
