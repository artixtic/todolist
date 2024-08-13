import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String anotherSubtitle;

  RowWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.anotherSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Text(
          anotherSubtitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
