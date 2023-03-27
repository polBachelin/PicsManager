///
//  Generated code. Do not modify.
//  source: service/album_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'album_service.pb.dart' as $0;
export 'album_service.pb.dart';

class AlbumServiceClient extends $grpc.Client {
  static final _$createAlbum =
      $grpc.ClientMethod<$0.CreateAlbumRequest, $0.CreateAlbumResponse>(
          '/AlbumService/CreateAlbum',
          ($0.CreateAlbumRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateAlbumResponse.fromBuffer(value));
  static final _$updateAlbum =
      $grpc.ClientMethod<$0.UpdateAlbumRequest, $0.UpdateAlbumResponse>(
          '/AlbumService/UpdateAlbum',
          ($0.UpdateAlbumRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateAlbumResponse.fromBuffer(value));
  static final _$deleteAlbum =
      $grpc.ClientMethod<$0.DeleteAlbumRequest, $0.DeleteAlbumResponse>(
          '/AlbumService/DeleteAlbum',
          ($0.DeleteAlbumRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeleteAlbumResponse.fromBuffer(value));
  static final _$addAccessToAlbum = $grpc.ClientMethod<
          $0.AddAccessToAlbumRequest, $0.AddAccessToAlbumResponse>(
      '/AlbumService/AddAccessToAlbum',
      ($0.AddAccessToAlbumRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AddAccessToAlbumResponse.fromBuffer(value));
  static final _$listAlbums =
      $grpc.ClientMethod<$0.ListAlbumsRequest, $0.ListAlbumsResponse>(
          '/AlbumService/ListAlbums',
          ($0.ListAlbumsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListAlbumsResponse.fromBuffer(value));
  static final _$listOwnedAlbums =
      $grpc.ClientMethod<$0.ListOwnedAlbumsRequest, $0.ListOwnedAlbumsResponse>(
          '/AlbumService/ListOwnedAlbums',
          ($0.ListOwnedAlbumsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListOwnedAlbumsResponse.fromBuffer(value));
  static final _$listSharedAlbums = $grpc.ClientMethod<
          $0.ListSharedAlbumsRequest, $0.ListSharedAlbumsResponse>(
      '/AlbumService/ListSharedAlbums',
      ($0.ListSharedAlbumsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListSharedAlbumsResponse.fromBuffer(value));
  static final _$searchAlbumsByName = $grpc.ClientMethod<
          $0.SearchAlbumsByNameRequest, $0.SearchAlbumsByNameResponse>(
      '/AlbumService/SearchAlbumsByName',
      ($0.SearchAlbumsByNameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SearchAlbumsByNameResponse.fromBuffer(value));

  AlbumServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateAlbumResponse> createAlbum(
      $0.CreateAlbumRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAlbum, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateAlbumResponse> updateAlbum(
      $0.UpdateAlbumRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateAlbum, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteAlbumResponse> deleteAlbum(
      $0.DeleteAlbumRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteAlbum, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddAccessToAlbumResponse> addAccessToAlbum(
      $0.AddAccessToAlbumRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addAccessToAlbum, request, options: options);
  }

  $grpc.ResponseStream<$0.ListAlbumsResponse> listAlbums(
      $0.ListAlbumsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listAlbums, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.ListOwnedAlbumsResponse> listOwnedAlbums(
      $0.ListOwnedAlbumsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listOwnedAlbums, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.ListSharedAlbumsResponse> listSharedAlbums(
      $0.ListSharedAlbumsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listSharedAlbums, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.SearchAlbumsByNameResponse> searchAlbumsByName(
      $0.SearchAlbumsByNameRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchAlbumsByName, request, options: options);
  }
}

abstract class AlbumServiceBase extends $grpc.Service {
  $core.String get $name => 'AlbumService';

  AlbumServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.CreateAlbumRequest, $0.CreateAlbumResponse>(
            'CreateAlbum',
            createAlbum_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CreateAlbumRequest.fromBuffer(value),
            ($0.CreateAlbumResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateAlbumRequest, $0.UpdateAlbumResponse>(
            'UpdateAlbum',
            updateAlbum_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateAlbumRequest.fromBuffer(value),
            ($0.UpdateAlbumResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DeleteAlbumRequest, $0.DeleteAlbumResponse>(
            'DeleteAlbum',
            deleteAlbum_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DeleteAlbumRequest.fromBuffer(value),
            ($0.DeleteAlbumResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddAccessToAlbumRequest,
            $0.AddAccessToAlbumResponse>(
        'AddAccessToAlbum',
        addAccessToAlbum_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AddAccessToAlbumRequest.fromBuffer(value),
        ($0.AddAccessToAlbumResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListAlbumsRequest, $0.ListAlbumsResponse>(
        'ListAlbums',
        listAlbums_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ListAlbumsRequest.fromBuffer(value),
        ($0.ListAlbumsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListOwnedAlbumsRequest,
            $0.ListOwnedAlbumsResponse>(
        'ListOwnedAlbums',
        listOwnedAlbums_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.ListOwnedAlbumsRequest.fromBuffer(value),
        ($0.ListOwnedAlbumsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListSharedAlbumsRequest,
            $0.ListSharedAlbumsResponse>(
        'ListSharedAlbums',
        listSharedAlbums_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.ListSharedAlbumsRequest.fromBuffer(value),
        ($0.ListSharedAlbumsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchAlbumsByNameRequest,
            $0.SearchAlbumsByNameResponse>(
        'SearchAlbumsByName',
        searchAlbumsByName_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SearchAlbumsByNameRequest.fromBuffer(value),
        ($0.SearchAlbumsByNameResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateAlbumResponse> createAlbum_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateAlbumRequest> request) async {
    return createAlbum(call, await request);
  }

  $async.Future<$0.UpdateAlbumResponse> updateAlbum_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateAlbumRequest> request) async {
    return updateAlbum(call, await request);
  }

  $async.Future<$0.DeleteAlbumResponse> deleteAlbum_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteAlbumRequest> request) async {
    return deleteAlbum(call, await request);
  }

  $async.Future<$0.AddAccessToAlbumResponse> addAccessToAlbum_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AddAccessToAlbumRequest> request) async {
    return addAccessToAlbum(call, await request);
  }

  $async.Stream<$0.ListAlbumsResponse> listAlbums_Pre($grpc.ServiceCall call,
      $async.Future<$0.ListAlbumsRequest> request) async* {
    yield* listAlbums(call, await request);
  }

  $async.Stream<$0.ListOwnedAlbumsResponse> listOwnedAlbums_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListOwnedAlbumsRequest> request) async* {
    yield* listOwnedAlbums(call, await request);
  }

  $async.Stream<$0.ListSharedAlbumsResponse> listSharedAlbums_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListSharedAlbumsRequest> request) async* {
    yield* listSharedAlbums(call, await request);
  }

  $async.Future<$0.SearchAlbumsByNameResponse> searchAlbumsByName_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SearchAlbumsByNameRequest> request) async {
    return searchAlbumsByName(call, await request);
  }

  $async.Future<$0.CreateAlbumResponse> createAlbum(
      $grpc.ServiceCall call, $0.CreateAlbumRequest request);
  $async.Future<$0.UpdateAlbumResponse> updateAlbum(
      $grpc.ServiceCall call, $0.UpdateAlbumRequest request);
  $async.Future<$0.DeleteAlbumResponse> deleteAlbum(
      $grpc.ServiceCall call, $0.DeleteAlbumRequest request);
  $async.Future<$0.AddAccessToAlbumResponse> addAccessToAlbum(
      $grpc.ServiceCall call, $0.AddAccessToAlbumRequest request);
  $async.Stream<$0.ListAlbumsResponse> listAlbums(
      $grpc.ServiceCall call, $0.ListAlbumsRequest request);
  $async.Stream<$0.ListOwnedAlbumsResponse> listOwnedAlbums(
      $grpc.ServiceCall call, $0.ListOwnedAlbumsRequest request);
  $async.Stream<$0.ListSharedAlbumsResponse> listSharedAlbums(
      $grpc.ServiceCall call, $0.ListSharedAlbumsRequest request);
  $async.Future<$0.SearchAlbumsByNameResponse> searchAlbumsByName(
      $grpc.ServiceCall call, $0.SearchAlbumsByNameRequest request);
}
