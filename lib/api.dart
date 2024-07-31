import 'package:diva/generated/customers.pbgrpc.dart';
import 'package:diva/generated/employees.pbgrpc.dart';
import 'package:diva/generated/auth.pbgrpc.dart';
import 'package:diva/secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

final grpcClientChannel = ClientChannel(
  // NOTE: https://github.com/hillelcoren/flutter-redux-starter/issues/16
  '95.174.93.229',
  port: 50051,
  options: const ChannelOptions(
    credentials: ChannelCredentials.insecure(),
  ),
);

final customersServiceClient = CustomersServiceClient(grpcClientChannel);
final employeesServiceClient = EmployeesServiceClient(grpcClientChannel);
final authServiceClient = AuthServiceClient(grpcClientChannel);

Future<T?> makeGrpcCall<T>(
    BuildContext context, Future<T> Function() callback) async {
  try {
    return await callback();
  } on GrpcError catch (e) {
    if (e.code == StatusCode.unauthenticated) {
      final refreshToken = await getRefreshToken();
      if (refreshToken == null) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('refresh token null'),
              duration: Duration(seconds: 3),
            ),
          );
          Navigator.of(context).pushReplacementNamed('/auth');
        }
        return null;
      }

      RefreshResponse response;
      try {
        response = await authServiceClient
            .refresh(RefreshRequest(refreshToken: refreshToken));
      } on GrpcError catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('refresh error ${e.message}'),
              duration: Duration(seconds: 3),
            ),
          );
          Navigator.of(context).pushReplacementNamed('/auth');
        }
        return null;
      } catch (e) {
        // TODO: log it to analytics
        print('UNEXPECTED ERROR: $e');
        return null;
      }

      await Future.wait([
        saveAccessToken(response.accessToken),
        saveRefreshToken(response.refreshToken),
      ]);

      return await callback();
    }
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message ?? ''),
          duration: const Duration(seconds: 3),
        ),
      );
    }
    print('ERROR: $e');
  } catch (e) {
    // TODO: log it to analytics
    print('UNEXPECTED ERROR: $e');
  }

  return null;
}
