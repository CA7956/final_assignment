import 'package:attendance_app/widgets/leave_button.dart';
import 'package:flutter/material.dart';

class ViewLeave extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
 

  ViewLeave(this.text1, this.text2, this.text3);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(text1,
              style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
          
                Text(text2,style: TextStyle(fontSize: 14.0),textAlign: TextAlign.left,),
                Text(text3,textAlign: TextAlign.left,style: TextStyle(fontSize: 
                12.0,),),
              ],
            ),
          ),
         
          Padding(
            padding: const EdgeInsets.all(8.0),
            
        child: Row(

          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ApplyLeave()),
                );
              },
              child: Align(
                  alignment: Alignment.centerRight,
              child: Text('                   APPLY',
                textAlign: TextAlign.end,
                style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue,
              ),
              ),
              ),
            ),
          ),
        ],
      ),
          )
        ],
        ),);
  }
}
