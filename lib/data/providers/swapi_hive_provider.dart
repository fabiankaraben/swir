import 'package:hive/hive.dart';
import 'package:swir/data/services/swapi_service.dart';

class SWAPIHiveProvider extends SWAPIService {
  // Hive box instance
  final Box _hiveBox = Hive.box('people');

  ///
  @override
  Stream<List<Map<String, dynamic>>> watchAllPeople() async* {
    final firstValues = _hiveBox.toMap();

    if (firstValues.isNotEmpty) {
      // yield List<Map<String, dynamic>>.from(firstValues.values);
      // .map(
      //   (value) => SessionCard.fromJson(
      //     Map<String, dynamic>.from(value),
      //   ),
      // )
      // .toList();

      yield firstValues.values
          .map((value) => Map<String, dynamic>.from(value))
          .toList();
    } else {
      yield [];
    }

    yield* _hiveBox.watch().map((event) {
      final values = _hiveBox.toMap();
      // return List<Map<String, dynamic>>.from(values.values);
      // .map(
      //   (value) => SessionCard.fromJson(
      //     Map<String, dynamic>.from(value),
      //   ),
      // )
      // .toList();
      return values.values
          .map((value) => Map<String, dynamic>.from(value))
          .toList();
    });
  }

  ///
  @override
  Future<List<Map<String, dynamic>>> readAllPeople() async {
    throw UnimplementedError;
  }

  ///
  @override
  Future<int> addPerson(Map<String, dynamic> personData) async {
    return await _hiveBox.add(personData);
  }

  ///
  @override
  Future<Map<String, dynamic>> readHomeworld(int id) async {
    return {};
  }

  ///
  @override
  Future<Map<String, dynamic>> readStarship(int id) async {
    return {};
  }

  ///
  @override
  Future<Map<String, dynamic>> readVehicle(int id) async {
    return {};
  }

  ///
  @override
  Future<void> clearAll() async {
    await _hiveBox.clear();
  }
}
