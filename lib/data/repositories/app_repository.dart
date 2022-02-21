import 'package:swir/data/models/models.dart';
import 'package:swir/data/providers/local_storage_hive_provider.dart';
import 'package:swir/data/providers/report_typicode_provider.dart';
import 'package:swir/data/providers/star_wars_data_swapi_provider.dart';
import 'package:swir/data/services/local_storage_service.dart';
import 'package:swir/data/services/report_service.dart';
import 'package:swir/data/services/star_wars_data_service.dart';

class AppRepository {
  Stream<List<Person>> watchAllPeople() async* {
    LocalStorageService localStorageService = LocalStorageHiveProvider();
    yield* localStorageService.watchAllPeople().asyncMap((values) async {
      List<Person> people = [];
      for (Map<String, dynamic> data in values) {
        final planetId = int.parse((data['homeworld'] as String).split('/')[5]);
        final planetData = await localStorageService.getPlanet(planetId);

        List<Vehicle> vehicles = [];
        for (String vehicleUrl in data['vehicles']) {
          final vehicletId = int.parse(vehicleUrl.split('/')[5]);
          final vehicleData = await localStorageService.getVehicle(vehicletId);
          if (vehicleData != null) {
            vehicles.add(
              Vehicle.fromJson(vehicleData),
            );
          }
        }

        List<Starship> starships = [];
        for (String starshipUrl in data['starships']) {
          final starshipId = int.parse(starshipUrl.split('/')[5]);
          final starshipData = await localStorageService.getStarship(
            starshipId,
          );
          if (starshipData != null) {
            starships.add(
              Starship.fromJson(starshipData),
            );
          }
        }

        final personId = int.parse((data['url'] as String).split('/')[5]);
        data['id'] = personId;

        people.add(
          Person.fromJson(data).copyWith(
            homeworld: planetData != null ? planetData['name'] : '',
            vehicles: vehicles,
            starships: starships,
          ),
        );
      }

      return people;
    });
  }

  Future<void> downloadData() async {
    StarWarsDataService starWarsDataService = StarWarsDataSWAPIProvider();
    LocalStorageService localStorageService = LocalStorageHiveProvider();

    final remotePeopleData = await starWarsDataService.readAllPeople();
    await localStorageService.clearAllPeople();
    for (var data in remotePeopleData) {
      final id = int.parse((data['url'] as String).split('/')[5]);
      await localStorageService.addPerson(id, data);
    }

    final remotePlanetsData = await starWarsDataService.readAllPlanets();
    await localStorageService.clearAllPlanets();
    for (var data in remotePlanetsData) {
      final id = int.parse((data['url'] as String).split('/')[5]);
      await localStorageService.addPlanet(id, data);
    }

    final remoteVehiclesData = await starWarsDataService.readAllVehicles();
    await localStorageService.clearAllVehicles();
    for (var data in remoteVehiclesData) {
      final id = int.parse((data['url'] as String).split('/')[5]);
      await localStorageService.addVehicle(id, data);
    }

    final remoteStarshipsData = await starWarsDataService.readAllStarships();
    await localStorageService.clearAllStarships();
    for (var data in remoteStarshipsData) {
      final id = int.parse((data['url'] as String).split('/')[5]);
      await localStorageService.addStarship(id, data);
    }
  }

  Future<void> sendInvaderReport(Person person) async {
    ReportService reportService = PreportTypicodeProvider();
    await reportService.sendReport(person);
  }
}
