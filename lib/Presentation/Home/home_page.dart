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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            const SearchField(),
            const SizedBox(
              height: 50,
            ),
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
              if (state is SearchedHasMeaning) {
                return Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          'Meanings',
                          style: materialthemeheadlinesmall(Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: ListView.builder(
                          physics: const ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: state
                              .meaningDetails.meanings![0].definitions!.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 60, right: 30, bottom: 15),
                              child: Text(
                                "• ${state.meaningDetails.meanings![0].definitions![index].definition!}",
                                style: materialthemebodylarge(Colors.black),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                );
              }
              if (state is SearchedHasNoMeaning) {
                return Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Text(
                            state.meaningDetails.message!,
                            style: materialthemebodylarge(Colors.black),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Text(
                            'Only one word at a time!!',
                            style: materialthemebodylarge(Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
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
