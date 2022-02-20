import 'package:flutter/material.dart';
import 'package:swir/l10n/l10n.dart';

class EmptyListMsg extends StatelessWidget {
  const EmptyListMsg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.white.withOpacity(.05),
          width: 5,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.56),
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.antiAlias,
        child: OverflowBox(
          minHeight: 0.0,
          maxHeight: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.l10n.homeEmptyListHeader,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  height: 1.3,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                context.l10n.homeEmptyListDescription,
                textAlign: TextAlign.center,
                style: const TextStyle(height: 1.4),
              ),
              const SizedBox(height: 35),
              OutlinedButton(
                child: Text(context.l10n.homeEmptyListButton),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
              const SizedBox(height: 25),
              Text(
                context.l10n.homeEmptyListRequired,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
