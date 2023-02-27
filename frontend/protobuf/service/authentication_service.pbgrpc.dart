///
//  Generated code. Do not modify.
//  source: service/authentication_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'authentication_service.pb.dart' as $0;
export 'authentication_service.pb.dart';

class AuthenticationServiceClient extends $grpc.Client {
  static final _$authentication =
      $grpc.ClientMethod<$0.AuthenticationRequest, $0.AuthenticationResponse>(
          '/AuthenticationService/Authentication',
          ($0.AuthenticationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthenticationResponse.fromBuffer(value));

  AuthenticationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AuthenticationResponse> authentication(
      $0.AuthenticationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authentication, request, options: options);
  }
}

abstract class AuthenticationServiceBase extends $grpc.Service {
  $core.String get $name => 'AuthenticationService';

  AuthenticationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AuthenticationRequest,
            $0.AuthenticationResponse>(
        'Authentication',
        authentication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AuthenticationRequest.fromBuffer(value),
        ($0.AuthenticationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AuthenticationResponse> authentication_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AuthenticationRequest> request) async {
    return authentication(call, await request);
  }

  $async.Future<$0.AuthenticationResponse> authentication(
      $grpc.ServiceCall call, $0.AuthenticationRequest request);
}
