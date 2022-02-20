import 'package:flutter/material.dart';
import 'package:swir/data/models/models.dart';
import 'package:swir/l10n/l10n.dart';
import 'package:swir/pages/details/widgets/invasor_report_dialog.dart';
import 'package:swir/themes/icons/SWIRIcons.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

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
          leading: IconButton(
            icon: const Icon(
              SWIRIcons.back,
              size: 34,
              color: Color(0xFFC5C5C5),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: const _Details(),
      ),
    );
  }
}

class _Details extends StatelessWidget {
  const _Details({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute
    // settings and cast them as ScreenArguments.
    final person = ModalRoute.of(context)!.settings.arguments as Person;

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(15),
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
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Hero(
                    tag: 'person-image-${person.name}',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        'assets/images/no_person_image.jpg',
                        key: const Key('no_person_image'),
                        width: 170,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text(
                    person.name ?? '--',
                    style: const TextStyle(
                      height: 1.1,
                      fontSize: 32,
                      color: Color(0xFFCC0996),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                _PersonAttribute(
                  label: context.l10n.detailsHeight.toUpperCase(),
                  value: '${person.height} CM',
                ),
                const SizedBox(height: 10),
                _PersonAttribute(
                  label: context.l10n.detailsMass.toUpperCase(),
                  value: '${person.mass} KG',
                ),
                const SizedBox(height: 10),
                _PersonAttribute(
                  label: context.l10n.detailsGender.toUpperCase(),
                  value: person.gender?.toUpperCase() ?? '',
                ),
                const SizedBox(height: 10),
                _PersonAttribute(
                  label: context.l10n.detailsHairColor.toUpperCase(),
                  value: '${person.hairColor}',
                ),
                const SizedBox(height: 10),
                _PersonAttribute(
                  label: context.l10n.detailsSkinColor.toUpperCase(),
                  value: '${person.skinColor}',
                ),
                const SizedBox(height: 10),
                _PersonAttribute(
                  label: context.l10n.detailsEyeColor.toUpperCase(),
                  value: '${person.eyeColor}',
                ),
                const SizedBox(height: 10),
                _PersonAttribute(
                  label: context.l10n.detailsHomeworld.toUpperCase(),
                  value: '${person.homeworld}',
                ),
                const SizedBox(height: 8),
                CollapsablePersonAttribute(
                  label: context.l10n.detailsVehicles.toUpperCase(),
                  noItemsMsg: context.l10n.detailsNoVehicles,
                  items: <String>[
                    for (var vehicle in person.vehicles ?? []) vehicle.name,
                  ],
                ),
                CollapsablePersonAttribute(
                  label: context.l10n.detailsStarships.toUpperCase(),
                  noItemsMsg: context.l10n.detailsNoStarships,
                  items: <String>[
                    for (var starship in person.starships ?? []) starship.name,
                  ],
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text(
                    context.l10n.detailsReportButtonIntro,
                    style: const TextStyle(
                      fontSize: 15.5,
                      height: 1.4,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: _ReportInvaderButton(person: person),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CollapsablePersonAttribute extends StatefulWidget {
  const CollapsablePersonAttribute({
    Key? key,
    required this.label,
    required this.noItemsMsg,
    required this.items,
  }) : super(key: key);

  final String label;
  final String noItemsMsg;
  final List<String> items;

  @override
  State<CollapsablePersonAttribute> createState() =>
      _CollapsablePersonAttributeState();
}

class _CollapsablePersonAttributeState
    extends State<CollapsablePersonAttribute> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final _items = widget.items.isEmpty ? [widget.noItemsMsg] : widget.items;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.white.withOpacity(.03),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.label.toUpperCase(),
                    style: const TextStyle(
                      color: Color(0xFF2E5BF2),
                    ),
                  ),
                  Icon(
                    _isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    color: const Color(0xFF2E5BF2),
                  ),
                ],
              ),
            ),
            onTap: () {
              setState(() => _isExpanded = !_isExpanded);
            },
          ),
        ),
        if (_isExpanded)
          for (var item in _items)
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 3, 18, 3),
              child: Text(
                '- $item',
                style: const TextStyle(
                  color: Color(0xFF2E5BF2),
                ),
              ),
            ),
      ],
    );
  }
}

class _ReportInvaderButton extends StatelessWidget {
  const _ReportInvaderButton({
    Key? key,
    required this.person,
  }) : super(key: key);

  final Person person;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.white.withOpacity(.05),
          width: 5,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFB415A5), Color(0xFF9922B2)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(4),
          child: InkWell(
            borderRadius: BorderRadius.circular(4),
            highlightColor: Colors.transparent,
            splashColor: Colors.white.withOpacity(.05),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              alignment: Alignment.center,
              child: Text(
                context.l10n.detailsReportButtonText.toUpperCase(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: .5,
                ),
              ),
            ),
            onTap: () async {
              showDialog<void>(
                context: context,
                barrierColor: Colors.white10,
                builder: (BuildContext context) {
                  return InvasorReportDialog(person: person);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class _PersonAttribute extends StatelessWidget {
  const _PersonAttribute({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(
            fontSize: 15.5,
            color: Color(0xFF2E5BF2),
          ),
          children: [
            TextSpan(text: '$label '),
            TextSpan(
              text: value,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
