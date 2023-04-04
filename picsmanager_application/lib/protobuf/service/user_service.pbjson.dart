///
//  Generated code. Do not modify.
//  source: service/user_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userMessageDescriptor instead')
const UserMessage$json = const {
  '1': 'UserMessage',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'password', '17': true},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
  ],
  '8': const [
    const {'1': '_password'},
  ],
};

/// Descriptor for `UserMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userMessageDescriptor = $convert.base64Decode('CgtVc2VyTWVzc2FnZRIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQSFAoFZW1haWwYAiABKAlSBWVtYWlsEh8KCHBhc3N3b3JkGAMgASgJSABSCHBhc3N3b3JkiAEBEhIKBG5hbWUYBCABKAlSBG5hbWVCCwoJX3Bhc3N3b3Jk');
@$core.Deprecated('Use createUserRequestDescriptor instead')
const CreateUserRequest$json = const {
  '1': 'CreateUserRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `CreateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVVc2VyUmVxdWVzdBIUCgVlbWFpbBgBIAEoCVIFZW1haWwSGgoIcGFzc3dvcmQYAiABKAlSCHBhc3N3b3JkEhIKBG5hbWUYAyABKAlSBG5hbWU=');
@$core.Deprecated('Use createUserResponseDescriptor instead')
const CreateUserResponse$json = const {
  '1': 'CreateUserResponse',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.UserMessage', '10': 'user'},
  ],
};

/// Descriptor for `CreateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserResponseDescriptor = $convert.base64Decode('ChJDcmVhdGVVc2VyUmVzcG9uc2USIAoEdXNlchgBIAEoCzIMLlVzZXJNZXNzYWdlUgR1c2Vy');
@$core.Deprecated('Use updateUserRequestDescriptor instead')
const UpdateUserRequest$json = const {
  '1': 'UpdateUserRequest',
  '2': const [
    const {'1': 'source', '3': 1, '4': 1, '5': 11, '6': '.UserMessage', '10': 'source'},
  ],
};

/// Descriptor for `UpdateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVVc2VyUmVxdWVzdBIkCgZzb3VyY2UYASABKAsyDC5Vc2VyTWVzc2FnZVIGc291cmNl');
@$core.Deprecated('Use updateUserResponseDescriptor instead')
const UpdateUserResponse$json = const {
  '1': 'UpdateUserResponse',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.UserMessage', '10': 'user'},
  ],
};

/// Descriptor for `UpdateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserResponseDescriptor = $convert.base64Decode('ChJVcGRhdGVVc2VyUmVzcG9uc2USIAoEdXNlchgBIAEoCzIMLlVzZXJNZXNzYWdlUgR1c2Vy');
@$core.Deprecated('Use deleteUserRequestDescriptor instead')
const DeleteUserRequest$json = const {
  '1': 'DeleteUserRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'propagate_deletion', '3': 2, '4': 1, '5': 8, '9': 0, '10': 'propagateDeletion', '17': true},
  ],
  '8': const [
    const {'1': '_propagate_deletion'},
  ],
};

/// Descriptor for `DeleteUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteUserRequestDescriptor = $convert.base64Decode('ChFEZWxldGVVc2VyUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQSMgoScHJvcGFnYXRlX2RlbGV0aW9uGAIgASgISABSEXByb3BhZ2F0ZURlbGV0aW9uiAEBQhUKE19wcm9wYWdhdGVfZGVsZXRpb24=');
@$core.Deprecated('Use deleteUserResponseDescriptor instead')
const DeleteUserResponse$json = const {
  '1': 'DeleteUserResponse',
};

/// Descriptor for `DeleteUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteUserResponseDescriptor = $convert.base64Decode('ChJEZWxldGVVc2VyUmVzcG9uc2U=');
@$core.Deprecated('Use searchUsersByNameRequestDescriptor instead')
const SearchUsersByNameRequest$json = const {
  '1': 'SearchUsersByNameRequest',
  '2': const [
    const {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
  ],
};

/// Descriptor for `SearchUsersByNameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchUsersByNameRequestDescriptor = $convert.base64Decode('ChhTZWFyY2hVc2Vyc0J5TmFtZVJlcXVlc3QSFAoFcXVlcnkYASABKAlSBXF1ZXJ5');
@$core.Deprecated('Use searchUsersByNameResponseDescriptor instead')
const SearchUsersByNameResponse$json = const {
  '1': 'SearchUsersByNameResponse',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.UserMessage', '10': 'users'},
  ],
};

/// Descriptor for `SearchUsersByNameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchUsersByNameResponseDescriptor = $convert.base64Decode('ChlTZWFyY2hVc2Vyc0J5TmFtZVJlc3BvbnNlEiIKBXVzZXJzGAEgAygLMgwuVXNlck1lc3NhZ2VSBXVzZXJz');
