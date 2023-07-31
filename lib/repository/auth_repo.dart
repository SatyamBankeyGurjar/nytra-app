import 'package:http/http.dart' as http;

import '../utilities/constants.dart';

class Repo {
  Future<void> fetchData() async {
    final url = '${Constants.baseUrl}${Constants.getData}';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // Successful request
      final responseData = response.body;
      // Process the data as needed
    } else {
      // Request failed
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
