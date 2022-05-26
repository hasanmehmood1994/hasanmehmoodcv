import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

import 'package:hasanmehmoodcv/src/custom_colors.dart';


import '../../mixins/dashboardmixin.dart';

class AboutMe extends StatelessWidget with DashboardMixin {
  BuildContext context;

  AboutMe(this.context);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: aboutMeHeight,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 20,
        ),
        //Text(AboutMe_titletext,style: TextStyle(color: Colors.white,fontSize: 25),),
        AboutMe_ItemCard(),
        personalInfo_Education_ItemCard()
      ]),
    );
  }

  Widget AboutMe_ItemCard() {
    return Container(
      margin: EdgeInsets.fromLTRB(100, 20, 100, 20),
      width: context.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: dart3.withOpacity(1),
        child: Container(
          height: 190,
          margin: EdgeInsets.all(10),
          child: Column(
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
              //   Text("$about_me_text",style: TextStyle(color: Colors.white,fontSize: 16,letterSpacing:1 ),),
              Text(
                "$about_me_text2\n",
                style: TextStyle(
                    color: Colors.white, fontSize: 18, letterSpacing: 2,overflow: TextOverflow.ellipsis),maxLines: 1,
              ),
              SizedBox(
                height:20,
              ),
              Text(
                "$about_me_text3",
                style: TextStyle(
                    color: Colors.white, fontSize: 18, letterSpacing: 2,overflow: TextOverflow.ellipsis),maxLines: 1,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "I have ${calculate_work_experience()} Years Experience in flutter application development",
                style: TextStyle(
                    color: Colors.white, fontSize: 18, letterSpacing: 2,overflow: TextOverflow.ellipsis),maxLines: 1,

              ),
              SizedBox(
                height: 10,
              ),
              //  Text("$personal_info_text",style: TextStyle(color: Colors.white,fontSize: 16,letterSpacing:1 ),),
            ],
          ),
        ),
      ),
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
                      //  Text("$personal_info_text",style: TextStyle(color: Colors.white,fontSize: 16,letterSpacing:1 ),),
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
                      Text("$education",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              letterSpacing: 1,overflow: TextOverflow.ellipsis),maxLines: 9,
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
        Text(
          txt,
          style: TextStyle(color: Colors.white,overflow: TextOverflow.ellipsis),maxLines: 1,
        )
      ],
    );
  }
}