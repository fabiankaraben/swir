import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swir/data/repositories/app_repository.dart';
import 'package:swir/l10n/l10n.dart';
import 'package:swir/pages/home/home.dart';
import 'package:swir/pages/home/widgets/drawer.dart';
import 'package:swir/pages/home/widgets/empty_filtered_list_msg.dart';
import 'package:swir/pages/home/widgets/empty_list_msg.dart';
import 'package:swir/pages/home/widgets/person_card.dart';
import 'package:swir/pages/home/widgets/search_input.dart';
import 'package:swir/pages/home/widgets/settings_dialog.dart';
import 'package:swir/themes/icons/SWIRIcons.dart';
import 'package:swir/themes/theme.dart';

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
        repository: AppRepository(),
      )..add(
          const HomeEvent.started(),
        ),
      child: const _HomeView(),
    );
  }
}

/// {@template home_view}
/// Displays the content for the [HomePage].
/// {@endtemplate}
class _HomeView extends StatelessWidget {
  /// {@macro home_view}
  const _HomeView({Key? key}) : super(key: key);

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
    // final state = context.select((HomeBloc bloc) => bloc.state);

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
            const Expanded(
              child: _HomeSections(
                key: Key('home_sections'),
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
    // final theme = context.select((ThemeBloc bloc) => bloc.state.theme);
    final _searchCriteria =
        context.select((HomeBloc bloc) => bloc.state.searchCriteria);

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final _people = _searchCriteria.isEmpty
            ? state.list
            : state.list.where(
                (person) => person.name
                    .toLowerCase()
                    .contains(_searchCriteria.toLowerCase()),
              );

        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFCC0996)),
            ),
          );
        } else if (state.list.isEmpty) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: EmptyListMsg(),
          );
        } else if (_people.isEmpty) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: EmptyFilteredListMsg(),
          );
        } else {
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Center(
              child: Wrap(
                children: _people
                    .map(
                      (person) => Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: PersonCard(person: person),
                      ),
                    )
                    .toList(),
              ),
            ),
          );
        }
      },
    );
  }
}
