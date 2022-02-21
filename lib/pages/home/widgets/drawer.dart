import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swir/app/bloc/app_bloc.dart';
import 'package:swir/l10n/l10n.dart';
import 'package:swir/pages/home/bloc/home_bloc.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(
              color: Colors.white10,
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(context.l10n.homeDrawerText1),
            const SizedBox(height: 15),
            const OnlineModeSwitch(),
            const SizedBox(height: 25),
            Text(context.l10n.homeDrawerText2),
            const SizedBox(height: 15),
            const DownloadDataButton(),
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
    final isOnline = context.select((AppBloc bloc) => bloc.state.isOnline);
    final isDownloading = context.select(
      (HomeBloc bloc) => bloc.state.isDownloadingData,
    );

    return BlocListener<HomeBloc, HomeState>(
      listenWhen: (previous, current) =>
          previous.isDownloadingData == true &&
          current.isDownloadingData == false,
      listener: (context, state) {
        if (Scaffold.of(context).isDrawerOpen) {
          Navigator.of(context).pop();
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: state.error.isEmpty
                ? Text(context.l10n.homeDrawerDownloadingSuccessMsg)
                : Text(context.l10n.homeDrawerDownloadingErrorMsg),
          ),
        );
      },
      child: _DecorativeBorder(
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            child: Text(
              isDownloading
                  ? '${context.l10n.homeDrawerDownloading}...'
                  : context.l10n.homeDrawerUpdateLocalDB,
            ),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 20),
            ),
            onPressed: isOnline && !isDownloading
                ? () async {
                    context.read<HomeBloc>().add(
                          const HomeEvent.downloadDataPressed(),
                        );
                  }
                : null,
          ),
        ),
      ),
    );
  }
}

class OnlineModeSwitch extends StatelessWidget {
  const OnlineModeSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isOnline = context.select((AppBloc bloc) => bloc.state.isOnline);

    return _DecorativeBorder(
      padding: const EdgeInsets.all(0),
      child: SwitchListTile(
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(text: '${context.l10n.homeDrawerMode} '),
              TextSpan(
                text: isOnline ? 'ONLINE' : 'OFFLINE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isOnline ? Colors.green : null,
                ),
              ),
            ],
          ),
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 3, 10, 3),
        value: isOnline,
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
