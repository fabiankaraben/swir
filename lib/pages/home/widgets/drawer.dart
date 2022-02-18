import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swir/app/bloc/app_bloc.dart';
import 'package:swir/pages/home/bloc/home_bloc.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text('Puedes...'),
            SizedBox(height: 10),
            OnlineModeSwitch(),
            SizedBox(height: 20),
            Text('Algo...'),
            SizedBox(height: 10),
            DownloadDataButton(),
          ],
        ),
      ),
    );
  }
}

class DownloadDataButton extends StatelessWidget {
  const DownloadDataButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appStateOnline = context.select((AppBloc bloc) => bloc.state.online);

    return _DecorativeBorder(
      child: ElevatedButton(
        child: const Text('Add'),
        onPressed: appStateOnline
            ? () async {
                context.read<HomeBloc>().add(const DownloadDataPressed());
              }
            : null,
      ),
    );
  }

  // BlocBuilder<HomeBloc, HomeState>(
  //   buildWhen: (previous, current) => current.maybeWhen(
  //     downloading: () => true,
  //     downloaded: () => true,
  //     orElse: () => false,
  //   ),
  //   builder: (context, state) {
  //     state.maybeWhen(
  //       downloading: () {
  //         nextView = const Center(child: CircularProgressIndicator());
  //       },
  //       downloaded: () {
  //         nextView = const Center(child: Text('Emtpy'));
  //       },
  //       error: () {
  //         nextView = const Center(
  //           child: Text('Something went wrong, please try again!'),
  //         );
  //       },
  //       orElse: () {
  //         nextView = const Center(
  //             child: Text('OrElse!!!!!!!!!!!!!!!!!!!!!!!!!!!!'));
  //       },
  //     );
  //     return nextView;
  //   },
  // )

}

class OnlineModeSwitch extends StatelessWidget {
  const OnlineModeSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.select((AppBloc bloc) => bloc.state.online);

    return _DecorativeBorder(
      padding: const EdgeInsets.all(0),
      child: SwitchListTile(
        title: RichText(
          text: TextSpan(
            children: [
              const TextSpan(text: 'Modo: '),
              TextSpan(
                text: state ? 'ONLINE' : 'OFFLINE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: state ? Colors.green : null,
                ),
              ),
            ],
          ),
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 8, 10, 8),
        value: state,
        onChanged: (value) {
          var appBloc = context.read<AppBloc>();
          appBloc.add(
            value ? const AppEvent.connected() : const AppEvent.disconnected(),
          );
        },
      ),
    );
  }
}

class _DecorativeBorder extends StatelessWidget {
  const _DecorativeBorder({
    Key? key,
    this.padding = const EdgeInsets.all(8.0),
    required this.child,
  }) : super(key: key);

  final EdgeInsetsGeometry padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white24, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }
}
