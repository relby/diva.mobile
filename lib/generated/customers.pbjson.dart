//
//  Generated code. Do not modify.
//  source: customers.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use customerDescriptor instead')
const Customer$json = {
  '1': 'Customer',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'full_name', '3': 2, '4': 1, '5': 9, '10': 'fullName'},
    {'1': 'phone_number', '3': 3, '4': 1, '5': 9, '10': 'phoneNumber'},
    {'1': 'discount', '3': 4, '4': 1, '5': 13, '10': 'discount'},
  ],
};

/// Descriptor for `Customer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customerDescriptor = $convert.base64Decode(
    'CghDdXN0b21lchIOCgJpZBgBIAEoBFICaWQSGwoJZnVsbF9uYW1lGAIgASgJUghmdWxsTmFtZR'
    'IhCgxwaG9uZV9udW1iZXIYAyABKAlSC3Bob25lTnVtYmVyEhoKCGRpc2NvdW50GAQgASgNUghk'
    'aXNjb3VudA==');

@$core.Deprecated('Use getCustomersRequestDescriptor instead')
const GetCustomersRequest$json = {
  '1': 'GetCustomersRequest',
  '2': [
    {'1': 'full_name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'fullName', '17': true},
    {'1': 'phone_number', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'phoneNumber', '17': true},
  ],
  '8': [
    {'1': '_full_name'},
    {'1': '_phone_number'},
  ],
};

/// Descriptor for `GetCustomersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCustomersRequestDescriptor = $convert.base64Decode(
    'ChNHZXRDdXN0b21lcnNSZXF1ZXN0EiAKCWZ1bGxfbmFtZRgBIAEoCUgAUghmdWxsTmFtZYgBAR'
    'ImCgxwaG9uZV9udW1iZXIYAiABKAlIAVILcGhvbmVOdW1iZXKIAQFCDAoKX2Z1bGxfbmFtZUIP'
    'Cg1fcGhvbmVfbnVtYmVy');

@$core.Deprecated('Use getCustomersResponseDescriptor instead')
const GetCustomersResponse$json = {
  '1': 'GetCustomersResponse',
  '2': [
    {'1': 'customers', '3': 1, '4': 3, '5': 11, '6': '.customers.Customer', '10': 'customers'},
  ],
};

/// Descriptor for `GetCustomersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCustomersResponseDescriptor = $convert.base64Decode(
    'ChRHZXRDdXN0b21lcnNSZXNwb25zZRIxCgljdXN0b21lcnMYASADKAsyEy5jdXN0b21lcnMuQ3'
    'VzdG9tZXJSCWN1c3RvbWVycw==');

@$core.Deprecated('Use updateCustomerRequestDescriptor instead')
const UpdateCustomerRequest$json = {
  '1': 'UpdateCustomerRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'full_name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'fullName', '17': true},
    {'1': 'phone_number', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'phoneNumber', '17': true},
    {'1': 'discount', '3': 4, '4': 1, '5': 13, '9': 2, '10': 'discount', '17': true},
  ],
  '8': [
    {'1': '_full_name'},
    {'1': '_phone_number'},
    {'1': '_discount'},
  ],
};

/// Descriptor for `UpdateCustomerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCustomerRequestDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVDdXN0b21lclJlcXVlc3QSDgoCaWQYASABKARSAmlkEiAKCWZ1bGxfbmFtZRgCIA'
    'EoCUgAUghmdWxsTmFtZYgBARImCgxwaG9uZV9udW1iZXIYAyABKAlIAVILcGhvbmVOdW1iZXKI'
    'AQESHwoIZGlzY291bnQYBCABKA1IAlIIZGlzY291bnSIAQFCDAoKX2Z1bGxfbmFtZUIPCg1fcG'
    'hvbmVfbnVtYmVyQgsKCV9kaXNjb3VudA==');

@$core.Deprecated('Use updateCustomerResponseDescriptor instead')
const UpdateCustomerResponse$json = {
  '1': 'UpdateCustomerResponse',
  '2': [
    {'1': 'customer', '3': 1, '4': 1, '5': 11, '6': '.customers.Customer', '10': 'customer'},
  ],
};

/// Descriptor for `UpdateCustomerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCustomerResponseDescriptor = $convert.base64Decode(
    'ChZVcGRhdGVDdXN0b21lclJlc3BvbnNlEi8KCGN1c3RvbWVyGAEgASgLMhMuY3VzdG9tZXJzLk'
    'N1c3RvbWVyUghjdXN0b21lcg==');

@$core.Deprecated('Use addCustomerRequestDescriptor instead')
const AddCustomerRequest$json = {
  '1': 'AddCustomerRequest',
  '2': [
    {'1': 'full_name', '3': 1, '4': 1, '5': 9, '10': 'fullName'},
    {'1': 'phone_number', '3': 2, '4': 1, '5': 9, '10': 'phoneNumber'},
    {'1': 'discount', '3': 3, '4': 1, '5': 13, '10': 'discount'},
  ],
};

/// Descriptor for `AddCustomerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addCustomerRequestDescriptor = $convert.base64Decode(
    'ChJBZGRDdXN0b21lclJlcXVlc3QSGwoJZnVsbF9uYW1lGAEgASgJUghmdWxsTmFtZRIhCgxwaG'
    '9uZV9udW1iZXIYAiABKAlSC3Bob25lTnVtYmVyEhoKCGRpc2NvdW50GAMgASgNUghkaXNjb3Vu'
    'dA==');

@$core.Deprecated('Use addCustomerResponseDescriptor instead')
const AddCustomerResponse$json = {
  '1': 'AddCustomerResponse',
  '2': [
    {'1': 'customer', '3': 1, '4': 1, '5': 11, '6': '.customers.Customer', '10': 'customer'},
  ],
};

/// Descriptor for `AddCustomerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addCustomerResponseDescriptor = $convert.base64Decode(
    'ChNBZGRDdXN0b21lclJlc3BvbnNlEi8KCGN1c3RvbWVyGAEgASgLMhMuY3VzdG9tZXJzLkN1c3'
    'RvbWVyUghjdXN0b21lcg==');

@$core.Deprecated('Use deleteCustomerRequestDescriptor instead')
const DeleteCustomerRequest$json = {
  '1': 'DeleteCustomerRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `DeleteCustomerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCustomerRequestDescriptor = $convert.base64Decode(
    'ChVEZWxldGVDdXN0b21lclJlcXVlc3QSDgoCaWQYASABKARSAmlk');

@$core.Deprecated('Use deleteCustomerResponseDescriptor instead')
const DeleteCustomerResponse$json = {
  '1': 'DeleteCustomerResponse',
  '2': [
    {'1': 'customer', '3': 1, '4': 1, '5': 11, '6': '.customers.Customer', '10': 'customer'},
  ],
};

/// Descriptor for `DeleteCustomerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCustomerResponseDescriptor = $convert.base64Decode(
    'ChZEZWxldGVDdXN0b21lclJlc3BvbnNlEi8KCGN1c3RvbWVyGAEgASgLMhMuY3VzdG9tZXJzLk'
    'N1c3RvbWVyUghjdXN0b21lcg==');

@$core.Deprecated('Use exportCustomersToExcelRequestDescriptor instead')
const ExportCustomersToExcelRequest$json = {
  '1': 'ExportCustomersToExcelRequest',
};

/// Descriptor for `ExportCustomersToExcelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exportCustomersToExcelRequestDescriptor = $convert.base64Decode(
    'Ch1FeHBvcnRDdXN0b21lcnNUb0V4Y2VsUmVxdWVzdA==');

@$core.Deprecated('Use exportCustomersToExcelResponseDescriptor instead')
const ExportCustomersToExcelResponse$json = {
  '1': 'ExportCustomersToExcelResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `ExportCustomersToExcelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exportCustomersToExcelResponseDescriptor = $convert.base64Decode(
    'Ch5FeHBvcnRDdXN0b21lcnNUb0V4Y2VsUmVzcG9uc2USEgoEZGF0YRgBIAEoDFIEZGF0YQ==');

