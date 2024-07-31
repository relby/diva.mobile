//
//  Generated code. Do not modify.
//  source: employees.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use employeePermissionDescriptor instead')
const EmployeePermission$json = {
  '1': 'EmployeePermission',
  '2': [
    {'1': 'CREATE', '2': 0},
    {'1': 'UPDATE', '2': 1},
    {'1': 'DELETE', '2': 2},
  ],
};

/// Descriptor for `EmployeePermission`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List employeePermissionDescriptor = $convert.base64Decode(
    'ChJFbXBsb3llZVBlcm1pc3Npb24SCgoGQ1JFQVRFEAASCgoGVVBEQVRFEAESCgoGREVMRVRFEA'
    'I=');

@$core.Deprecated('Use uUIDDescriptor instead')
const UUID$json = {
  '1': 'UUID',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `UUID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uUIDDescriptor = $convert.base64Decode(
    'CgRVVUlEEhQKBXZhbHVlGAEgASgJUgV2YWx1ZQ==');

@$core.Deprecated('Use employeeDescriptor instead')
const Employee$json = {
  '1': 'Employee',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.employees.UUID', '10': 'id'},
    {'1': 'full_name', '3': 2, '4': 1, '5': 9, '10': 'fullName'},
    {'1': 'access_key', '3': 3, '4': 1, '5': 9, '10': 'accessKey'},
    {'1': 'permissions', '3': 4, '4': 3, '5': 14, '6': '.employees.EmployeePermission', '10': 'permissions'},
  ],
};

/// Descriptor for `Employee`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List employeeDescriptor = $convert.base64Decode(
    'CghFbXBsb3llZRIfCgJpZBgBIAEoCzIPLmVtcGxveWVlcy5VVUlEUgJpZBIbCglmdWxsX25hbW'
    'UYAiABKAlSCGZ1bGxOYW1lEh0KCmFjY2Vzc19rZXkYAyABKAlSCWFjY2Vzc0tleRI/CgtwZXJt'
    'aXNzaW9ucxgEIAMoDjIdLmVtcGxveWVlcy5FbXBsb3llZVBlcm1pc3Npb25SC3Blcm1pc3Npb2'
    '5z');

@$core.Deprecated('Use getEmployeesRequestDescriptor instead')
const GetEmployeesRequest$json = {
  '1': 'GetEmployeesRequest',
};

/// Descriptor for `GetEmployeesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEmployeesRequestDescriptor = $convert.base64Decode(
    'ChNHZXRFbXBsb3llZXNSZXF1ZXN0');

@$core.Deprecated('Use getEmployeesResponseDescriptor instead')
const GetEmployeesResponse$json = {
  '1': 'GetEmployeesResponse',
  '2': [
    {'1': 'employees', '3': 1, '4': 3, '5': 11, '6': '.employees.Employee', '10': 'employees'},
  ],
};

/// Descriptor for `GetEmployeesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEmployeesResponseDescriptor = $convert.base64Decode(
    'ChRHZXRFbXBsb3llZXNSZXNwb25zZRIxCgllbXBsb3llZXMYASADKAsyEy5lbXBsb3llZXMuRW'
    '1wbG95ZWVSCWVtcGxveWVlcw==');

@$core.Deprecated('Use addEmployeeRequestDescriptor instead')
const AddEmployeeRequest$json = {
  '1': 'AddEmployeeRequest',
  '2': [
    {'1': 'full_name', '3': 1, '4': 1, '5': 9, '10': 'fullName'},
    {'1': 'accessKey', '3': 2, '4': 1, '5': 9, '10': 'accessKey'},
    {'1': 'permissions', '3': 3, '4': 3, '5': 14, '6': '.employees.EmployeePermission', '10': 'permissions'},
  ],
};

/// Descriptor for `AddEmployeeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addEmployeeRequestDescriptor = $convert.base64Decode(
    'ChJBZGRFbXBsb3llZVJlcXVlc3QSGwoJZnVsbF9uYW1lGAEgASgJUghmdWxsTmFtZRIcCglhY2'
    'Nlc3NLZXkYAiABKAlSCWFjY2Vzc0tleRI/CgtwZXJtaXNzaW9ucxgDIAMoDjIdLmVtcGxveWVl'
    'cy5FbXBsb3llZVBlcm1pc3Npb25SC3Blcm1pc3Npb25z');

@$core.Deprecated('Use addEmployeeResponseDescriptor instead')
const AddEmployeeResponse$json = {
  '1': 'AddEmployeeResponse',
  '2': [
    {'1': 'employee', '3': 1, '4': 1, '5': 11, '6': '.employees.Employee', '10': 'employee'},
  ],
};

/// Descriptor for `AddEmployeeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addEmployeeResponseDescriptor = $convert.base64Decode(
    'ChNBZGRFbXBsb3llZVJlc3BvbnNlEi8KCGVtcGxveWVlGAEgASgLMhMuZW1wbG95ZWVzLkVtcG'
    'xveWVlUghlbXBsb3llZQ==');

@$core.Deprecated('Use updateEmployeeRequestDescriptor instead')
const UpdateEmployeeRequest$json = {
  '1': 'UpdateEmployeeRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.employees.UUID', '10': 'id'},
    {'1': 'full_name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'fullName', '17': true},
    {'1': 'access_key', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'accessKey', '17': true},
    {'1': 'permissions', '3': 4, '4': 1, '5': 11, '6': '.employees.UpdateEmployeeRequest.Permissions', '9': 2, '10': 'permissions', '17': true},
  ],
  '3': [UpdateEmployeeRequest_Permissions$json],
  '8': [
    {'1': '_full_name'},
    {'1': '_access_key'},
    {'1': '_permissions'},
  ],
};

@$core.Deprecated('Use updateEmployeeRequestDescriptor instead')
const UpdateEmployeeRequest_Permissions$json = {
  '1': 'Permissions',
  '2': [
    {'1': 'permissions', '3': 1, '4': 3, '5': 14, '6': '.employees.EmployeePermission', '10': 'permissions'},
  ],
};

/// Descriptor for `UpdateEmployeeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateEmployeeRequestDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVFbXBsb3llZVJlcXVlc3QSHwoCaWQYASABKAsyDy5lbXBsb3llZXMuVVVJRFICaW'
    'QSIAoJZnVsbF9uYW1lGAIgASgJSABSCGZ1bGxOYW1liAEBEiIKCmFjY2Vzc19rZXkYAyABKAlI'
    'AVIJYWNjZXNzS2V5iAEBElMKC3Blcm1pc3Npb25zGAQgASgLMiwuZW1wbG95ZWVzLlVwZGF0ZU'
    'VtcGxveWVlUmVxdWVzdC5QZXJtaXNzaW9uc0gCUgtwZXJtaXNzaW9uc4gBARpOCgtQZXJtaXNz'
    'aW9ucxI/CgtwZXJtaXNzaW9ucxgBIAMoDjIdLmVtcGxveWVlcy5FbXBsb3llZVBlcm1pc3Npb2'
    '5SC3Blcm1pc3Npb25zQgwKCl9mdWxsX25hbWVCDQoLX2FjY2Vzc19rZXlCDgoMX3Blcm1pc3Np'
    'b25z');

@$core.Deprecated('Use updateEmployeeResponseDescriptor instead')
const UpdateEmployeeResponse$json = {
  '1': 'UpdateEmployeeResponse',
  '2': [
    {'1': 'employee', '3': 1, '4': 1, '5': 11, '6': '.employees.Employee', '10': 'employee'},
  ],
};

/// Descriptor for `UpdateEmployeeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateEmployeeResponseDescriptor = $convert.base64Decode(
    'ChZVcGRhdGVFbXBsb3llZVJlc3BvbnNlEi8KCGVtcGxveWVlGAEgASgLMhMuZW1wbG95ZWVzLk'
    'VtcGxveWVlUghlbXBsb3llZQ==');

@$core.Deprecated('Use deleteEmployeeRequestDescriptor instead')
const DeleteEmployeeRequest$json = {
  '1': 'DeleteEmployeeRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.employees.UUID', '10': 'id'},
  ],
};

/// Descriptor for `DeleteEmployeeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteEmployeeRequestDescriptor = $convert.base64Decode(
    'ChVEZWxldGVFbXBsb3llZVJlcXVlc3QSHwoCaWQYASABKAsyDy5lbXBsb3llZXMuVVVJRFICaW'
    'Q=');

@$core.Deprecated('Use deleteEmployeeResponseDescriptor instead')
const DeleteEmployeeResponse$json = {
  '1': 'DeleteEmployeeResponse',
  '2': [
    {'1': 'employee', '3': 1, '4': 1, '5': 11, '6': '.employees.Employee', '10': 'employee'},
  ],
};

/// Descriptor for `DeleteEmployeeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteEmployeeResponseDescriptor = $convert.base64Decode(
    'ChZEZWxldGVFbXBsb3llZVJlc3BvbnNlEi8KCGVtcGxveWVlGAEgASgLMhMuZW1wbG95ZWVzLk'
    'VtcGxveWVlUghlbXBsb3llZQ==');

