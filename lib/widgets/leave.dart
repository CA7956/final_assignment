import 'package:flutter/material.dart';
import './leave_screen.dart';

class ExpandLeave extends StatefulWidget {
  final String title;
  final Color color1;

  ExpandLeave(this.title,this.color1);

  @override
  _ExpandLeaveState createState() => _ExpandLeaveState();
}

class _ExpandLeaveState extends State<ExpandLeave> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.blue,
      margin: EdgeInsets.all(15),
      child:
          //  Padding(
          //   padding: EdgeInsets.only(top: 3.0, left: 3.0, right: 3.0, bottom: 3.0),
          //   child:
          ExpansionTile(
        //childrenPadding: EdgeInsets.only(bottom: 10.0),
        textColor: Colors.white,
        iconColor: Colors.white,
        backgroundColor: Colors.blue,
        collapsedTextColor: Colors.white,
        title: Text(
          widget.title,
          style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold
          ),
        ),
        children: <Widget>[
          // Container(
          //   color: Colors.blue,
          //   child: Row(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         'Apply Leave',
          //         style: TextStyle(color: Colors.white),
          //       )
          //     ],
          //   ),
          // ),
          SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  ViewLeave(
                    '  CL/Contingency Leave',
                    '6.0 Remaining',
                    'Valid Till: 31/12/2021',
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 20,),
                  ViewLeave(
                    '  Optional Holiday            ',
                    '3.0 Remaining',
                    'Valid Till: 31/12/2021',
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 10,),
                  ViewLeave(
                    '  Special Privilege Leave',
                    '10.0 Remaining',
                    'Valid Till: 31/12/2021',
                  ),
                  Divider(
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 20),
                 
                  Align(
                    widthFactor: 40.0,
                  alignment: Alignment.bottomLeft,
              child:
                  Text('    See More', style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,
                  color: Colors.blue,),)   ,), 
                  SizedBox(height: 20), 
                  Divider(
                    height: 1.0,
                    color: Colors.grey,
                  ),      
                ],
              ),
            ),
          ),
        ],
      ),
      // ),
    );
  }
}
