import 'package:hive/hive.dart';
import 'package:swir/data/services/local_storage_service.dart';

class LocalStorageHiveProvider extends LocalStorageService {
  // Hive box instance
  final Box _peopleBox = Hive.box('people');
  final Box _planetsBox = Hive.box('planets');
  final Box _vehiclesBox = Hive.box('vehicles');
  final Box _starshipsBox = Hive.box('starships');

  /// Get a stream of all people from Hive local storage
  @override
  Stream<List<Map<String, dynamic>>> watchAllPeople() async* {
    final firstValues = _peopleBox.toMap();

    if (firstValues.isNotEmpty) {
      yield firstValues.values
          .map((value) => Map<String, dynamic>.from(value))
          .toList();
    } else {
      yield [];
    }

    yield* _peopleBox.watch().map((event) {
      final values = _peopleBox.toMap();
      return values.values
          .map((value) => Map<String, dynamic>.from(value))
          .toList();
    });
  }

  /// Delete all people items in Hive local storage
  @override
  Future<void> clearAllPeople() async {
    await _peopleBox.clear();
  }

  /// Add a person item to Hive local storage
  @override
  Future<void> addPerson(int id, Map<String, dynamic> data) async {
    await _peopleBox.put(id, data);
  }

  /// Delete all planet items in Hive local storage
  @override
  Future<void> clearAllPlanets() async {
    await _planetsBox.clear();
  }

  /// Add a planet item to Hive local storage
  @override
  Future<void> addPlanet(int id, Map<String, dynamic> data) async {
    await _planetsBox.put(id, data);
  }

  /// Get a planet item from Hive local storage
  @override
  Future<Map<String, dynamic>?> getPlanet(int id) async {
    final value = _planetsBox.get(id);
    return value != null ? Map<String, dynamic>.from(value) : null;
  }

  /// Delete all vehicle items in Hive local storage
  @override
  Future<void> clearAllVehicles() async {
    await _vehiclesBox.clear();
  }

  /// Add a vehicle item to Hive local storage
  @override
  Future<void> addVehicle(int id, Map<String, dynamic> data) async {
    await _vehiclesBox.put(id, data);
  }

  /// Get a vehicle item from Hive local storage
  @override
  Future<Map<String, dynamic>?> getVehicle(int id) async {
    final value = _vehiclesBox.get(id);
    return value != null ? Map<String, dynamic>.from(value) : null;
  }

  /// Delete all starship items in Hive local storage
  @override
  Future<void> clearAllStarships() async {
    await _starshipsBox.clear();
  }

  /// Add a starship item to Hive local storage
  @override
  Future<void> addStarship(int id, Map<String, dynamic> data) async {
    await _starshipsBox.put(id, data);
  }

  /// Get a starship item from Hive local storage
  @override
  Future<Map<String, dynamic>?> getStarship(int id) async {
    final value = _starshipsBox.get(id);
    return value != null ? Map<String, dynamic>.from(value) : null;
  }
}
