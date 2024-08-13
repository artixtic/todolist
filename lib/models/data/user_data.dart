import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:wc_dart_framework/wc_dart_framework.dart';

import '../serializers.dart';

part 'user_data.g.dart';

final _logger = Logger('user_data.dart');

abstract class UserData implements Built<UserData, UserDataBuilder> {
  factory UserData([
    final void Function(UserDataBuilder) updates,
  ]) = _$UserData;
  // "id": "220474322",
  // "name": "Inbox",
  // "comment_count": 10,
  // "order": 0,
  // "color": "grey",
  // "is_shared": false,
  // "is_favorite": false,
  // "is_inbox_project": true,
  // "is_team_inbox": false,
  // "view_style": "list",
  // "url": "https://todoist.com/showProject?id=220474322",
  // "parent_id": null,
  UserData._();

  static Serializer<UserData> get serializer => _$userDataSerializer;

  // int? get id;
  //
  // String? get email;

  @BuiltValueField(wireName: 'token')
  String? get accessToken;

  // String? get name;
  // @BuiltValueField(wireName: 'phone_number')
  // String? get phoneNumber;
  //
  // String? get city;
  //
  // String? get state;
  //
  // @BuiltValueField(wireName: 'picture_url')
  // String? get profilePicture;

  static UserData fromDynamic(final dynamic json) {
    return serializers.deserializeWith(
      UserData.serializer,
      json,
    )!;
  }
}
