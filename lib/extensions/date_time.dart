import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension XDateTime on DateTime {
  String format(
    final String format, {
    required final Locale? locale,
  }) {
    return DateFormat(format, locale?.languageCode).format(this);
  }

  TimeOfDay toTimeOfDay() {
    return TimeOfDay(
      hour: hour,
      minute: minute,
    );
  }
}
