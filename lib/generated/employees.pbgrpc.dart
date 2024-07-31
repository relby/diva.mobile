//
//  Generated code. Do not modify.
//  source: employees.proto
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

import 'employees.pb.dart' as $1;

export 'employees.pb.dart';

@$pb.GrpcServiceName('employees.EmployeesService')
class EmployeesServiceClient extends $grpc.Client {
  static final _$getEmployees = $grpc.ClientMethod<$1.GetEmployeesRequest, $1.GetEmployeesResponse>(
      '/employees.EmployeesService/GetEmployees',
      ($1.GetEmployeesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetEmployeesResponse.fromBuffer(value));
  static final _$addEmployee = $grpc.ClientMethod<$1.AddEmployeeRequest, $1.AddEmployeeResponse>(
      '/employees.EmployeesService/AddEmployee',
      ($1.AddEmployeeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.AddEmployeeResponse.fromBuffer(value));
  static final _$updateEmployee = $grpc.ClientMethod<$1.UpdateEmployeeRequest, $1.UpdateEmployeeResponse>(
      '/employees.EmployeesService/UpdateEmployee',
      ($1.UpdateEmployeeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UpdateEmployeeResponse.fromBuffer(value));
  static final _$deleteEmployee = $grpc.ClientMethod<$1.DeleteEmployeeRequest, $1.DeleteEmployeeResponse>(
      '/employees.EmployeesService/DeleteEmployee',
      ($1.DeleteEmployeeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.DeleteEmployeeResponse.fromBuffer(value));

  EmployeesServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.GetEmployeesResponse> getEmployees($1.GetEmployeesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getEmployees, request, options: options);
  }

  $grpc.ResponseFuture<$1.AddEmployeeResponse> addEmployee($1.AddEmployeeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addEmployee, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateEmployeeResponse> updateEmployee($1.UpdateEmployeeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateEmployee, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteEmployeeResponse> deleteEmployee($1.DeleteEmployeeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteEmployee, request, options: options);
  }
}

@$pb.GrpcServiceName('employees.EmployeesService')
abstract class EmployeesServiceBase extends $grpc.Service {
  $core.String get $name => 'employees.EmployeesService';

  EmployeesServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.GetEmployeesRequest, $1.GetEmployeesResponse>(
        'GetEmployees',
        getEmployees_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetEmployeesRequest.fromBuffer(value),
        ($1.GetEmployeesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddEmployeeRequest, $1.AddEmployeeResponse>(
        'AddEmployee',
        addEmployee_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AddEmployeeRequest.fromBuffer(value),
        ($1.AddEmployeeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateEmployeeRequest, $1.UpdateEmployeeResponse>(
        'UpdateEmployee',
        updateEmployee_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdateEmployeeRequest.fromBuffer(value),
        ($1.UpdateEmployeeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteEmployeeRequest, $1.DeleteEmployeeResponse>(
        'DeleteEmployee',
        deleteEmployee_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeleteEmployeeRequest.fromBuffer(value),
        ($1.DeleteEmployeeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.GetEmployeesResponse> getEmployees_Pre($grpc.ServiceCall call, $async.Future<$1.GetEmployeesRequest> request) async {
    return getEmployees(call, await request);
  }

  $async.Future<$1.AddEmployeeResponse> addEmployee_Pre($grpc.ServiceCall call, $async.Future<$1.AddEmployeeRequest> request) async {
    return addEmployee(call, await request);
  }

  $async.Future<$1.UpdateEmployeeResponse> updateEmployee_Pre($grpc.ServiceCall call, $async.Future<$1.UpdateEmployeeRequest> request) async {
    return updateEmployee(call, await request);
  }

  $async.Future<$1.DeleteEmployeeResponse> deleteEmployee_Pre($grpc.ServiceCall call, $async.Future<$1.DeleteEmployeeRequest> request) async {
    return deleteEmployee(call, await request);
  }

  $async.Future<$1.GetEmployeesResponse> getEmployees($grpc.ServiceCall call, $1.GetEmployeesRequest request);
  $async.Future<$1.AddEmployeeResponse> addEmployee($grpc.ServiceCall call, $1.AddEmployeeRequest request);
  $async.Future<$1.UpdateEmployeeResponse> updateEmployee($grpc.ServiceCall call, $1.UpdateEmployeeRequest request);
  $async.Future<$1.DeleteEmployeeResponse> deleteEmployee($grpc.ServiceCall call, $1.DeleteEmployeeRequest request);
}
