import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:hasanmehmoodcv/responsive.dart';

import 'package:hasanmehmoodcv/src/custom_colors.dart';


import '../../enums/screen.dart';
import '../../mixins/dashboardmixin.dart';

class AboutMe extends StatelessWidget with DashboardMixin ,ResponsiveMixin {
  BuildContext context;

  AboutMe(this.context);

  @override
  Widget build(BuildContext context) {
    getCurrentScreen(context);
    // TODO: implement build
    return Container(
      height: currentScreen==CurrentScreen.Mobile?aboutMeHeight_mobile:aboutMeHeight,

      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 20,
        ),
        //AutoSizeText(AboutMe_titletext,style: TextStyle(color: Colors.white,fontSize: 25),),
        Objective_Widget(),
        personalInfo_Education_ItemCard()
      ]),
    );
  }

  Widget Objective_Widget() {
    return Container(
      margin: EdgeInsets.fromLTRB(40, 20, 40, 20),
      width: context.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: dart3.withOpacity(1),
        child: Container(
          height: currentScreen==CurrentScreen.Desktop?objectHeight:objectHeight_mobile,
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           Text("OBJECTIVE",
                  style: TextStyle(
                      color: orange,
                      fontSize: 26,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold ,overflow: TextOverflow.ellipsis),maxLines: 1,),
              SizedBox(
                height: 20,
              ),
              //   AutoSizeText("$about_me_text",style: TextStyle(color: Colors.white,fontSize: 16,letterSpacing:1 ),),

              Text_Objective(txt: about_me_text2),
              SizedBox(
                height:20,
              ),
           Text_Objective(txt: about_me_text3),
              SizedBox(
                height: 20,
              ),
              Text_Objective(txt:"I have ${calculate_work_experience()} Years Experience in flutter application development",),
              SizedBox(
                height: 10,
              ),
              //  AutoSizeText("$personal_info_text",style: TextStyle(color: Colors.white,fontSize: 16,letterSpacing:1 ),),
            ],
          ),
        ),
      ),
    );
  }

  Widget Text_Objective({txt}) {
    return Text(
              "$txt",
              style: TextStyle(
                  color: Colors.white, fontSize: currentScreen==CurrentScreen.Desktop?18:14, letterSpacing: 1,overflow: TextOverflow.ellipsis),maxLines: 3,textAlign: TextAlign.start,
            );
  }

  Widget personalInfo_Education_ItemCard() {
    return Container(
     height: personal_info_education_height,
      margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
      width: context.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: dart3.withOpacity(1),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                   Text("PERSONAL INFORMATION",
                          style: TextStyle(
                              color: orange,
                              fontSize: 26,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),maxLines: 1,
                      ),

                      SizedBox(
                        height: 40,
                      ),
                      Icon_Text_Widget(txt: " $Cnic", icon: Icons.credit_card),
                      SizedBox(
                        height: 8,
                      ),
                      Icon_Text_Widget(txt: " $Address", icon: Icons.home),
                      SizedBox(
                        height: 8,
                      ),
                      Icon_Text_Widget(txt: " $Mobile ", icon: Icons.phone),
                      SizedBox(
                        height: 8,
                      ),
                      Icon_Text_Widget(txt: " $Email", icon: Icons.mail),
                      //  AutoSizeText("$personal_info_text",style: TextStyle(color: Colors.white,fontSize: 16,letterSpacing:1 ),),
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                  child: Column(
                    children: [
                    Text("Education",
                          style: TextStyle(
                              color: orange,
                              fontSize: 26,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),maxLines: 1,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    Expanded(
                      child: Text("$education",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                letterSpacing: 1,overflow: TextOverflow.ellipsis),maxLines: 9,
                        ),
                    ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Icon_Text_Widget({txt, icon}) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Text(
            txt,
            style: TextStyle(color: Colors.white,overflow: TextOverflow.fade,),maxLines: 1,
          ),
        )
      ],
    );
  }
}