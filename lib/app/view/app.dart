// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:swir/app/bloc/app_bloc.dart';
import 'package:swir/l10n/l10n.dart';
import 'package:swir/pages/home/home.dart';
import 'package:swir/themes/themes.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();

    Future<void>.delayed(const Duration(milliseconds: 20), () {
      precacheImage(
        Image.asset('assets/images/scaffold_bg_dark.jpg').image,
        context,
      );
      precacheImage(
        Image.asset('assets/images/swir_logo_white.png').image,
        context,
      );
      precacheImage(
        Image.asset('assets/images/no_person_image.jpg').image,
        context,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: WSRITheme.dark,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => AppBloc(),
        child: const HomePage(),
      ),
    );
  }
}
