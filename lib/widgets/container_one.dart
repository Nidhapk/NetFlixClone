import 'package:flutter/material.dart';
import 'package:netflixclone/colors/color_sheet.dart';

class ContainerOne extends StatelessWidget {
  final String text;
  const ContainerOne({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: shadeGrey)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 15, right: 15),
          child: Text(
            text,
            style: const TextStyle(color: shadeGrey),
          ),
        ),
      ),
    );
  }
}
