import 'dart:convert';
import 'quote.dart';
import 'package:http/http.dart' as http;

class QuoteApi {
  static Future<List<Quote>> getQuote() async {
    var response = await http.get(Uri.https(
      'type.fit',
      '/api/quotes',
    ));
    var jsonData = jsonDecode(response.body);
    print(jsonData);
    List<Quote> temp = [];

    for (var u in jsonData) {
      temp.add(Quote(text: u['text'], author: u['author']));
    }
    print(temp.length);
    //return Quote.quotesFromSnapshot(temp);
    return temp;
  }
}
