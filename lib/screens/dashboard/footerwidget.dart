import 'package:flutter/material.dart';

import '../../src/custom_colors.dart';


class Footerwidget extends StatelessWidget {
  BuildContext context;
   Footerwidget(this. context, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dart1,

      child: Center(child: Text("This Website is made by Hasan Mehmood in Flutter",style: TextStyle(color: Colors.white,fontSize: 16),),),
    );
  }
}
