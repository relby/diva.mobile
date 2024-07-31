//
//  Generated code. Do not modify.
//  source: auth.proto
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

import 'auth.pb.dart' as $2;

export 'auth.pb.dart';

@$pb.GrpcServiceName('auth.AuthService')
class AuthServiceClient extends $grpc.Client {
  static final _$adminLogin = $grpc.ClientMethod<$2.AdminLoginRequest, $2.AdminLoginResponse>(
      '/auth.AuthService/AdminLogin',
      ($2.AdminLoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.AdminLoginResponse.fromBuffer(value));
  static final _$employeeLogin = $grpc.ClientMethod<$2.EmployeeLoginRequest, $2.EmployeeLoginResponse>(
      '/auth.AuthService/EmployeeLogin',
      ($2.EmployeeLoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.EmployeeLoginResponse.fromBuffer(value));
  static final _$refresh = $grpc.ClientMethod<$2.RefreshRequest, $2.RefreshResponse>(
      '/auth.AuthService/Refresh',
      ($2.RefreshRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.RefreshResponse.fromBuffer(value));
  static final _$logout = $grpc.ClientMethod<$2.LogoutRequest, $2.LogoutResponse>(
      '/auth.AuthService/Logout',
      ($2.LogoutRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.LogoutResponse.fromBuffer(value));

  AuthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.AdminLoginResponse> adminLogin($2.AdminLoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$adminLogin, request, options: options);
  }

  $grpc.ResponseFuture<$2.EmployeeLoginResponse> employeeLogin($2.EmployeeLoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$employeeLogin, request, options: options);
  }

  $grpc.ResponseFuture<$2.RefreshResponse> refresh($2.RefreshRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refresh, request, options: options);
  }

  $grpc.ResponseFuture<$2.LogoutResponse> logout($2.LogoutRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$logout, request, options: options);
  }
}

@$pb.GrpcServiceName('auth.AuthService')
abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'auth.AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.AdminLoginRequest, $2.AdminLoginResponse>(
        'AdminLogin',
        adminLogin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AdminLoginRequest.fromBuffer(value),
        ($2.AdminLoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.EmployeeLoginRequest, $2.EmployeeLoginResponse>(
        'EmployeeLogin',
        employeeLogin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.EmployeeLoginRequest.fromBuffer(value),
        ($2.EmployeeLoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RefreshRequest, $2.RefreshResponse>(
        'Refresh',
        refresh_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.RefreshRequest.fromBuffer(value),
        ($2.RefreshResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.LogoutRequest, $2.LogoutResponse>(
        'Logout',
        logout_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.LogoutRequest.fromBuffer(value),
        ($2.LogoutResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.AdminLoginResponse> adminLogin_Pre($grpc.ServiceCall call, $async.Future<$2.AdminLoginRequest> request) async {
    return adminLogin(call, await request);
  }

  $async.Future<$2.EmployeeLoginResponse> employeeLogin_Pre($grpc.ServiceCall call, $async.Future<$2.EmployeeLoginRequest> request) async {
    return employeeLogin(call, await request);
  }

  $async.Future<$2.RefreshResponse> refresh_Pre($grpc.ServiceCall call, $async.Future<$2.RefreshRequest> request) async {
    return refresh(call, await request);
  }

  $async.Future<$2.LogoutResponse> logout_Pre($grpc.ServiceCall call, $async.Future<$2.LogoutRequest> request) async {
    return logout(call, await request);
  }

  $async.Future<$2.AdminLoginResponse> adminLogin($grpc.ServiceCall call, $2.AdminLoginRequest request);
  $async.Future<$2.EmployeeLoginResponse> employeeLogin($grpc.ServiceCall call, $2.EmployeeLoginRequest request);
  $async.Future<$2.RefreshResponse> refresh($grpc.ServiceCall call, $2.RefreshRequest request);
  $async.Future<$2.LogoutResponse> logout($grpc.ServiceCall call, $2.LogoutRequest request);
}
