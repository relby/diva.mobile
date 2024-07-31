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

import 'employees.pbenum.dart';

export 'employees.pbenum.dart';

class UUID extends $pb.GeneratedMessage {
  factory UUID({
    $core.String? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  UUID._() : super();
  factory UUID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UUID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UUID', package: const $pb.PackageName(_omitMessageNames ? '' : 'employees'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UUID clone() => UUID()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UUID copyWith(void Function(UUID) updates) => super.copyWith((message) => updates(message as UUID)) as UUID;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UUID create() => UUID._();
  UUID createEmptyInstance() => create();
  static $pb.PbList<UUID> createRepeated() => $pb.PbList<UUID>();
  @$core.pragma('dart2js:noInline')
  static UUID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UUID>(create);
  static UUID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class Employee extends $pb.GeneratedMessage {
  factory Employee({
    UUID? id,
    $core.String? fullName,
    $core.String? accessKey,
    $core.Iterable<EmployeePermission>? permissions,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (fullName != null) {
      $result.fullName = fullName;
    }
    if (accessKey != null) {
      $result.accessKey = accessKey;
    }
    if (permissions != null) {
      $result.permissions.addAll(permissions);
    }
    return $result;
  }
  Employee._() : super();
  factory Employee.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Employee.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Employee', package: const $pb.PackageName(_omitMessageNames ? '' : 'employees'), createEmptyInstance: create)
    ..aOM<UUID>(1, _omitFieldNames ? '' : 'id', subBuilder: UUID.create)
    ..aOS(2, _omitFieldNames ? '' : 'fullName')
    ..aOS(3, _omitFieldNames ? '' : 'accessKey')
    ..pc<EmployeePermission>(4, _omitFieldNames ? '' : 'permissions', $pb.PbFieldType.KE, valueOf: EmployeePermission.valueOf, enumValues: EmployeePermission.values, defaultEnumValue: EmployeePermission.CREATE)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Employee clone() => Employee()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Employee copyWith(void Function(Employee) updates) => super.copyWith((message) => updates(message as Employee)) as Employee;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Employee create() => Employee._();
  Employee createEmptyInstance() => create();
  static $pb.PbList<Employee> createRepeated() => $pb.PbList<Employee>();
  @$core.pragma('dart2js:noInline')
  static Employee getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Employee>(create);
  static Employee? _defaultInstance;

  @$pb.TagNumber(1)
  UUID get id => $_getN(0);
  @$pb.TagNumber(1)
  set id(UUID v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  UUID ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get fullName => $_getSZ(1);
  @$pb.TagNumber(2)
  set fullName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFullName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFullName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accessKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set accessKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccessKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccessKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<EmployeePermission> get permissions => $_getList(3);
}

class GetEmployeesRequest extends $pb.GeneratedMessage {
  factory GetEmployeesRequest() => create();
  GetEmployeesRequest._() : super();
  factory GetEmployeesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEmployeesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetEmployeesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'employees'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEmployeesRequest clone() => GetEmployeesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEmployeesRequest copyWith(void Function(GetEmployeesRequest) updates) => super.copyWith((message) => updates(message as GetEmployeesRequest)) as GetEmployeesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetEmployeesRequest create() => GetEmployeesRequest._();
  GetEmployeesRequest createEmptyInstance() => create();
  static $pb.PbList<GetEmployeesRequest> createRepeated() => $pb.PbList<GetEmployeesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetEmployeesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEmployeesRequest>(create);
  static GetEmployeesRequest? _defaultInstance;
}

class GetEmployeesResponse extends $pb.GeneratedMessage {
  factory GetEmployeesResponse({
    $core.Iterable<Employee>? employees,
  }) {
    final $result = create();
    if (employees != null) {
      $result.employees.addAll(employees);
    }
    return $result;
  }
  GetEmployeesResponse._() : super();
  factory GetEmployeesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEmployeesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetEmployeesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'employees'), createEmptyInstance: create)
    ..pc<Employee>(1, _omitFieldNames ? '' : 'employees', $pb.PbFieldType.PM, subBuilder: Employee.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEmployeesResponse clone() => GetEmployeesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEmployeesResponse copyWith(void Function(GetEmployeesResponse) updates) => super.copyWith((message) => updates(message as GetEmployeesResponse)) as GetEmployeesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetEmployeesResponse create() => GetEmployeesResponse._();
  GetEmployeesResponse createEmptyInstance() => create();
  static $pb.PbList<GetEmployeesResponse> createRepeated() => $pb.PbList<GetEmployeesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetEmployeesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEmployeesResponse>(create);
  static GetEmployeesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Employee> get employees => $_getList(0);
}

class AddEmployeeRequest extends $pb.GeneratedMessage {
  factory AddEmployeeRequest({
    $core.String? fullName,
    $core.String? accessKey,
    $core.Iterable<EmployeePermission>? permissions,
  }) {
    final $result = create();
    if (fullName != null) {
      $result.fullName = fullName;
    }
    if (accessKey != null) {
      $result.accessKey = accessKey;
    }
    if (permissions != null) {
      $result.permissions.addAll(permissions);
    }
    return $result;
  }
  AddEmployeeRequest._() : super();
  factory AddEmployeeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddEmployeeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddEmployeeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'employees'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fullName')
    ..aOS(2, _omitFieldNames ? '' : 'accessKey', protoName: 'accessKey')
    ..pc<EmployeePermission>(3, _omitFieldNames ? '' : 'permissions', $pb.PbFieldType.KE, valueOf: EmployeePermission.valueOf, enumValues: EmployeePermission.values, defaultEnumValue: EmployeePermission.CREATE)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddEmployeeRequest clone() => AddEmployeeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddEmployeeRequest copyWith(void Function(AddEmployeeRequest) updates) => super.copyWith((message) => updates(message as AddEmployeeRequest)) as AddEmployeeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddEmployeeRequest create() => AddEmployeeRequest._();
  AddEmployeeRequest createEmptyInstance() => create();
  static $pb.PbList<AddEmployeeRequest> createRepeated() => $pb.PbList<AddEmployeeRequest>();
  @$core.pragma('dart2js:noInline')
  static AddEmployeeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddEmployeeRequest>(create);
  static AddEmployeeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fullName => $_getSZ(0);
  @$pb.TagNumber(1)
  set fullName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFullName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFullName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accessKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set accessKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccessKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<EmployeePermission> get permissions => $_getList(2);
}

class AddEmployeeResponse extends $pb.GeneratedMessage {
  factory AddEmployeeResponse({
    Employee? employee,
  }) {
    final $result = create();
    if (employee != null) {
      $result.employee = employee;
    }
    return $result;
  }
  AddEmployeeResponse._() : super();
  factory AddEmployeeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddEmployeeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddEmployeeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'employees'), createEmptyInstance: create)
    ..aOM<Employee>(1, _omitFieldNames ? '' : 'employee', subBuilder: Employee.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddEmployeeResponse clone() => AddEmployeeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddEmployeeResponse copyWith(void Function(AddEmployeeResponse) updates) => super.copyWith((message) => updates(message as AddEmployeeResponse)) as AddEmployeeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddEmployeeResponse create() => AddEmployeeResponse._();
  AddEmployeeResponse createEmptyInstance() => create();
  static $pb.PbList<AddEmployeeResponse> createRepeated() => $pb.PbList<AddEmployeeResponse>();
  @$core.pragma('dart2js:noInline')
  static AddEmployeeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddEmployeeResponse>(create);
  static AddEmployeeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Employee get employee => $_getN(0);
  @$pb.TagNumber(1)
  set employee(Employee v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmployee() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmployee() => clearField(1);
  @$pb.TagNumber(1)
  Employee ensureEmployee() => $_ensure(0);
}

class UpdateEmployeeRequest_Permissions extends $pb.GeneratedMessage {
  factory UpdateEmployeeRequest_Permissions({
    $core.Iterable<EmployeePermission>? permissions,
  }) {
    final $result = create();
    if (permissions != null) {
      $result.permissions.addAll(permissions);
    }
    return $result;
  }
  UpdateEmployeeRequest_Permissions._() : super();
  factory UpdateEmployeeRequest_Permissions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateEmployeeRequest_Permissions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateEmployeeRequest.Permissions', package: const $pb.PackageName(_omitMessageNames ? '' : 'employees'), createEmptyInstance: create)
    ..pc<EmployeePermission>(1, _omitFieldNames ? '' : 'permissions', $pb.PbFieldType.KE, valueOf: EmployeePermission.valueOf, enumValues: EmployeePermission.values, defaultEnumValue: EmployeePermission.CREATE)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateEmployeeRequest_Permissions clone() => UpdateEmployeeRequest_Permissions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateEmployeeRequest_Permissions copyWith(void Function(UpdateEmployeeRequest_Permissions) updates) => super.copyWith((message) => updates(message as UpdateEmployeeRequest_Permissions)) as UpdateEmployeeRequest_Permissions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateEmployeeRequest_Permissions create() => UpdateEmployeeRequest_Permissions._();
  UpdateEmployeeRequest_Permissions createEmptyInstance() => create();
  static $pb.PbList<UpdateEmployeeRequest_Permissions> createRepeated() => $pb.PbList<UpdateEmployeeRequest_Permissions>();
  @$core.pragma('dart2js:noInline')
  static UpdateEmployeeRequest_Permissions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateEmployeeRequest_Permissions>(create);
  static UpdateEmployeeRequest_Permissions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<EmployeePermission> get permissions => $_getList(0);
}

class UpdateEmployeeRequest extends $pb.GeneratedMessage {
  factory UpdateEmployeeRequest({
    UUID? id,
    $core.String? fullName,
    $core.String? accessKey,
    UpdateEmployeeRequest_Permissions? permissions,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (fullName != null) {
      $result.fullName = fullName;
    }
    if (accessKey != null) {
      $result.accessKey = accessKey;
    }
    if (permissions != null) {
      $result.permissions = permissions;
    }
    return $result;
  }
  UpdateEmployeeRequest._() : super();
  factory UpdateEmployeeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateEmployeeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateEmployeeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'employees'), createEmptyInstance: create)
    ..aOM<UUID>(1, _omitFieldNames ? '' : 'id', subBuilder: UUID.create)
    ..aOS(2, _omitFieldNames ? '' : 'fullName')
    ..aOS(3, _omitFieldNames ? '' : 'accessKey')
    ..aOM<UpdateEmployeeRequest_Permissions>(4, _omitFieldNames ? '' : 'permissions', subBuilder: UpdateEmployeeRequest_Permissions.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateEmployeeRequest clone() => UpdateEmployeeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateEmployeeRequest copyWith(void Function(UpdateEmployeeRequest) updates) => super.copyWith((message) => updates(message as UpdateEmployeeRequest)) as UpdateEmployeeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateEmployeeRequest create() => UpdateEmployeeRequest._();
  UpdateEmployeeRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateEmployeeRequest> createRepeated() => $pb.PbList<UpdateEmployeeRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateEmployeeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateEmployeeRequest>(create);
  static UpdateEmployeeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  UUID get id => $_getN(0);
  @$pb.TagNumber(1)
  set id(UUID v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  UUID ensureId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get fullName => $_getSZ(1);
  @$pb.TagNumber(2)
  set fullName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFullName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFullName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accessKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set accessKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccessKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccessKey() => clearField(3);

  @$pb.TagNumber(4)
  UpdateEmployeeRequest_Permissions get permissions => $_getN(3);
  @$pb.TagNumber(4)
  set permissions(UpdateEmployeeRequest_Permissions v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPermissions() => $_has(3);
  @$pb.TagNumber(4)
  void clearPermissions() => clearField(4);
  @$pb.TagNumber(4)
  UpdateEmployeeRequest_Permissions ensurePermissions() => $_ensure(3);
}

class UpdateEmployeeResponse extends $pb.GeneratedMessage {
  factory UpdateEmployeeResponse({
    Employee? employee,
  }) {
    final $result = create();
    if (employee != null) {
      $result.employee = employee;
    }
    return $result;
  }
  UpdateEmployeeResponse._() : super();
  factory UpdateEmployeeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateEmployeeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateEmployeeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'employees'), createEmptyInstance: create)
    ..aOM<Employee>(1, _omitFieldNames ? '' : 'employee', subBuilder: Employee.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateEmployeeResponse clone() => UpdateEmployeeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateEmployeeResponse copyWith(void Function(UpdateEmployeeResponse) updates) => super.copyWith((message) => updates(message as UpdateEmployeeResponse)) as UpdateEmployeeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateEmployeeResponse create() => UpdateEmployeeResponse._();
  UpdateEmployeeResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateEmployeeResponse> createRepeated() => $pb.PbList<UpdateEmployeeResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateEmployeeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateEmployeeResponse>(create);
  static UpdateEmployeeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Employee get employee => $_getN(0);
  @$pb.TagNumber(1)
  set employee(Employee v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmployee() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmployee() => clearField(1);
  @$pb.TagNumber(1)
  Employee ensureEmployee() => $_ensure(0);
}

class DeleteEmployeeRequest extends $pb.GeneratedMessage {
  factory DeleteEmployeeRequest({
    UUID? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteEmployeeRequest._() : super();
  factory DeleteEmployeeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteEmployeeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteEmployeeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'employees'), createEmptyInstance: create)
    ..aOM<UUID>(1, _omitFieldNames ? '' : 'id', subBuilder: UUID.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteEmployeeRequest clone() => DeleteEmployeeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteEmployeeRequest copyWith(void Function(DeleteEmployeeRequest) updates) => super.copyWith((message) => updates(message as DeleteEmployeeRequest)) as DeleteEmployeeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteEmployeeRequest create() => DeleteEmployeeRequest._();
  DeleteEmployeeRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteEmployeeRequest> createRepeated() => $pb.PbList<DeleteEmployeeRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteEmployeeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteEmployeeRequest>(create);
  static DeleteEmployeeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  UUID get id => $_getN(0);
  @$pb.TagNumber(1)
  set id(UUID v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  UUID ensureId() => $_ensure(0);
}

class DeleteEmployeeResponse extends $pb.GeneratedMessage {
  factory DeleteEmployeeResponse({
    Employee? employee,
  }) {
    final $result = create();
    if (employee != null) {
      $result.employee = employee;
    }
    return $result;
  }
  DeleteEmployeeResponse._() : super();
  factory DeleteEmployeeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteEmployeeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteEmployeeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'employees'), createEmptyInstance: create)
    ..aOM<Employee>(1, _omitFieldNames ? '' : 'employee', subBuilder: Employee.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteEmployeeResponse clone() => DeleteEmployeeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteEmployeeResponse copyWith(void Function(DeleteEmployeeResponse) updates) => super.copyWith((message) => updates(message as DeleteEmployeeResponse)) as DeleteEmployeeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteEmployeeResponse create() => DeleteEmployeeResponse._();
  DeleteEmployeeResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteEmployeeResponse> createRepeated() => $pb.PbList<DeleteEmployeeResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteEmployeeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteEmployeeResponse>(create);
  static DeleteEmployeeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Employee get employee => $_getN(0);
  @$pb.TagNumber(1)
  set employee(Employee v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmployee() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmployee() => clearField(1);
  @$pb.TagNumber(1)
  Employee ensureEmployee() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
