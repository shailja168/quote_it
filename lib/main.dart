import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
import 'datafromAPI.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [];
  bool _isLoading = true;

  // List<Quote> quotes = [
  //   Quote(
  //       author: 'Dalai Lama', text: 'The purpose of our lives is to be happy.'),
  // ];

  @override
  void initState() {
    super.initState();
    getQuote();
  }

  Future<void> getQuote() async {
    quotes = await QuoteApi.getQuote();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[200],
        appBar: AppBar(
          title: Text('Quotes For You'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 7, 36, 80),
        ),
        body: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: quotes.length,
                itemBuilder: (context, var index) {
                  if (quotes[index].author != null) {
                    return quoteCard(
                        text: quotes[index].text, author: quotes[index].author);
                  }
                  else{
                    return quoteCard(
                        text: quotes[index].text, author: 'unknown');
                  }
                },
              ));
  }
}
