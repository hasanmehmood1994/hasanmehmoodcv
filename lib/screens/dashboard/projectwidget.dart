import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Projectwidget extends StatelessWidget {
  BuildContext context;

  var items=[Image.asset("assets/projects/test1.jpg"),Image.asset("assets/projects/test1.jpg"),Image.asset("assets/projects/test1.jpg")];
   Projectwidget(this. context, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      CarouselSlider(
          items: items,
          options: CarouselOptions(
            height: 400,
            aspectRatio: 14/8,
            viewportFraction: 0.4,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,

            scrollDirection: Axis.horizontal,
          )
      ),

    );
  }
}
