import 'package:flutter/material.dart';
import 'quote.dart';
class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard({this.quote,this.delete});
 

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(30),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize:18.0,
                color:Colors.grey,
              ),
            ),
            SizedBox(height:10),
            Text(
              quote.author,
              style:TextStyle(
                fontSize:18.0,
                color:Colors.grey,
              ),
            ),
            SizedBox(height:8.0),
            FlatButton.icon(
              onPressed: delete,
               label:Text('delete quote'),
               icon:Icon(Icons.delete),
            ),
          ]
        ),
      ),
    );
  }
}

