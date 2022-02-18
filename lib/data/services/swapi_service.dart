abstract class SWAPIService {
  ///
  Stream<List<Map<String, dynamic>>> watchAllPeople();

  ///
  Future<List<Map<String, dynamic>>> readAllPeople();

  ///
  Future<int> addPerson(Map<String, dynamic> personData);

  ///
  Future<Map<String, dynamic>> readHomeworld(int id);

  ///
  Future<Map<String, dynamic>> readStarship(int id);

  ///
  Future<Map<String, dynamic>> readVehicle(int id);

  ///
  Future<void> clearAll();
}
