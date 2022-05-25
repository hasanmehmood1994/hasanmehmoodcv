import 'package:flutter/cupertino.dart';

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
  var headerHeight = 380.0;
  var img_url = "https://res.cloudinary.com/practicaldev/image/fetch/s--slljVTGZ--/c_imagga_scale,f_auto,fl_progressive,h_500,q_auto,w_1000/https://cdn-images-1.medium.com/max/800/1%2AROuBKDAhiWFl3jIbDvtinw.png";
  var tabBarHeight = 55.0;
  var aboutMeHeight = 600.0;

var skill_name_list=["Flutter","Firebase","Rest Api calling","ANDROID","JAVA","Google Maps","Local Database","Ios App","Mac App","Desktop App"];
  var skill_icon_list=["assets/images/img_flutter.png","assets/icons/ic_firebase.png","assets/icons/ic_api.png","assets/icons/ic_android.png","assets/icons/ic_java.png","assets/icons/ic_googlemaps.png","assets/icons/ic_database.png","assets/icons/ic_apple.png","assets/icons/ic_mac.png","assets/icons/ic_desktop.png"];



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

   GlobalKey key_about_me=GlobalKey();
  GlobalKey key_skills=GlobalKey();
  GlobalKey key_portfolio=GlobalKey();
  GlobalKey key_tutorials=GlobalKey();
}