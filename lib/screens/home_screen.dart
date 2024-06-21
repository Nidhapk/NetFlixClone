import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflixclone/classes/url_list.dart';
import 'package:netflixclone/widgets/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: (BuildContext context, index, _) {
              return NotificationListener<UserScrollNotification>(
                  onNotification: (notification) {
                    final ScrollDirection direction = notification.direction;
                    if (direction == ScrollDirection.forward) {
                      scrollNotifier.value = true;
                    } else {
                      scrollNotifier.value = false;
                    }
                    return true;
                  },
                  child: Stack(children: [
                    Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                              Color.fromRGBO(75, 140, 158, 1),
                              Colors.black,
                            ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                        child: ListView(
                          children: [
                            Container(
                              height: 200,
                              // decoration: BoxDecoration(image:DecorationImage(image: NetworkImage(ListImages().imageList[0])) )
                              
                            )
                          ],
                        )),
                    scrollNotifier.value == true
                        ? const CustomAppBar()
                        : const SizedBox(),
                  ]));
            }));
  }
}
