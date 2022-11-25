// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final TextEditingController controller;
  final void Function(String) onChanged;
  final Color color;
  const SearchBar(
      {super.key,
      required this.color,
      required this.onChanged,
      required this.controller});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      height: 64,
      child: Row(
        children: [
          Expanded(
              child: TextField(
            onChanged: widget.onChanged,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20)),
                hintText: 'Search...'),
          )),
          SizedBox(width: 8),
          IconButton(
              iconSize: 32,
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  fixedSize: MaterialStatePropertyAll(Size(64, 64)),
                  backgroundColor: MaterialStatePropertyAll(widget.color),
                  foregroundColor: MaterialStatePropertyAll(Colors.white)),
              onPressed: () => {},
              icon: widget.controller.value.text.isEmpty
                  ? Icon(Icons.search)
                  : Icon(Icons.cancel))
        ],
      ),
    );
  }
}
