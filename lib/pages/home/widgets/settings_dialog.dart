import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swir/app/bloc/app_bloc.dart';
import 'package:swir/l10n/l10n.dart';

class SettingsDialog extends StatefulWidget {
  const SettingsDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingsDialog> createState() => _SettingsDialogState();
}

class _SettingsDialogState extends State<SettingsDialog> {
  String? _langValue;

  @override
  Widget build(BuildContext context) {
    final appBloc = context.read<AppBloc>();
    _langValue ??= appBloc.state.lang;

    return AlertDialog(
      title: Text(context.l10n.homeSettings),
      actionsPadding: const EdgeInsets.all(15),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(context.l10n.homeSettingsLanguage),
            const SizedBox(height: 15),
            DropdownButton<String>(
              value: _langValue,
              icon: const Icon(Icons.arrow_drop_down),
              onChanged: (String? newValue) {
                setState(() => _langValue = newValue!);
              },
              isExpanded: true,
              items: <String>['en', 'es'].map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value == 'es' ? 'Español' : 'English'),
                  );
                },
              ).toList(),
            )
          ],
        ),
      ),
      actions: <Widget>[
        OutlinedButton(
          child: Text(context.l10n.gralSave),
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          ),
          onPressed: () async {
            context.read<AppBloc>().add(AppEvent.changeLanguage(_langValue!));
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
