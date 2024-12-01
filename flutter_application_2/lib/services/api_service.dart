import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> fetchJoke() async {
  final url = Uri.parse("https://official-joke-api.appspot.com/random_joke");
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return "${data['setup']} - ${data['punchline']}";
  } else {
    throw Exception("Failed to fetch joke");
  }
}
