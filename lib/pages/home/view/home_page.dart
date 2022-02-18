import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swir/app/bloc/app_bloc.dart';
import 'package:swir/data/repositories/swapi_repository.dart';
import 'package:swir/pages/home/home.dart';
import 'package:swir/pages/home/widgets/drawer.dart';
import 'package:swir/themes/icons/SWIRIcons.dart';
import 'package:swir/themes/theme.dart';
// import 'package:swir/timer/timer.dart';

/// {@template home_page}
/// The root page of the home UI.
///
/// Builds the home based on the current [HomeTheme]
/// from [ThemeBloc].
/// {@endtemplate}
class HomePage extends StatelessWidget {
  /// {@macro home_page}
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(
        themes: const [
          SimpleTheme(),
        ],
      ),
      child: const HomeView(),
    );
  }
}

/// {@template home_view}
/// Displays the content for the [HomePage].
/// {@endtemplate}
class HomeView extends StatelessWidget {
  /// {@macro home_view}
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.select((ThemeBloc bloc) => bloc.state.theme);

    /// Shuffle only if the current theme is Simple.
    final shuffleHome = theme is SimpleTheme;

    return BlocProvider(
      create: (context) => HomeBloc(repository: SWAPIRepository())
        ..add(
          const HomeEvent.fetchSummary(),
          //  HomeInitialized(
          //   shuffleHome: shuffleHome,
          // ),
        ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: Image.asset(
              'assets/images/scaffold_bg_dark.jpg',
              key: const Key('scaffold_bg_dark'),
            ).image,
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          // backgroundColor: theme.backgroundColor,
          // body: BlocProvider(
          //   create: (context) => TimerBloc(
          //     ticker: const Ticker(),
          //   ),
          appBar: AppBar(
            title: Image.asset(
              'assets/images/swir_logo_white.png',
              key: const Key('swir_logo_white'),
            ),
            centerTitle: true,
            backgroundColor: Colors.white.withOpacity(.04),
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: const MenuHamburgerIconButton(),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: IconButton(
                  icon: const Icon(
                    SWIRIcons.settings_outline,
                    size: 32,
                    color: Color(0xFFB4B4B4),
                  ),
                  onPressed: () {
                    showDialog<void>(
                      context: context,
                      barrierDismissible: false, // user must tap button!
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('AlertDialog Title'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: const <Widget>[
                                Text('This is a demo alert dialog.'),
                                Text(
                                    'Would you like to approve of this message?'),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('Approve'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          body: const _Home(
            key: Key('home_view_home'),
          ),

          // ),
          drawer: const HomeDrawer(),
        ),
      ),
    );
  }
}

class MenuHamburgerIconButton extends StatelessWidget {
  const MenuHamburgerIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        SWIRIcons.menu_hamburger,
        size: 33,
        color: Color(0xFFC5C5C5),
      ),
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    );
  }
}

class _Home extends StatelessWidget {
  const _Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.select((ThemeBloc bloc) => bloc.state.theme);
    final state = context.select((HomeBloc bloc) => bloc.state);

    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
              child: Text(
                '¿Has visto un intruso espacial?',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.white.withOpacity(.05),
                  width: 5,
                ),
              ),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 13),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.8),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(child: Text('Buscar'.toUpperCase())),
                    const Icon(SWIRIcons.search),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: Column(
                    children: const [
                      _HomeSections(
                        key: Key('home_sections'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _HomeSections extends StatelessWidget {
  const _HomeSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.select((ThemeBloc bloc) => bloc.state.theme);
    final state = context.select((HomeBloc bloc) => bloc.state);

    Widget nextView = Container();

    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) => current.maybeWhen(
        loading: () => true,
        empty: () => true,
        content: (people, _) => true,
        error: () => true,
        orElse: () => false,
      ),
      builder: (context, state) {
        state.maybeWhen(
          loading: () {
            nextView = const Center(child: CircularProgressIndicator());
          },
          empty: () {
            nextView = const Center(child: Text('Emtpy'));
          },
          content: (people, _) {
            // List<Person> countries = summary.countries;
            // countries
            //     .sort((a, b) => b.totalConfirmed.compareTo(a.totalConfirmed));
            nextView = ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 30),
              children: people
                  .map(
                    (person) => Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.white.withOpacity(.05),
                            width: 5,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(.56),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4),
                                      bottomLeft: Radius.circular(4),
                                    ),
                                    child: Image.asset(
                                      'assets/images/no_person_image.jpg',
                                      key: const Key('no_person_image'),
                                      width: 110,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 0,
                                        horizontal: 20,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            person.name ?? '--',
                                            style: const TextStyle(
                                              height: 1.1,
                                              fontSize: 22,
                                              color: Color(0xFFCC0996),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(height: 12),
                                          RichText(
                                            text: TextSpan(
                                              style: const TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF2E5BF2),
                                              ),
                                              children: [
                                                const TextSpan(
                                                    text: 'ALTURA: '),
                                                TextSpan(
                                                  text: '${person.height} CM',
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          RichText(
                                            text: TextSpan(
                                              style: const TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF2E5BF2),
                                              ),
                                              children: [
                                                const TextSpan(text: 'PESO: '),
                                                TextSpan(
                                                  text: '${person.mass} KG',
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          RichText(
                                            text: TextSpan(
                                              style: const TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF2E5BF2),
                                              ),
                                              children: [
                                                const TextSpan(text: 'SEXO: '),
                                                TextSpan(
                                                  text: person.gender
                                                          ?.toUpperCase() ??
                                                      '',
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                right: 15,
                                bottom: 8,
                                child: Icon(
                                  SWIRIcons.planet,
                                  size: 60,
                                  color:
                                      const Color(0xFFD70290).withOpacity(.18),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
              // children: <Widget>[
              //   Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: <Widget>[
              //       Text('Data Source'),
              //       FlatButton(
              //         child: Text(
              //           'Johns Hopkins CSSE',
              //           style: TextStyle(
              //             color: Colors.blue,
              //             decoration: TextDecoration.underline,
              //           ),
              //         ),
              //         onPressed: () async => launchURL(
              //             'https://systems.jhu.edu/research/public-health/ncov/'),
              //       ),
              //     ],
              //   ),
              //   const SizedBox(height: 16.0),
              //   _GlobalDataView(
              //     global: summary.global,
              //     date: DateFormat('MMM dd, hh:mm a')
              //         .format(DateTime.parse(summary.date)),
              //   ),
              //   const SizedBox(height: 16.0),
              //   _CountriesDataView(countries: countries),
              // ],
            );
          },
          error: () {
            nextView =
                Center(child: Text('Something went wrong, please try again!'));
          },
          orElse: () {
            nextView =
                const Center(child: Text('OrElse!!!!!!!!!!!!!!!!!!!!!!!!!!!!'));
          },
        );
        return nextView;
      },
    );

    // return ResponsiveLayoutBuilder(
    //   small: (context, child) => Column(
    //     children: [
    //       theme.layoutDelegate.startSectionBuilder(state),
    //       const HomeBoard(),
    //       theme.layoutDelegate.endSectionBuilder(state),
    //     ],
    //   ),
    //   medium: (context, child) => Column(
    //     children: [
    //       theme.layoutDelegate.startSectionBuilder(state),
    //       const HomeBoard(),
    //       theme.layoutDelegate.endSectionBuilder(state),
    //     ],
    //   ),
    //   large: (context, child) => Row(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Expanded(
    //         child: theme.layoutDelegate.startSectionBuilder(state),
    //       ),
    //       const HomeBoard(),
    //       Expanded(
    //         child: theme.layoutDelegate.endSectionBuilder(state),
    //       ),
    //     ],
    //   ),
    // );
  }
}
