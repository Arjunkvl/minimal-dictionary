import 'package:dictionary/Presentation/Home/widgets/search_field.dart';
import 'package:dictionary/Presentation/core/text_styles.dart';
import 'package:dictionary/application/HomePage/bloc/home_page_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            SearchField(),
            BlocBuilder<HomePageBloc, HomePageState>(builder: (context, state) {
              if (state is HomePageInitial) {
                return Container();
              }
              if (state is SearchingState) {
                return const Padding(
                  padding: EdgeInsets.only(top: 150.0),
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              if (state is SearchedState) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70.0, left: 30),
                      child: Text(
                        state.meaningDetails.word!,
                        style: materialthemeheadlinesmall(Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 30.0, left: 60, right: 30, bottom: 30),
                      child: Flexible(
                        child: Text(
                          state.meaningDetails.meanings![0].definitions![0]
                              .definition!,
                          style: materialthemebodymedium(Colors.black),
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return const Center(
                  child: Text('Internal Error'),
                );
              }
            })
          ],
        ),
      ),
    );
  }
}
