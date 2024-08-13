// ignore_for_file: type=lint, unused_element

part of 'environment.dart';

// **************************************************************************
// EnumGenerator
// **************************************************************************

extension XEnvironment on Environment {
  R when<R>({
    required R Function() qa,
    required R Function() production,
  }) {
    switch (this) {
      case Environment.qa:
        return qa();
      case Environment.production:
        return production();

      default:
        throw Error();
    }
  }

  R? whenOrNull<R>({
    R? Function()? qa,
    R? Function()? production,
  }) {
    switch (this) {
      case Environment.qa:
        return qa?.call();
      case Environment.production:
        return production?.call();

      default:
        return null;
    }
  }

  R maybeWhen<R>({
    R Function()? qa,
    R Function()? production,
    required R orElse(),
  }) {
    if (this == Environment.qa && qa != null) {
      return qa();
    }
    if (this == Environment.production && production != null) {
      return production();
    }

    return orElse();
  }
}
