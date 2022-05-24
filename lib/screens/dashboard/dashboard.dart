import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:hasanmehmoodcv/extensions/customextention.dart';
import 'package:hasanmehmoodcv/src/custom_colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with ColorMixin {
  var bodyHeight = 1000.0;
  var headerHeight = 400.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child
        : Scaffold(body: mainWidget()));
  }

  Widget mainWidget() {
    return ListView(
      children: [
        headerWidget(),
        bodyWidget(),
      ],
    );
  }

  Widget headerWidget() {
    return Container(
      width: context.width,
        height: headerHeight,
        color: dart1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            headerWidgetTopRow(),
            headerWidgetTopMain(),
          ],
        ));
  }

  Widget bodyWidget() {
    return Container(height: bodyHeight, color: dart2, child: const Text("1"));
  }

  Widget headerWidgetTopRow() {
    return Container();
  }

  Widget headerWidgetTopMain() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [headerWidgetInformation(), headerWidgetImage()],
      ),
    );
  }

  Widget headerWidgetInformation() {
    return Container(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [

      const Text("Assalamu Alaikum",style: TextStyle(fontSize: 12,color: Colors.white),),
     Text("I'm Hasan Mehmood",style: TextStyle(fontSize: 45,color: Colors.white),),
      Text("Flutter Android / Ios / Web/ Desktop",style: TextStyle(fontSize: 18,color: Colors.white),),
         SizedBox(height: 10,),
      const Text("I am always energetic and eager to learn new skills\nI have experience working as part of a team and individually",style: TextStyle(fontSize: 12,color: Colors.white),),
        SizedBox(height: 20,),
       MaterialButton(
        elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          color: orange,
          child:   Text("View Cv",style: TextStyle(fontSize: 15,color: Colors.white),), onPressed: (){

      }).sizedBoxCustom(height: 40,width: 80),


    ],),);
  }

  Widget headerWidgetImage() {
    return Container(child: Image.asset("assets/images/img_hasan.png",fit: BoxFit.fill,height: 400,),);
  }
}
