import 'package:flutter/material.dart';
import 'package:swir/l10n/l10n.dart';

class EmptyFilteredListMsg extends StatelessWidget {
  const EmptyFilteredListMsg({
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
                context.l10n.homeEmptyFilteredListHeader,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  height: 1.3,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                context.l10n.homeEmptyFilteredListDescription,
                textAlign: TextAlign.center,
                style: const TextStyle(height: 1.4),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
