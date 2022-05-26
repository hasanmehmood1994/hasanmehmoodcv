import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hasanmehmoodcv/src/custom_colors.dart';

mixin DashboardMixin{
  var asalam_u_alikum_text="Asalamu Alaikum";
  String name_text="I'm Hasan Mehmood";
  String platform_name="Android |  Ios | WeB | Desktop | Mac ";
  String development_name="Flutter Developer";
  String  city_name="Rawalpindi / Islamabad";
  String  country_name="Pakistan";
  String AboutMe_titletext="About Me";
  var about_me_text2= "I am always energetic and eager to learn new skills";
  var about_me_text3= "I have experience working as part of a team and individually";

  var about_me_text="To apply my knowledge, logic building , and decision making skills in a dynamic organization at a position where these skills can be further polished and taken to a higher level.";

  var personal_info_text=
    "CNIC No: 37405-3502638-7\n"+
    "Address: H.NO. 1605  Street 128 Sector 1 Gulshanabad Adyala Road Rawalpindi\n"+
    "Phone No: 0301-5077202\n"+
    "E-mail: hasanmehmood.email@gmail.com\n"
  ;
  var Cnic="37405-3502638-7";
  var Address="H.NO. 1605  Street 128 Sector 1 Gulshanabad Adyala Road Rawalpindi";
  var Mobile ="0301-5077202";
  var Email="hasanmehmood.email@gmail.com";

  var education="BC (SE) 4 years\n"+

  "Foundation university Rawalpindi campus.\n\n"+

  "F.Sc (ICS)\n"+
  "Global college system Rawalpindi.\n\n"+

  "Matriculation (Science)\n"+
  "Noor Foundation model public school Rawalpindi.\n"
  ;
  var bodyHeight = 1200.0;
  //1200.0;
  var headerHeight = 0.0;
  var img_url = "https://res.cloudinary.com/practicaldev/image/fetch/s--slljVTGZ--/c_imagga_scale,f_auto,fl_progressive,h_500,q_auto,w_1000/https://cdn-images-1.medium.com/max/800/1%2AROuBKDAhiWFl3jIbDvtinw.png";
  var tabBarHeight = 55.0;
  var aboutMeHeight = 620.0;
  var personal_info_education_height=320.0;

var skill_name_list=["Flutter","Firebase","Rest Integration","ANDROID","JAVA","Google Maps","Local Database","Ios App","Mac App","Desktop App"];
  var skill_icon_list=["assets/images/img_flutter.png","assets/icons/ic_firebase.png","assets/icons/ic_api.png","assets/icons/ic_android.png","assets/icons/ic_java.png","assets/icons/ic_googlemaps.png","assets/icons/ic_database.png","assets/icons/ic_apple.png","assets/icons/ic_mac.png","assets/icons/ic_desktop.png"];
  var slider_items=[
    Image.asset("assets/projects/test1.jpg",fit: BoxFit.fill,),
    sliderItemWidget(txt: "Supply Chain Mobile Pos",backgroud: Colors.yellow.shade200,txtclr: Colors.yellow),
    sliderItemWidget(txt: "Gems Wares Inventory Management",backgroud:Colors.orange.shade200,txtclr: Colors.orange),
    sliderItemWidget(txt: "Styler Salons Booking App (saudi saloons)",backgroud:Colors.cyan.shade200,txtclr: Colors.cyan),
    sliderItemWidget(txt: "E-learning App ",backgroud:Colors.blueAccent.shade100,txtclr: Colors.blueAccent),
    sliderItemWidget(txt: "Dr Gersch Appointment Booking App  ",backgroud:Colors.greenAccent.shade100,txtclr: Colors.greenAccent),
    sliderItemWidget(txt: "Smart Notice Board Tv/Mob App  ",backgroud:Colors.blue.shade200,txtclr: Colors.blue),
    sliderItemWidget(txt: "Scan a deal  ",backgroud:Colors.amber.shade200,txtclr: Colors.amber),
    sliderItemWidget(txt: "360 camera app  ",backgroud:Colors.purple.shade200,txtclr: Colors.purple),
    sliderItemWidget(txt: "Scrum Poker ",backgroud:Colors.blueAccent.shade100,txtclr: Colors.blueAccent),
  ];



   GlobalKey key_about_me=GlobalKey();
  GlobalKey key_skills=GlobalKey();
  GlobalKey key_portfolio=GlobalKey();
  GlobalKey key_tutorials=GlobalKey();

  String calculate_work_experience(){
    final start_date = DateTime(2020, 1, 1);
    final date2 = DateTime.now();
    final difference = date2.difference(start_date).inDays;
    final years = date2.difference(start_date).inDays/365;
    print("${years}");
    int y=years.toInt();
    print("${y}");

    return "${y}+";


  }

}

 Widget sliderItemWidget({txt,backgroud,txtclr}) {
  return Container(
    decoration: new BoxDecoration(
        color: backgroud??Colors.white,
        borderRadius: new BorderRadius.all( Radius.circular(10.0))
    ),
    padding: EdgeInsets.all(10),
    width: double.infinity,
 child: Text("${txt}",style: TextStyle(color:txtclr?? orange,fontSize: 18),),);
}