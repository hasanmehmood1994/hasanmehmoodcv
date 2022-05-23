import 'package:flutter/material.dart';
import 'package:hasanmehmoodcv/src/custom_colors.dart';

import 'package:hasanmehmoodcv/string_apis.dart';



class SplashScreen extends StatelessWidget with ColorMixin{
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Text("1".parseInt2().toString(),style: TextStyle(color: dart1)).Vis_w(true).Card_w(),
    );
  }
}
