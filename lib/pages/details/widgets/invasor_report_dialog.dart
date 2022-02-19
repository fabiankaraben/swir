import 'package:flutter/material.dart';
import 'package:swir/data/models/models.dart';
import 'package:swir/l10n/l10n.dart';

class InvasorReportDialog extends StatelessWidget {
  const InvasorReportDialog({
    Key? key,
    required this.person,
  }) : super(key: key);

  final Person person;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.l10n.detailsConfirmReport),
      actionsPadding: const EdgeInsets.all(15),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(
                '${context.l10n.detailsConfirmReportQuestion} ${person.name}?'),
          ],
        ),
      ),
      actions: <Widget>[
        OutlinedButton(
          child: Text(context.l10n.detailsReport),
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
