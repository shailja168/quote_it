class Quote {
  String text;
  String? author;

  Quote({required this.text, required this.author});

  // factory Quote.fromJson(dynamic json) {
  //   return Quote(
  //       text: (json['text'] as String), author: json['author'] as String?);
  // }

  // static List<Quote> quotesFromSnapshot(List snapshot) {
  //   return snapshot.map((data) {
  //     return Quote.fromJson(data);
  //   }).toList();
  // }

  // @override
  // String toString(){
  //   return 'Quote {text: $text, author: $author}';
  // }
}
