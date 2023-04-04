///
//  Generated code. Do not modify.
//  source: service/picture_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'picture_service.pb.dart' as $0;
export 'picture_service.pb.dart';

class PictureServiceClient extends $grpc.Client {
  static final _$createPicture =
      $grpc.ClientMethod<$0.CreatePictureRequest, $0.CreatePictureResponse>(
          '/PictureService/CreatePicture',
          ($0.CreatePictureRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreatePictureResponse.fromBuffer(value));
  static final _$updatePicture =
      $grpc.ClientMethod<$0.UpdatePictureRequest, $0.UpdatePictureResponse>(
          '/PictureService/UpdatePicture',
          ($0.UpdatePictureRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdatePictureResponse.fromBuffer(value));
  static final _$deletePicture =
      $grpc.ClientMethod<$0.DeletePictureRequest, $0.DeletePictureResponse>(
          '/PictureService/DeletePicture',
          ($0.DeletePictureRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeletePictureResponse.fromBuffer(value));
  static final _$addAccessToPicture = $grpc.ClientMethod<
          $0.AddAccessToPictureRequest, $0.AddAccessToPictureResponse>(
      '/PictureService/AddAccessToPicture',
      ($0.AddAccessToPictureRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AddAccessToPictureResponse.fromBuffer(value));
  static final _$listPictures =
      $grpc.ClientMethod<$0.ListPicturesRequest, $0.ListPicturesResponse>(
          '/PictureService/ListPictures',
          ($0.ListPicturesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListPicturesResponse.fromBuffer(value));
  static final _$listAlbumPictures = $grpc.ClientMethod<
          $0.ListAlbumPicturesRequest, $0.ListAlbumPicturesResponse>(
      '/PictureService/ListAlbumPictures',
      ($0.ListAlbumPicturesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListAlbumPicturesResponse.fromBuffer(value));
  static final _$searchPicturesByTag = $grpc.ClientMethod<
          $0.SearchPicturesByTagRequest, $0.SearchPicturesByTagResponse>(
      '/PictureService/SearchPicturesByTag',
      ($0.SearchPicturesByTagRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SearchPicturesByTagResponse.fromBuffer(value));
  static final _$searchPicturesByName = $grpc.ClientMethod<
          $0.SearchPicturesByNameRequest, $0.SearchPicturesByNameResponse>(
      '/PictureService/SearchPicturesByName',
      ($0.SearchPicturesByNameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SearchPicturesByNameResponse.fromBuffer(value));

  PictureServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreatePictureResponse> createPicture(
      $0.CreatePictureRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPicture, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdatePictureResponse> updatePicture(
      $0.UpdatePictureRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePicture, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeletePictureResponse> deletePicture(
      $0.DeletePictureRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePicture, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddAccessToPictureResponse> addAccessToPicture(
      $0.AddAccessToPictureRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addAccessToPicture, request, options: options);
  }

  $grpc.ResponseStream<$0.ListPicturesResponse> listPictures(
      $0.ListPicturesRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listPictures, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.ListAlbumPicturesResponse> listAlbumPictures(
      $0.ListAlbumPicturesRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listAlbumPictures, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.SearchPicturesByTagResponse> searchPicturesByTag(
      $0.SearchPicturesByTagRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$searchPicturesByTag, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.SearchPicturesByNameResponse> searchPicturesByName(
      $0.SearchPicturesByNameRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$searchPicturesByName, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class PictureServiceBase extends $grpc.Service {
  $core.String get $name => 'PictureService';

  PictureServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.CreatePictureRequest, $0.CreatePictureResponse>(
            'CreatePicture',
            createPicture_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CreatePictureRequest.fromBuffer(value),
            ($0.CreatePictureResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdatePictureRequest, $0.UpdatePictureResponse>(
            'UpdatePicture',
            updatePicture_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdatePictureRequest.fromBuffer(value),
            ($0.UpdatePictureResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DeletePictureRequest, $0.DeletePictureResponse>(
            'DeletePicture',
            deletePicture_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DeletePictureRequest.fromBuffer(value),
            ($0.DeletePictureResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddAccessToPictureRequest,
            $0.AddAccessToPictureResponse>(
        'AddAccessToPicture',
        addAccessToPicture_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AddAccessToPictureRequest.fromBuffer(value),
        ($0.AddAccessToPictureResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ListPicturesRequest, $0.ListPicturesResponse>(
            'ListPictures',
            listPictures_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $0.ListPicturesRequest.fromBuffer(value),
            ($0.ListPicturesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListAlbumPicturesRequest,
            $0.ListAlbumPicturesResponse>(
        'ListAlbumPictures',
        listAlbumPictures_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.ListAlbumPicturesRequest.fromBuffer(value),
        ($0.ListAlbumPicturesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchPicturesByTagRequest,
            $0.SearchPicturesByTagResponse>(
        'SearchPicturesByTag',
        searchPicturesByTag_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.SearchPicturesByTagRequest.fromBuffer(value),
        ($0.SearchPicturesByTagResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchPicturesByNameRequest,
            $0.SearchPicturesByNameResponse>(
        'SearchPicturesByName',
        searchPicturesByName_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.SearchPicturesByNameRequest.fromBuffer(value),
        ($0.SearchPicturesByNameResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreatePictureResponse> createPicture_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.CreatePictureRequest> request) async {
    return createPicture(call, await request);
  }

  $async.Future<$0.UpdatePictureResponse> updatePicture_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UpdatePictureRequest> request) async {
    return updatePicture(call, await request);
  }

  $async.Future<$0.DeletePictureResponse> deletePicture_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DeletePictureRequest> request) async {
    return deletePicture(call, await request);
  }

  $async.Future<$0.AddAccessToPictureResponse> addAccessToPicture_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AddAccessToPictureRequest> request) async {
    return addAccessToPicture(call, await request);
  }

  $async.Stream<$0.ListPicturesResponse> listPictures_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListPicturesRequest> request) async* {
    yield* listPictures(call, await request);
  }

  $async.Stream<$0.ListAlbumPicturesResponse> listAlbumPictures_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListAlbumPicturesRequest> request) async* {
    yield* listAlbumPictures(call, await request);
  }

  $async.Stream<$0.SearchPicturesByTagResponse> searchPicturesByTag_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SearchPicturesByTagRequest> request) async* {
    yield* searchPicturesByTag(call, await request);
  }

  $async.Stream<$0.SearchPicturesByNameResponse> searchPicturesByName_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SearchPicturesByNameRequest> request) async* {
    yield* searchPicturesByName(call, await request);
  }

  $async.Future<$0.CreatePictureResponse> createPicture(
      $grpc.ServiceCall call, $0.CreatePictureRequest request);
  $async.Future<$0.UpdatePictureResponse> updatePicture(
      $grpc.ServiceCall call, $0.UpdatePictureRequest request);
  $async.Future<$0.DeletePictureResponse> deletePicture(
      $grpc.ServiceCall call, $0.DeletePictureRequest request);
  $async.Future<$0.AddAccessToPictureResponse> addAccessToPicture(
      $grpc.ServiceCall call, $0.AddAccessToPictureRequest request);
  $async.Stream<$0.ListPicturesResponse> listPictures(
      $grpc.ServiceCall call, $0.ListPicturesRequest request);
  $async.Stream<$0.ListAlbumPicturesResponse> listAlbumPictures(
      $grpc.ServiceCall call, $0.ListAlbumPicturesRequest request);
  $async.Stream<$0.SearchPicturesByTagResponse> searchPicturesByTag(
      $grpc.ServiceCall call, $0.SearchPicturesByTagRequest request);
  $async.Stream<$0.SearchPicturesByNameResponse> searchPicturesByName(
      $grpc.ServiceCall call, $0.SearchPicturesByNameRequest request);
}
