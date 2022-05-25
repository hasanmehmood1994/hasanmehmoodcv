import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../mixins/dashboardmixin.dart';

class SkillWidget extends StatelessWidget with DashboardMixin {
  BuildContext context;

  SkillWidget(this.context);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
        margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: skill_name_list.length,
          itemBuilder: (context, index) {
        return Skill_Item_Card(index: index);
      }));

  }

  Skill_Item_Card({index}){
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Row(children: [
        Image.asset("${skill_icon_list[index]}",height: 30,width: 30,),
        SizedBox(width: 4,),
        Text("${skill_name_list[index]}",style: TextStyle(fontSize: 16,color: Colors.white,overflow: TextOverflow.ellipsis),maxLines: 1),

      ],),

    );
  }


}