import 'package:flutter/material.dart';

import 'widgets/item_design.dart';
import 'widgets/calendar.dart';
import './widgets/holiday.dart';

import 'widgets/leave.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Leave & Attendance'),
      ),
      drawer: Drawer(),
      body:SingleChildScrollView(
        child: Column(
          children:[ Row (children: [CategoryItem("Absent Days For Current & Last Month", Colors.red , "1",Icons.timer_10),
      CategoryItem("Leave & Regularization history", Colors.blue , "2",Icons.timer_outlined),
      CategoryItem("Time report - Team", Colors.blue , "3",Icons.person_outline)
      
      ],),
      SizedBox(height: 40,),
      
      ExpandCards('My Calendar'),
      ExpandLeave('Apply Leave',Colors.black),
      Holiday('Holiday Calender'),
      ],  
      ),
      ),
    );  
  }
}
