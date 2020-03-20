import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
home: Quotes(),
)
);

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes=[
    Quote(author: 'Ujwal Pandey',text:'Beautiful things happen when you distance yourself from negativity.'),
    Quote(author: 'Pandey',text:'Bottling up your emotions can lead to depression.'),
    Quote(author: 'Ujwal',text:'Being a perfectionist can result in stress and depression.'),
  ];

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('Deep Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote:quote,
          delete:() {
            setState(() {
              quotes.remove(quote);
            });
          }
          )).toList(),
      )
    );
  }
}

