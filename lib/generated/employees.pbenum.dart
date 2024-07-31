//
//  Generated code. Do not modify.
//  source: employees.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class EmployeePermission extends $pb.ProtobufEnum {
  static const EmployeePermission CREATE = EmployeePermission._(0, _omitEnumNames ? '' : 'CREATE');
  static const EmployeePermission UPDATE = EmployeePermission._(1, _omitEnumNames ? '' : 'UPDATE');
  static const EmployeePermission DELETE = EmployeePermission._(2, _omitEnumNames ? '' : 'DELETE');

  static const $core.List<EmployeePermission> values = <EmployeePermission> [
    CREATE,
    UPDATE,
    DELETE,
  ];

  static final $core.Map<$core.int, EmployeePermission> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EmployeePermission? valueOf($core.int value) => _byValue[value];

  const EmployeePermission._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
