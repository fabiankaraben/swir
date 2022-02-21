abstract class LocalStorageService {
  Stream<List<Map<String, dynamic>>> watchAllPeople();

  Future<void> clearAllPeople();

  Future<void> addPerson(int id, Map<String, dynamic> data);

  Future<void> clearAllPlanets();

  Future<void> addPlanet(int id, Map<String, dynamic> data);

  Future<Map<String, dynamic>?> getPlanet(int id);

  Future<void> clearAllVehicles();

  Future<void> addVehicle(int id, Map<String, dynamic> data);

  Future<Map<String, dynamic>?> getVehicle(int id);

  Future<void> clearAllStarships();

  Future<void> addStarship(int id, Map<String, dynamic> data);

  Future<Map<String, dynamic>?> getStarship(int id);
}
