import 'dart:convert';
import 'package:swir/data/services/swapi_service.dart';
import 'package:http/http.dart' as http;

class SWAPIHttpProvider extends SWAPIService {
  final _apiEntryPoint = 'https://swapi.dev/api';

  ///
  @override
  Stream<List<Map<String, dynamic>>> watchAllPeople() {
    throw UnsupportedError;
  }

  ///
  @override
  Future<List<Map<String, dynamic>>> readAllPeople() async {
    Map<String, dynamic> data = {};
    var pageNum = 1;
    Map<String, dynamic> pageData = json.decode(
      await http.read(
        Uri.parse('$_apiEntryPoint/people/?format=json&page=$pageNum'),
      ),
    );
    data = pageData;
    while (pageData['next'] != null) {
      pageNum++;
      pageData = json.decode(
        await http.read(
          Uri.parse('$_apiEntryPoint/people/?format=json&page=$pageNum'),
        ),
      );

      data['results'].addAll(pageData['results']);
    }

    return List<Map<String, dynamic>>.from(data['results']);
  }

  ///
  @override
  Future<int> addPerson(Map<String, dynamic> personData) {
    throw UnsupportedError;
  }

  ///
  @override
  Future<Map<String, dynamic>> readHomeworld(int id) async {
    final url = Uri.parse('$_apiEntryPoint/planets/$id/?format=json');
    return json.decode(await http.read(url));
  }

  ///
  @override
  Future<Map<String, dynamic>> readStarship(int id) async {
    final url = Uri.parse('$_apiEntryPoint/starships/$id/?format=json');
    return json.decode(await http.read(url));
  }

  ///
  @override
  Future<Map<String, dynamic>> readVehicle(int id) async {
    final url = Uri.parse('$_apiEntryPoint/vehicles/$id/?format=json');
    return json.decode(await http.read(url));
  }

  ///
  @override
  Future<void> clearAll() {
    throw UnsupportedError;
  }
}
