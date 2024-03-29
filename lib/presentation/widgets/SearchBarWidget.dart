import 'package:flutter/material.dart';
import 'package:muna_player_app/core/colors.dart';
import 'package:muna_player_app/presentation/screens/HomeController.dart';

class SearchBar extends StatelessWidget {
  final HomeController homeController;
  final EdgeInsets margin;

  SearchBar({
    this.homeController,
    this.margin = const EdgeInsets.symmetric(horizontal: 28),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        padding: EdgeInsets.symmetric(
            horizontal: 10, vertical: 10),
        margin: margin,
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: Theme
              .of(context)
              .scaffoldBackgroundColor,
        ),
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Search artist',
            hintStyle: TextStyle(
              fontSize: 12,
              color: AppColors.black,
              height: 1,
            ),
          ),
          onSubmitted: (String str){
            homeController.search(str);
          },
        )
    );
  }
}