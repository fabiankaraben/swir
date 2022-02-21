# SWIR

**S**tar **W**ars **I**nvader **R**eport - Issue an invader report and save the planet.

A simple Flutter project using the 'bloc', 'freezed' and 'hive' packages among others.

Data is obtained and sent to two remote APIs.

You can run this project with:

```bash
flutter run
```

And you can run all tests with the command:

```bash
flutter test
```

**Note:** `HttpOverrides.global = MyHttpOverrides();` is used in `bootstrap.dart` because the API `swapi.dev` has its SSL certificate expired at this time.

### Platforms

It has been tested (run) on Linux and Android platforms. The web version does not work due to CORS issues with the `swapi.dev` API.