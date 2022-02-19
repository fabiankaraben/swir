import 'package:flutter/material.dart';
import 'package:swir/data/models/models.dart';
import 'package:swir/l10n/l10n.dart';
import 'package:swir/themes/icons/SWIRIcons.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({
    Key? key,
    required this.person,
  }) : super(key: key);

  final Person person;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
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
          child: Stack(
            children: [
              Row(
                children: [
                  Hero(
                    tag: 'person-image-${person.name}',
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                      ),
                      child: Image.asset(
                        'assets/images/no_person_image.jpg',
                        key: const Key('no_person_image'),
                        width: 110,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            person.name ?? '--',
                            style: const TextStyle(
                              height: 1.1,
                              fontSize: 22,
                              color: Color(0xFFCC0996),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 12),
                          _PersonAttribute(
                            label: context.l10n.homeHeight.toUpperCase(),
                            value: '${person.height} CM',
                          ),
                          const SizedBox(height: 4),
                          _PersonAttribute(
                            label: context.l10n.homeMass.toUpperCase(),
                            value: '${person.mass} KG',
                          ),
                          const SizedBox(height: 4),
                          _PersonAttribute(
                            label: context.l10n.homeGender.toUpperCase(),
                            value: person.gender?.toUpperCase() ?? '',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 15,
                bottom: 8,
                child: Icon(
                  SWIRIcons.planet,
                  size: 60,
                  color: const Color(0xFFD70290).withOpacity(.18),
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () async {
        await Navigator.of(context).pushNamed('/details', arguments: person);
      },
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
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 14,
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
    );
  }
}
