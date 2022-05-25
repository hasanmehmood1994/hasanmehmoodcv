import 'package:flutter/material.dart';

import '../src/custom_colors.dart';

class TabText extends StatelessWidget {
  var txt, clr, hoverclr;

  TabText({this.txt, this.clr, this.hoverclr});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: MaterialButton(
            onPressed: () {},
            hoverColor: this.hoverclr ?? orange,
            child: Text(
              "$txt ",
              style: TextStyle(
                  color: clr ?? Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            )));
  }
}