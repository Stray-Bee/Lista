import 'package:flutter/material.dart';

class Sextou extends StatelessWidget{
 const Sextou({super.key});

 @override
  Widget build(BuildContext context) {
    return Card(elevation: 10,
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("Texto1",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
              ),
              Text("Texto2",
              style: TextStyle(
                fontSize: 16,
                color: Colors.deepPurple
              ),
              ),
            ],
          ),
        ),
        IconButton(onPressed: (){}, 
        icon: Icon(Icons.delete),
        )
      ],
    ),
    );    
  }
}