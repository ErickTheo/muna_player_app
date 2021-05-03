import 'package:flutter/material.dart';
import 'package:muna_player_app/core/colors.dart';

class SearchBar extends StatelessWidget {

  const SearchBar({
    this.margin = const EdgeInsets.symmetric(horizontal: 28),
  });

  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
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

        )
    );
  }
}