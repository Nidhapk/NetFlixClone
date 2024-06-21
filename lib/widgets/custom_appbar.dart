import 'package:flutter/material.dart';
import 'package:netflixclone/colors/color_sheet.dart';
import 'package:netflixclone/widgets/container_one.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 20),
                child: Image.asset(
                  'lib/assets/netflix.png',
                  height: 40,
                  width: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 282),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search_rounded,
                      color: shadeGrey,
                      size: 35,
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ContainerOne(
                text: 'TV Shows',
              ),
              ContainerOne(
                text: 'Movies',
              ),
              ContainerOne(
                text: 'Categories',
              )
            ],
          )
        ],
      ),
    );
  }
}
