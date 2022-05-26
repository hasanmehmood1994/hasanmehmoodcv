import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:hasanmehmoodcv/enums/screen.dart';
import 'package:hasanmehmoodcv/extensions/customextention.dart';
import 'package:hasanmehmoodcv/src/custom_colors.dart';
import 'package:hasanmehmoodcv/src/string.dart';

import '../../components/tab_text.dart';
import '../../mixins/dashboardmixin.dart';
import '../../responsive.dart';
import 'about_me_widget.dart';
import 'footerwidget.dart';
import 'projectwidget.dart';
import 'skillwidget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with DashboardMixin ,ResponsiveMixin{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getCurrentScreen(context);
  }
  @override
  Widget build(BuildContext context) {
    getCurrentScreen(context);
    return SafeArea(child: Scaffold(body: mainWidget()));
  }

  Widget mainWidget() {

    return Column(
      children: [
        Text("${currentScreen}"),
       tabBarWidget(),
        Expanded(
          child: ListView(
            children: [

              headerWidget(),
              bodyWidget(),
            ],
          ),
        ),
      ],
    );
  }

  Widget headerWidget() {
    return Container(
        decoration: BoxDecoration(
          color: dart1.withOpacity(0.9),
        ),
        width: context.width,
        height: headerHeight,
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
    return Container(
        height: currentScreen==CurrentScreen.Mobile?bodyHeight_mobile:bodyHeight,
        color: dart2,
        child: Column(


          children: [

            AboutMe(context),
            SkillWidget(context),
            Expanded(child: Projectwidget(context)),
            Footerwidget(context)
          ],
        ));
  }

  Widget headerWidgetTopRow() {
    return Container();
  }

  Widget headerWidgetTopMain() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [headerWidgetInformation(),
          currentScreen==CurrentScreen.Mobile?Text(""):headerWidgetImage()
        ],
      ),
    );
  }

  Widget headerWidgetInformation() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            asalam_u_alikum_text,
            style: const TextStyle(fontSize: 14, color: Colors.white,overflow: TextOverflow.ellipsis),maxLines: 1,
          ),
          Text(
            name_text,
            style: const TextStyle(
                fontSize: 45, color: Colors.white, fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),maxLines: 1,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                development_name,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Colors.white,overflow: TextOverflow.ellipsis),maxLines: 1,
              ),
              SizedBox(
                width: 5,
              ),
              Image.asset(
                "assets/images/img_flutter.png",
                width: 30,
                height: 30,
              )
            ],
          ),
          Text(
            platform_name,
            style: const TextStyle(
                fontWeight: FontWeight.w500, fontSize: 14, color: Colors.white,overflow: TextOverflow.ellipsis),maxLines: 1,
          ),
          SizedBox(
            height: 55,
          ),
          Row(
            children: [
              Text(
                city_name,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white,overflow: TextOverflow.ellipsis),maxLines: 1,
              ),
              SizedBox(
                width: 5,
              ),
              Image.asset(
                "assets/images/img_location_pakistan.png",
                width: 20,
                height: 30,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: orange,
                  child: const AutoSizeText(
                    "View Cv",
                    style: TextStyle(fontSize: 15, color: Colors.white,overflow: TextOverflow.ellipsis),maxLines: 1,
                  ),
                  onPressed: () {})
              .sizedBoxCustom(height: 40, width: 100),
        ],
      ),
    );
  }

  Widget headerWidgetImage() {
    return Container(
      child: Image.asset(

        "assets/images/img_hasan.png",
        fit: BoxFit.fill,
        height: headerHeight,
        width: currentScreen==CurrentScreen.Desktop?380:250.0,
      ),
    );
  }

  Widget tabBarWidget() {
    return Container(
      width: context.width,
      height: tabBarHeight,
      color: dart1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Image.asset(
              "assets/images/img_signature.png",
              height: 60,
              width: 120,
              fit: BoxFit.fill,
            )
          ]),
          currentScreen==CurrentScreen.Mobile?Icon(Icons.menu,color: orange,size: 40,):
          Row(children: [
            TabText(txt: "About Me"),
            TabText(txt: "Skills"),
            TabText(txt: "Portfolio"),
            TabText(txt: "Flutter Tutorials"),
            TabText(
                txt: "Hire Me", clr: orange.withOpacity(0.69), hoverclr: dart3),
          ]),
        ],
      ),
    );
  }
}




