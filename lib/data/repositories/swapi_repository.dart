import 'package:swir/data/providers/swapi_hive_provider.dart';
import 'package:swir/data/providers/swapi_http_provider.dart';
import 'package:swir/data/services/swapi_service.dart';
import 'package:swir/data/models/models.dart';

class SWAPIRepository {
  Stream<List<Person>> watchAllPeople() async* {
    SWAPIService swapiService = SWAPIHiveProvider();
    yield* swapiService.watchAllPeople().map((values) {
      // return <Person>[];
      return values.map((value) {
        return Person.fromJson(value).copyWith(starships: [
          const Starship(name: 'Name', model: 'model', starshipClass: 'asdf'),
        ]);
      }).toList();
    });
  }

  // Future<List<Person>> getAllPeople() async {
  //   SWAPIService swapiService = SWAPIHiveProvider();
  //   return ((await swapiService.readAllPeople()) as List).map((value) {
  //     return Person.fromJson(value).copyWith(starships: [
  //       const Starship(name: 'Name', model: 'model', starshipClass: 'asdf'),
  //     ]);
  //   }).toList();
  // }

  Future<void> downloadData() async {
    SWAPIService remoteSWApiService = SWAPIHttpProvider();
    SWAPIService localSWApiService = SWAPIHiveProvider();
    // await Future.delayed(Duration(seconds: 5));
    var remoteData = await remoteSWApiService.readAllPeople();

    await localSWApiService.clearAll();
    for (var data in remoteData) {
      await localSWApiService.addPerson(data);
    }
  }
}
