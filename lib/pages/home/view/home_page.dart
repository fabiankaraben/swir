import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swir/data/repositories/swapi_repository.dart';
import 'package:swir/l10n/l10n.dart';
import 'package:swir/pages/home/home.dart';
import 'package:swir/pages/home/widgets/drawer.dart';
import 'package:swir/pages/home/widgets/person_card.dart';
import 'package:swir/pages/home/widgets/settings_dialog.dart';
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
      create: (context) => HomeBloc(
        repository: SWAPIRepository(),
      )..add(
          const HomeEvent.fetchSummary(),
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
    return Container(
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
                    barrierColor: Colors.white10,
                    builder: (BuildContext context) {
                      return const SettingsDialog();
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
        drawer: const HomeDrawer(),
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
    // final theme = context.select((ThemeBloc bloc) => bloc.state.theme);
    final state = context.select((HomeBloc bloc) => bloc.state);

    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
              child: Text(
                context.l10n.homeHaveYouSeenSpacerInvader,
                style: const TextStyle(fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SearchInput(),
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

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.white.withOpacity(.05),
          width: 5,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 13),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.8),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(child: Text(context.l10n.homeSearch.toUpperCase())),
            const Icon(SWIRIcons.search),
          ],
        ),
      ),
    );
  }
}

class _HomeSections extends StatelessWidget {
  const _HomeSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final theme = context.select((ThemeBloc bloc) => bloc.state.theme);
    final state = context.select((HomeBloc bloc) => bloc.state);

    Widget nextView = Container();

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        state.when(
          loading: () {
            nextView = const Center(child: CircularProgressIndicator());
          },
          empty: () {
            nextView = const Center(child: Text('Emtpy'));
          },
          content: (people, _) {
            nextView = ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 30),
              children: people
                  .map(
                    (person) => Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: PersonCard(person: person),
                    ),
                  )
                  .toList(),
            );
          },
          error: () {
            nextView = Center(
              child: Text(context.l10n.gralSomethingWentWrong),
            );
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
