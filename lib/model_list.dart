import 'dart:convert';
import 'package:http/http.dart' as http;

class Details {
  String title, url;
  int id;
  Details({required this.title, required this.url, required this.id});
}

List<Details> DetailsList = [];

Future<List<Details>> getDetails() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    for (Map i in data) {
      Details details = Details(title: i['title'], url: i['url'],id: i['id']);
      DetailsList.add(details);
    }
    return DetailsList;
  } else {
    return DetailsList;
  }
}
