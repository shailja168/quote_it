import 'package:flutter/material.dart';

class quoteCard extends StatelessWidget {
  final String text;
  final String? author;

  quoteCard({required this.text, required this.author});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      color: Color.fromARGB(255, 93, 187, 143),
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(style: BorderStyle.none)
        ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 6.0),
          Text(
            author!,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[800],
            ),
          ),
        ]),
      ),
    );
  }
}
