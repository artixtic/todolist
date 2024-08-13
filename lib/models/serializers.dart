import 'package:built_collection/built_collection.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:todolist/models/data/project_data.dart';
import 'package:todolist/models/data/project_data_by_id.dart';
import 'package:todolist/pages/main/project/bloc/project_bloc.dart';

import 'data/user_data.dart';
import 'enums/environment.dart';

part 'serializers.g.dart';

@SerializersFor(
    [UserData, ProjectData, ProjectDataById, Environment, ProjectBloc])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..add(Iso8601DateTimeSerializer()))
    .build();
