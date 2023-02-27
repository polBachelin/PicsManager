///
//  Generated code. Do not modify.
//  source: service/album_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use albumMessageDescriptor instead')
const AlbumMessage$json = const {
  '1': 'AlbumMessage',
  '2': const [
    const {'1': 'album_id', '3': 1, '4': 1, '5': 5, '10': 'albumId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'thumbnail_data', '3': 3, '4': 1, '5': 12, '10': 'thumbnailData'},
    const {'1': 'owner_name', '3': 4, '4': 1, '5': 9, '10': 'ownerName'},
  ],
};

/// Descriptor for `AlbumMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List albumMessageDescriptor = $convert.base64Decode('CgxBbGJ1bU1lc3NhZ2USGQoIYWxidW1faWQYASABKAVSB2FsYnVtSWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIlCg50aHVtYm5haWxfZGF0YRgDIAEoDFINdGh1bWJuYWlsRGF0YRIdCgpvd25lcl9uYW1lGAQgASgJUglvd25lck5hbWU=');
@$core.Deprecated('Use createAlbumRequestDescriptor instead')
const CreateAlbumRequest$json = const {
  '1': 'CreateAlbumRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `CreateAlbumRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createAlbumRequestDescriptor = $convert.base64Decode('ChJDcmVhdGVBbGJ1bVJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use createAlbumResponseDescriptor instead')
const CreateAlbumResponse$json = const {
  '1': 'CreateAlbumResponse',
  '2': const [
    const {'1': 'album', '3': 1, '4': 1, '5': 11, '6': '.AlbumMessage', '10': 'album'},
  ],
};

/// Descriptor for `CreateAlbumResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createAlbumResponseDescriptor = $convert.base64Decode('ChNDcmVhdGVBbGJ1bVJlc3BvbnNlEiMKBWFsYnVtGAEgASgLMg0uQWxidW1NZXNzYWdlUgVhbGJ1bQ==');
@$core.Deprecated('Use updateAlbumRequestDescriptor instead')
const UpdateAlbumRequest$json = const {
  '1': 'UpdateAlbumRequest',
  '2': const [
    const {'1': 'source', '3': 1, '4': 1, '5': 11, '6': '.AlbumMessage', '10': 'source'},
  ],
};

/// Descriptor for `UpdateAlbumRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAlbumRequestDescriptor = $convert.base64Decode('ChJVcGRhdGVBbGJ1bVJlcXVlc3QSJQoGc291cmNlGAEgASgLMg0uQWxidW1NZXNzYWdlUgZzb3VyY2U=');
@$core.Deprecated('Use updateAlbumResponseDescriptor instead')
const UpdateAlbumResponse$json = const {
  '1': 'UpdateAlbumResponse',
  '2': const [
    const {'1': 'album', '3': 1, '4': 1, '5': 11, '6': '.AlbumMessage', '10': 'album'},
  ],
};

/// Descriptor for `UpdateAlbumResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAlbumResponseDescriptor = $convert.base64Decode('ChNVcGRhdGVBbGJ1bVJlc3BvbnNlEiMKBWFsYnVtGAEgASgLMg0uQWxidW1NZXNzYWdlUgVhbGJ1bQ==');
@$core.Deprecated('Use deleteAlbumRequestDescriptor instead')
const DeleteAlbumRequest$json = const {
  '1': 'DeleteAlbumRequest',
  '2': const [
    const {'1': 'album_id', '3': 1, '4': 1, '5': 5, '10': 'albumId'},
    const {'1': 'propagate_deletion', '3': 2, '4': 1, '5': 8, '9': 0, '10': 'propagateDeletion', '17': true},
  ],
  '8': const [
    const {'1': '_propagate_deletion'},
  ],
};

/// Descriptor for `DeleteAlbumRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteAlbumRequestDescriptor = $convert.base64Decode('ChJEZWxldGVBbGJ1bVJlcXVlc3QSGQoIYWxidW1faWQYASABKAVSB2FsYnVtSWQSMgoScHJvcGFnYXRlX2RlbGV0aW9uGAIgASgISABSEXByb3BhZ2F0ZURlbGV0aW9uiAEBQhUKE19wcm9wYWdhdGVfZGVsZXRpb24=');
@$core.Deprecated('Use deleteAlbumResponseDescriptor instead')
const DeleteAlbumResponse$json = const {
  '1': 'DeleteAlbumResponse',
};

/// Descriptor for `DeleteAlbumResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteAlbumResponseDescriptor = $convert.base64Decode('ChNEZWxldGVBbGJ1bVJlc3BvbnNl');
@$core.Deprecated('Use listAlbumsRequestDescriptor instead')
const ListAlbumsRequest$json = const {
  '1': 'ListAlbumsRequest',
};

/// Descriptor for `ListAlbumsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAlbumsRequestDescriptor = $convert.base64Decode('ChFMaXN0QWxidW1zUmVxdWVzdA==');
@$core.Deprecated('Use listAlbumsResponseDescriptor instead')
const ListAlbumsResponse$json = const {
  '1': 'ListAlbumsResponse',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 5, '10': 'index'},
    const {'1': 'albums', '3': 2, '4': 1, '5': 11, '6': '.AlbumMessage', '10': 'albums'},
  ],
};

/// Descriptor for `ListAlbumsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAlbumsResponseDescriptor = $convert.base64Decode('ChJMaXN0QWxidW1zUmVzcG9uc2USFAoFaW5kZXgYASABKAVSBWluZGV4EiUKBmFsYnVtcxgCIAEoCzINLkFsYnVtTWVzc2FnZVIGYWxidW1z');
@$core.Deprecated('Use listOwnedAlbumsRequestDescriptor instead')
const ListOwnedAlbumsRequest$json = const {
  '1': 'ListOwnedAlbumsRequest',
};

/// Descriptor for `ListOwnedAlbumsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listOwnedAlbumsRequestDescriptor = $convert.base64Decode('ChZMaXN0T3duZWRBbGJ1bXNSZXF1ZXN0');
@$core.Deprecated('Use listOwnedAlbumsResponseDescriptor instead')
const ListOwnedAlbumsResponse$json = const {
  '1': 'ListOwnedAlbumsResponse',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 5, '10': 'index'},
    const {'1': 'albums', '3': 2, '4': 1, '5': 11, '6': '.AlbumMessage', '10': 'albums'},
  ],
};

/// Descriptor for `ListOwnedAlbumsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listOwnedAlbumsResponseDescriptor = $convert.base64Decode('ChdMaXN0T3duZWRBbGJ1bXNSZXNwb25zZRIUCgVpbmRleBgBIAEoBVIFaW5kZXgSJQoGYWxidW1zGAIgASgLMg0uQWxidW1NZXNzYWdlUgZhbGJ1bXM=');
@$core.Deprecated('Use listSharedAlbumsRequestDescriptor instead')
const ListSharedAlbumsRequest$json = const {
  '1': 'ListSharedAlbumsRequest',
};

/// Descriptor for `ListSharedAlbumsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSharedAlbumsRequestDescriptor = $convert.base64Decode('ChdMaXN0U2hhcmVkQWxidW1zUmVxdWVzdA==');
@$core.Deprecated('Use listSharedAlbumsResponseDescriptor instead')
const ListSharedAlbumsResponse$json = const {
  '1': 'ListSharedAlbumsResponse',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 5, '10': 'index'},
    const {'1': 'albums', '3': 2, '4': 1, '5': 11, '6': '.AlbumMessage', '10': 'albums'},
  ],
};

/// Descriptor for `ListSharedAlbumsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSharedAlbumsResponseDescriptor = $convert.base64Decode('ChhMaXN0U2hhcmVkQWxidW1zUmVzcG9uc2USFAoFaW5kZXgYASABKAVSBWluZGV4EiUKBmFsYnVtcxgCIAEoCzINLkFsYnVtTWVzc2FnZVIGYWxidW1z');
@$core.Deprecated('Use searchAlbumsByNameRequestDescriptor instead')
const SearchAlbumsByNameRequest$json = const {
  '1': 'SearchAlbumsByNameRequest',
  '2': const [
    const {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
  ],
};

/// Descriptor for `SearchAlbumsByNameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchAlbumsByNameRequestDescriptor = $convert.base64Decode('ChlTZWFyY2hBbGJ1bXNCeU5hbWVSZXF1ZXN0EhQKBXF1ZXJ5GAEgASgJUgVxdWVyeQ==');
@$core.Deprecated('Use searchAlbumsByNameResponseDescriptor instead')
const SearchAlbumsByNameResponse$json = const {
  '1': 'SearchAlbumsByNameResponse',
  '2': const [
    const {'1': 'albums', '3': 1, '4': 3, '5': 11, '6': '.AlbumMessage', '10': 'albums'},
  ],
};

/// Descriptor for `SearchAlbumsByNameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchAlbumsByNameResponseDescriptor = $convert.base64Decode('ChpTZWFyY2hBbGJ1bXNCeU5hbWVSZXNwb25zZRIlCgZhbGJ1bXMYASADKAsyDS5BbGJ1bU1lc3NhZ2VSBmFsYnVtcw==');
