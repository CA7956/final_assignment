import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:table_calendar/table_calendar.dart';

class Holiday extends StatefulWidget {
  final String title;

  Holiday(this.title);

  @override
  _HolidayState createState() => _HolidayState();
}

List<Widget> _buildExpansionTileChildren() => [
  
  
      Card(
        child: ListTile(
          isThreeLine: true,
          tileColor: Colors.white,
          title: Text("15th August | Sun",
              style: TextStyle(fontSize: 19.0,color: Colors.green),),
          subtitle: Text("Independence Day",
              style: TextStyle(fontSize: 14.0)),
          
        ),
      ),
      Card(
        child: ListTile(
          isThreeLine: true,
          tileColor: Colors.white,
          title: Text("10th September | Fri",
              style: TextStyle(fontSize: 19.0,color: Colors.green)),
          subtitle: Text("Ganesh Chaturthi",
              style: TextStyle(fontSize: 14.0)),
          
        ),
      ),
      Card(
        child: ListTile(
          isThreeLine: true,
          tileColor: Colors.white,
          title: Text("2nd October | Sat",
              style: TextStyle(fontSize: 19.0,color: Colors.green)),
          subtitle: Text("Gandhi Jayanti",
              style: TextStyle(fontSize: 14.0)),
          
        ),
      ),
       Divider(
                    height: 1.0,
                    color: Colors.grey,
                  ),
      Card(
          child: ListTile(
            tileColor: Colors.white,
        title: Text(
          "See All Holidays",
          style: TextStyle(color: Colors.blue, fontSize: 14.0),
        ),
      ))
    ];

class _HolidayState extends State<Holiday> {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.blue,
        
        margin: EdgeInsets.all(12),
        child: Padding(
            padding:
                EdgeInsets.only(top: 4.0, left: 4.0, right: 4.0, bottom: 4.0),
            child: ExpansionTile(
              collapsedBackgroundColor: Colors.blue,
              childrenPadding: EdgeInsets.only(bottom: 10.0),
              iconColor: Colors.white,
              backgroundColor: Colors.blue,
              title: Text(
                widget.title,
                style: TextStyle(color: Colors.white, fontSize: 20.0,fontWeight: FontWeight.bold ),
              ),
              children: _buildExpansionTileChildren(),
            )));
  }
}