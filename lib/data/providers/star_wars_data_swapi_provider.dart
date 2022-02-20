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
  Future<List<Map<String, dynamic>>> readAllPlanets() async {
    Map<String, dynamic> data = {};
    var pageNum = 1;
    Map<String, dynamic> pageData = json.decode(
      await http.read(
        Uri.parse('$_apiEntryPoint/planets/?format=json&page=$pageNum'),
      ),
    );
    data = pageData;
    while (pageData['next'] != null) {
      pageNum++;
      pageData = json.decode(
        await http.read(
          Uri.parse('$_apiEntryPoint/planets/?format=json&page=$pageNum'),
        ),
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
      await http.read(
        Uri.parse('$_apiEntryPoint/vehicles/?format=json&page=$pageNum'),
      ),
    );
    data = pageData;
    while (pageData['next'] != null) {
      pageNum++;
      pageData = json.decode(
        await http.read(
          Uri.parse('$_apiEntryPoint/vehicles/?format=json&page=$pageNum'),
        ),
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
      await http.read(
        Uri.parse('$_apiEntryPoint/starships/?format=json&page=$pageNum'),
      ),
    );
    data = pageData;
    while (pageData['next'] != null) {
      pageNum++;
      pageData = json.decode(
        await http.read(
          Uri.parse('$_apiEntryPoint/starships/?format=json&page=$pageNum'),
        ),
      );

      data['results'].addAll(pageData['results']);
    }

    return List<Map<String, dynamic>>.from(data['results']);
  }
}
