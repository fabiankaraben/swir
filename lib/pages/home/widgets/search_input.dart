import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swir/l10n/l10n.dart';
import 'package:swir/themes/icons/SWIRIcons.dart';

import '../bloc/home_bloc.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1690),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.white.withOpacity(.05),
          width: 5,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 2),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.8),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: context.l10n.homeSearch.toUpperCase(),
                ),
                cursorColor: const Color(0xFFCC0996),
                onChanged: (value) {
                  context.read<HomeBloc>().add(
                        HomeEvent.searchCriteriaChanged(criteria: value),
                      );
                },
              ),
            ),
            const Icon(SWIRIcons.search),
          ],
        ),
      ),
    );
  }
}
