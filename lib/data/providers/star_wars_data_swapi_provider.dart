import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:swir/data/services/star_wars_data_service.dart';

class StarWarsDataSWAPIProvider extends StarWarsDataService {
  final _apiEntryPoint = 'https://swapi.dev/api';

  ///
  @override
  Future<List<Map<String, dynamic>>> readAllPeople() async {
    Map<String, dynamic> data = {};
    var pageNum = 1;

    Map<String, dynamic> pageData = json.decode(
      await _httpGet(what: 'people', pageNum: pageNum),
    );

    data = pageData;
    while (pageData['next'] != null) {
      pageNum++;

      pageData = json.decode(
        await _httpGet(what: 'people', pageNum: pageNum),
      );

      data['results'].addAll(pageData['results']);
    }

    return List<Map<String, dynamic>>.from(data['results']);
  }

  ///
  @override
  Future<List<Map<String, dynamic>>> readAllPlanets() async {
    Map<String, dynamic> data = {};
    var pageNum = 1;
    Map<String, dynamic> pageData = json.decode(
      await _httpGet(what: 'planets', pageNum: pageNum),
    );
    data = pageData;
    while (pageData['next'] != null) {
      pageNum++;
      pageData = json.decode(
        await _httpGet(what: 'planets', pageNum: pageNum),
      );

      data['results'].addAll(pageData['results']);
    }

    return List<Map<String, dynamic>>.from(data['results']);
  }

  ///
  @override
  Future<List<Map<String, dynamic>>> readAllVehicles() async {
    Map<String, dynamic> data = {};
    var pageNum = 1;
    Map<String, dynamic> pageData = json.decode(
      await _httpGet(what: 'vehicles', pageNum: pageNum),
    );
    data = pageData;
    while (pageData['next'] != null) {
      pageNum++;
      pageData = json.decode(
        await _httpGet(what: 'vehicles', pageNum: pageNum),
      );

      data['results'].addAll(pageData['results']);
    }

    return List<Map<String, dynamic>>.from(data['results']);
  }

  ///
  @override
  Future<List<Map<String, dynamic>>> readAllStarships() async {
    Map<String, dynamic> data = {};
    var pageNum = 1;
    Map<String, dynamic> pageData = json.decode(
      await _httpGet(what: 'starships', pageNum: pageNum),
    );
    data = pageData;
    while (pageData['next'] != null) {
      pageNum++;
      pageData = json.decode(
        await _httpGet(what: 'starships', pageNum: pageNum),
      );

      data['results'].addAll(pageData['results']);
    }

    return List<Map<String, dynamic>>.from(data['results']);
  }

  Future<String> _httpGet({String what = 'people', int pageNum = 1}) async {
    var response = await http.get(
      Uri.parse('$_apiEntryPoint/$what/?format=json&page=$pageNum'),
    );
    if (response.statusCode != 200) {
      throw Exception('HTTP problem downloading data.');
    }
    return response.body;
  }
}
