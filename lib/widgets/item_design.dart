import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final IconData icon1;
  CategoryItem(this.title, this.color, this.id,this.icon1);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(5),
        child: InkWell(
          onTap: () => {},
          splashColor: Color.fromARGB(255, 12, 109, 230),
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 130,
            width: 130,
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  '_',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                
    SizedBox(height: 16),
    Align(alignment: Alignment.bottomRight,
    child: Icon(
      
      icon1
    ),
    ),
  ],
              
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}