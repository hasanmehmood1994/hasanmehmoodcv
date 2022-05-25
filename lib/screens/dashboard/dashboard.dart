import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:hasanmehmoodcv/extensions/customextention.dart';
import 'package:hasanmehmoodcv/src/custom_colors.dart';
import 'package:hasanmehmoodcv/src/string.dart';

import '../../mixins/dashboardmixin.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with DashboardMixin{





  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: mainWidget()));
  }

  Widget mainWidget() {
    return ListView(
      children: [
        tabBarWidget(),
        headerWidget(),
        bodyWidget(),
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
    return Container(height: bodyHeight, color: dart2, child: Column(
      children: [
        AboutMe(context),
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
        children: [headerWidgetInformation(), headerWidgetImage()],
      ),
    );
  }

  Widget headerWidgetInformation() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(asalam_u_alikum_text, style: const TextStyle(fontSize: 14, color: Colors.white),
          ),
          Text(name_text, style: const TextStyle(fontSize: 45, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(development_name,
                style: const TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 25, color: Colors.white),
              ),
              SizedBox(width: 5,),
              Image.asset("assets/images/img_flutter.png",width: 30,height: 30,)
            ],
          ),
          Text(platform_name,
            style: const TextStyle(
                fontWeight: FontWeight.w500, fontSize: 14, color: Colors.white),
          ),
          SizedBox(height: 55,),
          Row(children: [
            Text(city_name,
            style: const TextStyle(
                fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white),
          ), SizedBox(width: 5,),Image.asset("assets/images/img_location_pakistan.png",width: 20,height: 30,),],),



          //    const Text("I am always energetic and eager to learn new skills\nI have experience working as part of a team and individually",style: TextStyle(fontSize: 12,color: Colors.white),),

           SizedBox(
            height:20,
          ),
          MaterialButton(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: orange,
                  child: const Text(
                    "View Cv",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  onPressed: () {})
              .sizedBoxCustom(height: 40, width: 80),
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
          Row(children: [
            TabText(txt: "About Me"),
            TabText(txt: "Skills"),
            TabText(txt: "Portfolio"),
            TabText(txt:"Flutter Tutorials"),
           TabText(txt: "Hire Me", clr: orange.withOpacity(0.69), hoverclr: dart3),
          ]),
        ],
      ),
    );

  }


}
class TabText extends StatelessWidget{
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
class AboutMe extends StatelessWidget with DashboardMixin {
  BuildContext context;


  AboutMe(this. context);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: aboutMeHeight,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40,),
            Text(AboutMe_titletext,style: TextStyle(color: Colors.white,fontSize: 25),),
            AboutMe_ItemCard()
      ]),);
  }

  Widget AboutMe_ItemCard() {
  return Expanded(
    child: Container(
      margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
      width: context.width,
      height: double.infinity,
      child: Card(

        color: flutterlight.withOpacity(0.3),
        child: Row(
          children: [
            Expanded(
                flex:1,child: Container(
              margin: EdgeInsets.all(10),
              child: Column(children: [

                Text("OBJECTIVE",style: TextStyle(color: Colors.white,fontSize: 26,letterSpacing:1,fontWeight: FontWeight.bold )),
                  SizedBox(height: 20,),
                  Text("$about_me_text",style: TextStyle(color: Colors.white,fontSize: 16,letterSpacing:1 ),),
                SizedBox(height: 20,),
                Text("PERSONAL INFORMATION",style: TextStyle(color: Colors.white,fontSize: 26,letterSpacing:1,fontWeight: FontWeight.bold )),
                SizedBox(height: 20,),
                Icon_Text_Widget(txt: "$Cnic",icon: Icons.credit_card),
                Icon_Text_Widget(txt: "$Address",icon: Icons.home),
                Icon_Text_Widget(txt: "$Mobile ",icon: Icons.phone),
                Icon_Text_Widget(txt: "$Email",icon: Icons.mail),
              //  Text("$personal_info_text",style: TextStyle(color: Colors.white,fontSize: 16,letterSpacing:1 ),),


            ],),)),
            Expanded(
                flex: 1,
                child: Container(child: Column(children: [Text("education")],),)),
          ],
        ),
      ),
    ),
  );
  }

  Icon_Text_Widget({txt, icon}) {
    return Row(children: [Icon(icon,color: Colors.white,),SizedBox(width: 5,),Text(txt,style: TextStyle(color: Colors.white),)],);
  }
}


