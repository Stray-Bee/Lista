import 'package:flutter/material.dart';

class Sextou extends StatelessWidget{
  final String? nome;
  final String? sobrenome;
  final Function() onRemove;
 
 const Sextou ({
  required this.nome,
  required this.sobrenome,
  required this.onRemove
 });

 @override
  Widget build(BuildContext context) {
    return Card(elevation: 10,
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Text('$nome',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
              ),
              Text('$sobrenome',
              style: TextStyle(
                fontSize: 16,
                color: Colors.deepPurple
              ),
              ),
            ],
          ),
        ),
        Expanded(child: Container(),),
        IconButton(onPressed: (){
          onRemove();
        }, 
        icon: Icon(Icons.delete),
        )
      ],
    ),
    );    
  }
}