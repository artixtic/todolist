// ignore_for_file: type=lint, unused_element

part of 'profile_bloc.dart';

// **************************************************************************
// BlocGenerator
// **************************************************************************

class ProfileBlocBuilder extends StatelessWidget {
  final BlocWidgetBuilder<UserData?> builder;

  const ProfileBlocBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<ProfileBloc, UserData?>(
      builder: builder,
    );
  }
}

class ProfileBlocSelector<T> extends StatelessWidget {
  final BlocWidgetSelector<UserData?, T> selector;
  final Widget Function(T state) builder;
  final ProfileBloc? bloc;

  const ProfileBlocSelector({
    final Key? key,
    required this.selector,
    required this.builder,
    this.bloc,
  }) : super(key: key);

  static ProfileBlocSelector<String?> accessToken({
    final Key? key,
    required Widget Function(String? accessToken) builder,
    final ProfileBloc? bloc,
  }) {
    return ProfileBlocSelector(
      key: key,
      selector: (state) => state?.accessToken,
      builder: (value) => builder(value),
      bloc: bloc,
    );
  }

  @override
  Widget build(final BuildContext context) {
    return BlocSelector<ProfileBloc, UserData?, T>(
      selector: selector,
      builder: (_, value) => builder(value),
      bloc: bloc,
    );
  }
}

mixin _ProfileBlocMixin on Cubit<UserData?> {}

mixin _ProfileBlocHydratedMixin on HydratedMixin<UserData?> {
  @override
  Map<String, dynamic>? toJson(UserData? state) {
    final json = <String, dynamic>{};

    try {
      json['UserData'] = serializers.serialize(
        state,
        specifiedType: const FullType.nullable(UserData, []),
      );
    } catch (e) {
      _logger.severe('toJson->UserData: $e');
    }

    return json;
  }

  @override
  UserData? fromJson(Map<String, dynamic> json) {
    try {
      return serializers.deserialize(
        json['UserData'],
        specifiedType: const FullType.nullable(UserData, []),
      ) as UserData?;
    } catch (e) {
      _logger.severe('fromJson->UserData: $e');
      return null;
    }
  }
}
