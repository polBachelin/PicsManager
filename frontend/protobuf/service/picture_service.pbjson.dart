///
//  Generated code. Do not modify.
//  source: service/picture_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createPictureRequestDescriptor instead')
const CreatePictureRequest$json = const {
  '1': 'CreatePictureRequest',
  '2': const [
    const {'1': 'album_id', '3': 1, '4': 1, '5': 5, '10': 'albumId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'tags', '3': 3, '4': 3, '5': 9, '10': 'tags'},
    const {'1': 'data', '3': 4, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `CreatePictureRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPictureRequestDescriptor = $convert.base64Decode('ChRDcmVhdGVQaWN0dXJlUmVxdWVzdBIZCghhbGJ1bV9pZBgBIAEoBVIHYWxidW1JZBISCgRuYW1lGAIgASgJUgRuYW1lEhIKBHRhZ3MYAyADKAlSBHRhZ3MSEgoEZGF0YRgEIAEoDFIEZGF0YQ==');
@$core.Deprecated('Use createPictureResponseDescriptor instead')
const CreatePictureResponse$json = const {
  '1': 'CreatePictureResponse',
  '2': const [
    const {'1': 'pictures', '3': 1, '4': 1, '5': 11, '6': '.PictureMessage', '10': 'pictures'},
  ],
};

/// Descriptor for `CreatePictureResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPictureResponseDescriptor = $convert.base64Decode('ChVDcmVhdGVQaWN0dXJlUmVzcG9uc2USKwoIcGljdHVyZXMYASABKAsyDy5QaWN0dXJlTWVzc2FnZVIIcGljdHVyZXM=');
@$core.Deprecated('Use updatePictureRequestDescriptor instead')
const UpdatePictureRequest$json = const {
  '1': 'UpdatePictureRequest',
  '2': const [
    const {'1': 'pictures', '3': 1, '4': 1, '5': 11, '6': '.PictureMessage', '10': 'pictures'},
  ],
};

/// Descriptor for `UpdatePictureRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePictureRequestDescriptor = $convert.base64Decode('ChRVcGRhdGVQaWN0dXJlUmVxdWVzdBIrCghwaWN0dXJlcxgBIAEoCzIPLlBpY3R1cmVNZXNzYWdlUghwaWN0dXJlcw==');
@$core.Deprecated('Use updatePictureResponseDescriptor instead')
const UpdatePictureResponse$json = const {
  '1': 'UpdatePictureResponse',
  '2': const [
    const {'1': 'pictures', '3': 1, '4': 1, '5': 11, '6': '.PictureMessage', '10': 'pictures'},
  ],
};

/// Descriptor for `UpdatePictureResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePictureResponseDescriptor = $convert.base64Decode('ChVVcGRhdGVQaWN0dXJlUmVzcG9uc2USKwoIcGljdHVyZXMYASABKAsyDy5QaWN0dXJlTWVzc2FnZVIIcGljdHVyZXM=');
@$core.Deprecated('Use deletePictureRequestDescriptor instead')
const DeletePictureRequest$json = const {
  '1': 'DeletePictureRequest',
  '2': const [
    const {'1': 'picture_id', '3': 1, '4': 1, '5': 5, '10': 'pictureId'},
  ],
};

/// Descriptor for `DeletePictureRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePictureRequestDescriptor = $convert.base64Decode('ChREZWxldGVQaWN0dXJlUmVxdWVzdBIdCgpwaWN0dXJlX2lkGAEgASgFUglwaWN0dXJlSWQ=');
@$core.Deprecated('Use deletePictureResponseDescriptor instead')
const DeletePictureResponse$json = const {
  '1': 'DeletePictureResponse',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 5, '10': 'index'},
    const {'1': 'pictures', '3': 2, '4': 1, '5': 11, '6': '.PictureMessage', '10': 'pictures'},
  ],
};

/// Descriptor for `DeletePictureResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePictureResponseDescriptor = $convert.base64Decode('ChVEZWxldGVQaWN0dXJlUmVzcG9uc2USFAoFaW5kZXgYASABKAVSBWluZGV4EisKCHBpY3R1cmVzGAIgASgLMg8uUGljdHVyZU1lc3NhZ2VSCHBpY3R1cmVz');
@$core.Deprecated('Use listPicturesRequestDescriptor instead')
const ListPicturesRequest$json = const {
  '1': 'ListPicturesRequest',
};

/// Descriptor for `ListPicturesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPicturesRequestDescriptor = $convert.base64Decode('ChNMaXN0UGljdHVyZXNSZXF1ZXN0');
@$core.Deprecated('Use listPicturesResponseDescriptor instead')
const ListPicturesResponse$json = const {
  '1': 'ListPicturesResponse',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 5, '10': 'index'},
    const {'1': 'pictures', '3': 2, '4': 1, '5': 11, '6': '.PictureMessage', '10': 'pictures'},
  ],
};

/// Descriptor for `ListPicturesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPicturesResponseDescriptor = $convert.base64Decode('ChRMaXN0UGljdHVyZXNSZXNwb25zZRIUCgVpbmRleBgBIAEoBVIFaW5kZXgSKwoIcGljdHVyZXMYAiABKAsyDy5QaWN0dXJlTWVzc2FnZVIIcGljdHVyZXM=');
@$core.Deprecated('Use listAlbumPicturesRequestDescriptor instead')
const ListAlbumPicturesRequest$json = const {
  '1': 'ListAlbumPicturesRequest',
};

/// Descriptor for `ListAlbumPicturesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAlbumPicturesRequestDescriptor = $convert.base64Decode('ChhMaXN0QWxidW1QaWN0dXJlc1JlcXVlc3Q=');
@$core.Deprecated('Use listAlbumPicturesResponseDescriptor instead')
const ListAlbumPicturesResponse$json = const {
  '1': 'ListAlbumPicturesResponse',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 5, '10': 'index'},
    const {'1': 'pictures', '3': 2, '4': 1, '5': 11, '6': '.PictureMessage', '10': 'pictures'},
  ],
};

/// Descriptor for `ListAlbumPicturesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAlbumPicturesResponseDescriptor = $convert.base64Decode('ChlMaXN0QWxidW1QaWN0dXJlc1Jlc3BvbnNlEhQKBWluZGV4GAEgASgFUgVpbmRleBIrCghwaWN0dXJlcxgCIAEoCzIPLlBpY3R1cmVNZXNzYWdlUghwaWN0dXJlcw==');
@$core.Deprecated('Use searchPicturesByTagRequestDescriptor instead')
const SearchPicturesByTagRequest$json = const {
  '1': 'SearchPicturesByTagRequest',
  '2': const [
    const {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
  ],
};

/// Descriptor for `SearchPicturesByTagRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchPicturesByTagRequestDescriptor = $convert.base64Decode('ChpTZWFyY2hQaWN0dXJlc0J5VGFnUmVxdWVzdBIUCgVxdWVyeRgBIAEoCVIFcXVlcnk=');
@$core.Deprecated('Use searchPicturesByTagResponseDescriptor instead')
const SearchPicturesByTagResponse$json = const {
  '1': 'SearchPicturesByTagResponse',
  '2': const [
    const {'1': 'pictures', '3': 1, '4': 3, '5': 11, '6': '.PictureMessage', '10': 'pictures'},
  ],
};

/// Descriptor for `SearchPicturesByTagResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchPicturesByTagResponseDescriptor = $convert.base64Decode('ChtTZWFyY2hQaWN0dXJlc0J5VGFnUmVzcG9uc2USKwoIcGljdHVyZXMYASADKAsyDy5QaWN0dXJlTWVzc2FnZVIIcGljdHVyZXM=');
@$core.Deprecated('Use searchPicturesByNameRequestDescriptor instead')
const SearchPicturesByNameRequest$json = const {
  '1': 'SearchPicturesByNameRequest',
  '2': const [
    const {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
  ],
};

/// Descriptor for `SearchPicturesByNameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchPicturesByNameRequestDescriptor = $convert.base64Decode('ChtTZWFyY2hQaWN0dXJlc0J5TmFtZVJlcXVlc3QSFAoFcXVlcnkYASABKAlSBXF1ZXJ5');
@$core.Deprecated('Use searchPicturesByNameResponseDescriptor instead')
const SearchPicturesByNameResponse$json = const {
  '1': 'SearchPicturesByNameResponse',
  '2': const [
    const {'1': 'pictures', '3': 1, '4': 3, '5': 11, '6': '.PictureMessage', '10': 'pictures'},
  ],
};

/// Descriptor for `SearchPicturesByNameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchPicturesByNameResponseDescriptor = $convert.base64Decode('ChxTZWFyY2hQaWN0dXJlc0J5TmFtZVJlc3BvbnNlEisKCHBpY3R1cmVzGAEgAygLMg8uUGljdHVyZU1lc3NhZ2VSCHBpY3R1cmVz');
@$core.Deprecated('Use pictureMessageDescriptor instead')
const PictureMessage$json = const {
  '1': 'PictureMessage',
  '2': const [
    const {'1': 'image_id', '3': 1, '4': 1, '5': 5, '10': 'imageId'},
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'tags', '3': 3, '4': 3, '5': 9, '10': 'tags'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'album_id', '3': 5, '4': 1, '5': 5, '10': 'albumId'},
    const {'1': 'owner_name', '3': 6, '4': 1, '5': 9, '10': 'ownerName'},
  ],
};

/// Descriptor for `PictureMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pictureMessageDescriptor = $convert.base64Decode('Cg5QaWN0dXJlTWVzc2FnZRIZCghpbWFnZV9pZBgBIAEoBVIHaW1hZ2VJZBISCgRkYXRhGAIgASgMUgRkYXRhEhIKBHRhZ3MYAyADKAlSBHRhZ3MSEgoEbmFtZRgEIAEoCVIEbmFtZRIZCghhbGJ1bV9pZBgFIAEoBVIHYWxidW1JZBIdCgpvd25lcl9uYW1lGAYgASgJUglvd25lck5hbWU=');
