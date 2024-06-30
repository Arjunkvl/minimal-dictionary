import 'package:dictionary/Presentation/core/text_styles.dart';
import 'package:dictionary/application/HomePage/bloc/home_page_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchField extends StatelessWidget {
  SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
      child: TextField(
        onSubmitted: (word) {
          context.read<HomePageBloc>().add(StartSearching(word: word));
        },
        style: const TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: InputDecoration(
            hintText: ' Type Here',
            hintStyle: materialthemebodymedium(Colors.white),
            fillColor: Colors.black,
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(50)),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(50))),
      ),
    );
  }
}
