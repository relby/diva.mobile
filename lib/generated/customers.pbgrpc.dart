//
//  Generated code. Do not modify.
//  source: customers.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'customers.pb.dart' as $0;

export 'customers.pb.dart';

@$pb.GrpcServiceName('customers.CustomersService')
class CustomersServiceClient extends $grpc.Client {
  static final _$listCustomers = $grpc.ClientMethod<$0.GetCustomersRequest, $0.GetCustomersResponse>(
      '/customers.CustomersService/ListCustomers',
      ($0.GetCustomersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetCustomersResponse.fromBuffer(value));
  static final _$updateCustomer = $grpc.ClientMethod<$0.UpdateCustomerRequest, $0.UpdateCustomerResponse>(
      '/customers.CustomersService/UpdateCustomer',
      ($0.UpdateCustomerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateCustomerResponse.fromBuffer(value));
  static final _$addCustomer = $grpc.ClientMethod<$0.AddCustomerRequest, $0.AddCustomerResponse>(
      '/customers.CustomersService/AddCustomer',
      ($0.AddCustomerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddCustomerResponse.fromBuffer(value));
  static final _$deleteCustomer = $grpc.ClientMethod<$0.DeleteCustomerRequest, $0.DeleteCustomerResponse>(
      '/customers.CustomersService/DeleteCustomer',
      ($0.DeleteCustomerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteCustomerResponse.fromBuffer(value));
  static final _$exportCustomersToExcel = $grpc.ClientMethod<$0.ExportCustomersToExcelRequest, $0.ExportCustomersToExcelResponse>(
      '/customers.CustomersService/ExportCustomersToExcel',
      ($0.ExportCustomersToExcelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ExportCustomersToExcelResponse.fromBuffer(value));

  CustomersServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetCustomersResponse> listCustomers($0.GetCustomersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listCustomers, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateCustomerResponse> updateCustomer($0.UpdateCustomerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateCustomer, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddCustomerResponse> addCustomer($0.AddCustomerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addCustomer, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteCustomerResponse> deleteCustomer($0.DeleteCustomerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteCustomer, request, options: options);
  }

  $grpc.ResponseFuture<$0.ExportCustomersToExcelResponse> exportCustomersToExcel($0.ExportCustomersToExcelRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$exportCustomersToExcel, request, options: options);
  }
}

@$pb.GrpcServiceName('customers.CustomersService')
abstract class CustomersServiceBase extends $grpc.Service {
  $core.String get $name => 'customers.CustomersService';

  CustomersServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetCustomersRequest, $0.GetCustomersResponse>(
        'ListCustomers',
        listCustomers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetCustomersRequest.fromBuffer(value),
        ($0.GetCustomersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateCustomerRequest, $0.UpdateCustomerResponse>(
        'UpdateCustomer',
        updateCustomer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateCustomerRequest.fromBuffer(value),
        ($0.UpdateCustomerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddCustomerRequest, $0.AddCustomerResponse>(
        'AddCustomer',
        addCustomer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddCustomerRequest.fromBuffer(value),
        ($0.AddCustomerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteCustomerRequest, $0.DeleteCustomerResponse>(
        'DeleteCustomer',
        deleteCustomer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteCustomerRequest.fromBuffer(value),
        ($0.DeleteCustomerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ExportCustomersToExcelRequest, $0.ExportCustomersToExcelResponse>(
        'ExportCustomersToExcel',
        exportCustomersToExcel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ExportCustomersToExcelRequest.fromBuffer(value),
        ($0.ExportCustomersToExcelResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetCustomersResponse> listCustomers_Pre($grpc.ServiceCall call, $async.Future<$0.GetCustomersRequest> request) async {
    return listCustomers(call, await request);
  }

  $async.Future<$0.UpdateCustomerResponse> updateCustomer_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateCustomerRequest> request) async {
    return updateCustomer(call, await request);
  }

  $async.Future<$0.AddCustomerResponse> addCustomer_Pre($grpc.ServiceCall call, $async.Future<$0.AddCustomerRequest> request) async {
    return addCustomer(call, await request);
  }

  $async.Future<$0.DeleteCustomerResponse> deleteCustomer_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteCustomerRequest> request) async {
    return deleteCustomer(call, await request);
  }

  $async.Future<$0.ExportCustomersToExcelResponse> exportCustomersToExcel_Pre($grpc.ServiceCall call, $async.Future<$0.ExportCustomersToExcelRequest> request) async {
    return exportCustomersToExcel(call, await request);
  }

  $async.Future<$0.GetCustomersResponse> listCustomers($grpc.ServiceCall call, $0.GetCustomersRequest request);
  $async.Future<$0.UpdateCustomerResponse> updateCustomer($grpc.ServiceCall call, $0.UpdateCustomerRequest request);
  $async.Future<$0.AddCustomerResponse> addCustomer($grpc.ServiceCall call, $0.AddCustomerRequest request);
  $async.Future<$0.DeleteCustomerResponse> deleteCustomer($grpc.ServiceCall call, $0.DeleteCustomerRequest request);
  $async.Future<$0.ExportCustomersToExcelResponse> exportCustomersToExcel($grpc.ServiceCall call, $0.ExportCustomersToExcelRequest request);
}
