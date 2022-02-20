abstract class StarWarsDataService {
  ///
  Future<List<Map<String, dynamic>>> readAllPeople();

  ///
  Future<List<Map<String, dynamic>>> readAllPlanets();

  ///
  Future<List<Map<String, dynamic>>> readAllVehicles();

  ///
  Future<List<Map<String, dynamic>>> readAllStarships();
}
