import 'package:http/http.dart' as http;
import 'package:swir/data/models/models.dart';
import 'package:swir/data/services/report_service.dart';

class PreportTypicodeProvider extends ReportService {
  final _apiEntryPoint = 'https://jsonplaceholder.typicode.com';

  /// Send a new invader report
  @override
  Future<void> sendReport(Person person) async {
    final body = {
      'id': person.id.toString(),
      'dateTime': DateTime.now().toString(),
      'character_name': person.name,
    };
    var response = await http.post(
      Uri.parse('$_apiEntryPoint/posts'),
      body: body,
    );
    if (response.statusCode != 201) {
      throw Exception('HTTP problem sending report.');
    }
  }
}
