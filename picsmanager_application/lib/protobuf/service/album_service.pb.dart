///
//  Generated code. Do not modify.
//  source: service/album_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AlbumMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AlbumMessage', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'albumId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thumbnailData', $pb.PbFieldType.OY)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerName')
    ..hasRequiredFields = false
  ;

  AlbumMessage._() : super();
  factory AlbumMessage({
    $core.String? albumId,
    $core.String? name,
    $core.List<$core.int>? thumbnailData,
    $core.String? ownerName,
  }) {
    final _result = create();
    if (albumId != null) {
      _result.albumId = albumId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (thumbnailData != null) {
      _result.thumbnailData = thumbnailData;
    }
    if (ownerName != null) {
      _result.ownerName = ownerName;
    }
    return _result;
  }
  factory AlbumMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AlbumMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AlbumMessage clone() => AlbumMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AlbumMessage copyWith(void Function(AlbumMessage) updates) => super.copyWith((message) => updates(message as AlbumMessage)) as AlbumMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AlbumMessage create() => AlbumMessage._();
  AlbumMessage createEmptyInstance() => create();
  static $pb.PbList<AlbumMessage> createRepeated() => $pb.PbList<AlbumMessage>();
  @$core.pragma('dart2js:noInline')
  static AlbumMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AlbumMessage>(create);
  static AlbumMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get albumId => $_getSZ(0);
  @$pb.TagNumber(1)
  set albumId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAlbumId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAlbumId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get thumbnailData => $_getN(2);
  @$pb.TagNumber(3)
  set thumbnailData($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasThumbnailData() => $_has(2);
  @$pb.TagNumber(3)
  void clearThumbnailData() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get ownerName => $_getSZ(3);
  @$pb.TagNumber(4)
  set ownerName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOwnerName() => $_has(3);
  @$pb.TagNumber(4)
  void clearOwnerName() => clearField(4);
}

class CreateAlbumRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateAlbumRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  CreateAlbumRequest._() : super();
  factory CreateAlbumRequest({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory CreateAlbumRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateAlbumRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateAlbumRequest clone() => CreateAlbumRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateAlbumRequest copyWith(void Function(CreateAlbumRequest) updates) => super.copyWith((message) => updates(message as CreateAlbumRequest)) as CreateAlbumRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateAlbumRequest create() => CreateAlbumRequest._();
  CreateAlbumRequest createEmptyInstance() => create();
  static $pb.PbList<CreateAlbumRequest> createRepeated() => $pb.PbList<CreateAlbumRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateAlbumRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateAlbumRequest>(create);
  static CreateAlbumRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class CreateAlbumResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateAlbumResponse', createEmptyInstance: create)
    ..aOM<AlbumMessage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'album', subBuilder: AlbumMessage.create)
    ..hasRequiredFields = false
  ;

  CreateAlbumResponse._() : super();
  factory CreateAlbumResponse({
    AlbumMessage? album,
  }) {
    final _result = create();
    if (album != null) {
      _result.album = album;
    }
    return _result;
  }
  factory CreateAlbumResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateAlbumResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateAlbumResponse clone() => CreateAlbumResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateAlbumResponse copyWith(void Function(CreateAlbumResponse) updates) => super.copyWith((message) => updates(message as CreateAlbumResponse)) as CreateAlbumResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateAlbumResponse create() => CreateAlbumResponse._();
  CreateAlbumResponse createEmptyInstance() => create();
  static $pb.PbList<CreateAlbumResponse> createRepeated() => $pb.PbList<CreateAlbumResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateAlbumResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateAlbumResponse>(create);
  static CreateAlbumResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AlbumMessage get album => $_getN(0);
  @$pb.TagNumber(1)
  set album(AlbumMessage v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAlbum() => $_has(0);
  @$pb.TagNumber(1)
  void clearAlbum() => clearField(1);
  @$pb.TagNumber(1)
  AlbumMessage ensureAlbum() => $_ensure(0);
}

class UpdateAlbumRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateAlbumRequest', createEmptyInstance: create)
    ..aOM<AlbumMessage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source', subBuilder: AlbumMessage.create)
    ..hasRequiredFields = false
  ;

  UpdateAlbumRequest._() : super();
  factory UpdateAlbumRequest({
    AlbumMessage? source,
  }) {
    final _result = create();
    if (source != null) {
      _result.source = source;
    }
    return _result;
  }
  factory UpdateAlbumRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateAlbumRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateAlbumRequest clone() => UpdateAlbumRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateAlbumRequest copyWith(void Function(UpdateAlbumRequest) updates) => super.copyWith((message) => updates(message as UpdateAlbumRequest)) as UpdateAlbumRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateAlbumRequest create() => UpdateAlbumRequest._();
  UpdateAlbumRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateAlbumRequest> createRepeated() => $pb.PbList<UpdateAlbumRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateAlbumRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateAlbumRequest>(create);
  static UpdateAlbumRequest? _defaultInstance;

  @$pb.TagNumber(1)
  AlbumMessage get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(AlbumMessage v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => clearField(1);
  @$pb.TagNumber(1)
  AlbumMessage ensureSource() => $_ensure(0);
}

class UpdateAlbumResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateAlbumResponse', createEmptyInstance: create)
    ..aOM<AlbumMessage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'album', subBuilder: AlbumMessage.create)
    ..hasRequiredFields = false
  ;

  UpdateAlbumResponse._() : super();
  factory UpdateAlbumResponse({
    AlbumMessage? album,
  }) {
    final _result = create();
    if (album != null) {
      _result.album = album;
    }
    return _result;
  }
  factory UpdateAlbumResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateAlbumResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateAlbumResponse clone() => UpdateAlbumResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateAlbumResponse copyWith(void Function(UpdateAlbumResponse) updates) => super.copyWith((message) => updates(message as UpdateAlbumResponse)) as UpdateAlbumResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateAlbumResponse create() => UpdateAlbumResponse._();
  UpdateAlbumResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateAlbumResponse> createRepeated() => $pb.PbList<UpdateAlbumResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateAlbumResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateAlbumResponse>(create);
  static UpdateAlbumResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AlbumMessage get album => $_getN(0);
  @$pb.TagNumber(1)
  set album(AlbumMessage v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAlbum() => $_has(0);
  @$pb.TagNumber(1)
  void clearAlbum() => clearField(1);
  @$pb.TagNumber(1)
  AlbumMessage ensureAlbum() => $_ensure(0);
}

class DeleteAlbumRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteAlbumRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'albumId')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'propagateDeletion')
    ..hasRequiredFields = false
  ;

  DeleteAlbumRequest._() : super();
  factory DeleteAlbumRequest({
    $core.String? albumId,
    $core.bool? propagateDeletion,
  }) {
    final _result = create();
    if (albumId != null) {
      _result.albumId = albumId;
    }
    if (propagateDeletion != null) {
      _result.propagateDeletion = propagateDeletion;
    }
    return _result;
  }
  factory DeleteAlbumRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteAlbumRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteAlbumRequest clone() => DeleteAlbumRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteAlbumRequest copyWith(void Function(DeleteAlbumRequest) updates) => super.copyWith((message) => updates(message as DeleteAlbumRequest)) as DeleteAlbumRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteAlbumRequest create() => DeleteAlbumRequest._();
  DeleteAlbumRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteAlbumRequest> createRepeated() => $pb.PbList<DeleteAlbumRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteAlbumRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteAlbumRequest>(create);
  static DeleteAlbumRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get albumId => $_getSZ(0);
  @$pb.TagNumber(1)
  set albumId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAlbumId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAlbumId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get propagateDeletion => $_getBF(1);
  @$pb.TagNumber(2)
  set propagateDeletion($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPropagateDeletion() => $_has(1);
  @$pb.TagNumber(2)
  void clearPropagateDeletion() => clearField(2);
}

class DeleteAlbumResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteAlbumResponse', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteAlbumResponse._() : super();
  factory DeleteAlbumResponse() => create();
  factory DeleteAlbumResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteAlbumResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteAlbumResponse clone() => DeleteAlbumResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteAlbumResponse copyWith(void Function(DeleteAlbumResponse) updates) => super.copyWith((message) => updates(message as DeleteAlbumResponse)) as DeleteAlbumResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteAlbumResponse create() => DeleteAlbumResponse._();
  DeleteAlbumResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteAlbumResponse> createRepeated() => $pb.PbList<DeleteAlbumResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteAlbumResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteAlbumResponse>(create);
  static DeleteAlbumResponse? _defaultInstance;
}

class AddAccessToAlbumRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddAccessToAlbumRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'albumId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessId')
    ..hasRequiredFields = false
  ;

  AddAccessToAlbumRequest._() : super();
  factory AddAccessToAlbumRequest({
    $core.String? albumId,
    $core.String? accessId,
  }) {
    final _result = create();
    if (albumId != null) {
      _result.albumId = albumId;
    }
    if (accessId != null) {
      _result.accessId = accessId;
    }
    return _result;
  }
  factory AddAccessToAlbumRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddAccessToAlbumRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddAccessToAlbumRequest clone() => AddAccessToAlbumRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddAccessToAlbumRequest copyWith(void Function(AddAccessToAlbumRequest) updates) => super.copyWith((message) => updates(message as AddAccessToAlbumRequest)) as AddAccessToAlbumRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddAccessToAlbumRequest create() => AddAccessToAlbumRequest._();
  AddAccessToAlbumRequest createEmptyInstance() => create();
  static $pb.PbList<AddAccessToAlbumRequest> createRepeated() => $pb.PbList<AddAccessToAlbumRequest>();
  @$core.pragma('dart2js:noInline')
  static AddAccessToAlbumRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddAccessToAlbumRequest>(create);
  static AddAccessToAlbumRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get albumId => $_getSZ(0);
  @$pb.TagNumber(1)
  set albumId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAlbumId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAlbumId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accessId => $_getSZ(1);
  @$pb.TagNumber(2)
  set accessId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccessId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessId() => clearField(2);
}

class AddAccessToAlbumResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddAccessToAlbumResponse', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AddAccessToAlbumResponse._() : super();
  factory AddAccessToAlbumResponse() => create();
  factory AddAccessToAlbumResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddAccessToAlbumResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddAccessToAlbumResponse clone() => AddAccessToAlbumResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddAccessToAlbumResponse copyWith(void Function(AddAccessToAlbumResponse) updates) => super.copyWith((message) => updates(message as AddAccessToAlbumResponse)) as AddAccessToAlbumResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddAccessToAlbumResponse create() => AddAccessToAlbumResponse._();
  AddAccessToAlbumResponse createEmptyInstance() => create();
  static $pb.PbList<AddAccessToAlbumResponse> createRepeated() => $pb.PbList<AddAccessToAlbumResponse>();
  @$core.pragma('dart2js:noInline')
  static AddAccessToAlbumResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddAccessToAlbumResponse>(create);
  static AddAccessToAlbumResponse? _defaultInstance;
}

class ListAlbumsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListAlbumsRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListAlbumsRequest._() : super();
  factory ListAlbumsRequest() => create();
  factory ListAlbumsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListAlbumsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListAlbumsRequest clone() => ListAlbumsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListAlbumsRequest copyWith(void Function(ListAlbumsRequest) updates) => super.copyWith((message) => updates(message as ListAlbumsRequest)) as ListAlbumsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListAlbumsRequest create() => ListAlbumsRequest._();
  ListAlbumsRequest createEmptyInstance() => create();
  static $pb.PbList<ListAlbumsRequest> createRepeated() => $pb.PbList<ListAlbumsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListAlbumsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAlbumsRequest>(create);
  static ListAlbumsRequest? _defaultInstance;
}

class ListAlbumsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListAlbumsResponse', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index', $pb.PbFieldType.O3)
    ..aOM<AlbumMessage>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'albums', subBuilder: AlbumMessage.create)
    ..hasRequiredFields = false
  ;

  ListAlbumsResponse._() : super();
  factory ListAlbumsResponse({
    $core.int? index,
    AlbumMessage? albums,
  }) {
    final _result = create();
    if (index != null) {
      _result.index = index;
    }
    if (albums != null) {
      _result.albums = albums;
    }
    return _result;
  }
  factory ListAlbumsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListAlbumsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListAlbumsResponse clone() => ListAlbumsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListAlbumsResponse copyWith(void Function(ListAlbumsResponse) updates) => super.copyWith((message) => updates(message as ListAlbumsResponse)) as ListAlbumsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListAlbumsResponse create() => ListAlbumsResponse._();
  ListAlbumsResponse createEmptyInstance() => create();
  static $pb.PbList<ListAlbumsResponse> createRepeated() => $pb.PbList<ListAlbumsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListAlbumsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAlbumsResponse>(create);
  static ListAlbumsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get index => $_getIZ(0);
  @$pb.TagNumber(1)
  set index($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndex() => clearField(1);

  @$pb.TagNumber(2)
  AlbumMessage get albums => $_getN(1);
  @$pb.TagNumber(2)
  set albums(AlbumMessage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAlbums() => $_has(1);
  @$pb.TagNumber(2)
  void clearAlbums() => clearField(2);
  @$pb.TagNumber(2)
  AlbumMessage ensureAlbums() => $_ensure(1);
}

class ListOwnedAlbumsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListOwnedAlbumsRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListOwnedAlbumsRequest._() : super();
  factory ListOwnedAlbumsRequest() => create();
  factory ListOwnedAlbumsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListOwnedAlbumsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListOwnedAlbumsRequest clone() => ListOwnedAlbumsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListOwnedAlbumsRequest copyWith(void Function(ListOwnedAlbumsRequest) updates) => super.copyWith((message) => updates(message as ListOwnedAlbumsRequest)) as ListOwnedAlbumsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListOwnedAlbumsRequest create() => ListOwnedAlbumsRequest._();
  ListOwnedAlbumsRequest createEmptyInstance() => create();
  static $pb.PbList<ListOwnedAlbumsRequest> createRepeated() => $pb.PbList<ListOwnedAlbumsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListOwnedAlbumsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListOwnedAlbumsRequest>(create);
  static ListOwnedAlbumsRequest? _defaultInstance;
}

class ListOwnedAlbumsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListOwnedAlbumsResponse', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index', $pb.PbFieldType.O3)
    ..aOM<AlbumMessage>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'albums', subBuilder: AlbumMessage.create)
    ..hasRequiredFields = false
  ;

  ListOwnedAlbumsResponse._() : super();
  factory ListOwnedAlbumsResponse({
    $core.int? index,
    AlbumMessage? albums,
  }) {
    final _result = create();
    if (index != null) {
      _result.index = index;
    }
    if (albums != null) {
      _result.albums = albums;
    }
    return _result;
  }
  factory ListOwnedAlbumsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListOwnedAlbumsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListOwnedAlbumsResponse clone() => ListOwnedAlbumsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListOwnedAlbumsResponse copyWith(void Function(ListOwnedAlbumsResponse) updates) => super.copyWith((message) => updates(message as ListOwnedAlbumsResponse)) as ListOwnedAlbumsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListOwnedAlbumsResponse create() => ListOwnedAlbumsResponse._();
  ListOwnedAlbumsResponse createEmptyInstance() => create();
  static $pb.PbList<ListOwnedAlbumsResponse> createRepeated() => $pb.PbList<ListOwnedAlbumsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListOwnedAlbumsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListOwnedAlbumsResponse>(create);
  static ListOwnedAlbumsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get index => $_getIZ(0);
  @$pb.TagNumber(1)
  set index($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndex() => clearField(1);

  @$pb.TagNumber(2)
  AlbumMessage get albums => $_getN(1);
  @$pb.TagNumber(2)
  set albums(AlbumMessage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAlbums() => $_has(1);
  @$pb.TagNumber(2)
  void clearAlbums() => clearField(2);
  @$pb.TagNumber(2)
  AlbumMessage ensureAlbums() => $_ensure(1);
}

class ListSharedAlbumsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListSharedAlbumsRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListSharedAlbumsRequest._() : super();
  factory ListSharedAlbumsRequest() => create();
  factory ListSharedAlbumsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSharedAlbumsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSharedAlbumsRequest clone() => ListSharedAlbumsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSharedAlbumsRequest copyWith(void Function(ListSharedAlbumsRequest) updates) => super.copyWith((message) => updates(message as ListSharedAlbumsRequest)) as ListSharedAlbumsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListSharedAlbumsRequest create() => ListSharedAlbumsRequest._();
  ListSharedAlbumsRequest createEmptyInstance() => create();
  static $pb.PbList<ListSharedAlbumsRequest> createRepeated() => $pb.PbList<ListSharedAlbumsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSharedAlbumsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSharedAlbumsRequest>(create);
  static ListSharedAlbumsRequest? _defaultInstance;
}

class ListSharedAlbumsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListSharedAlbumsResponse', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index', $pb.PbFieldType.O3)
    ..aOM<AlbumMessage>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'albums', subBuilder: AlbumMessage.create)
    ..hasRequiredFields = false
  ;

  ListSharedAlbumsResponse._() : super();
  factory ListSharedAlbumsResponse({
    $core.int? index,
    AlbumMessage? albums,
  }) {
    final _result = create();
    if (index != null) {
      _result.index = index;
    }
    if (albums != null) {
      _result.albums = albums;
    }
    return _result;
  }
  factory ListSharedAlbumsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSharedAlbumsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSharedAlbumsResponse clone() => ListSharedAlbumsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSharedAlbumsResponse copyWith(void Function(ListSharedAlbumsResponse) updates) => super.copyWith((message) => updates(message as ListSharedAlbumsResponse)) as ListSharedAlbumsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListSharedAlbumsResponse create() => ListSharedAlbumsResponse._();
  ListSharedAlbumsResponse createEmptyInstance() => create();
  static $pb.PbList<ListSharedAlbumsResponse> createRepeated() => $pb.PbList<ListSharedAlbumsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSharedAlbumsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSharedAlbumsResponse>(create);
  static ListSharedAlbumsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get index => $_getIZ(0);
  @$pb.TagNumber(1)
  set index($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndex() => clearField(1);

  @$pb.TagNumber(2)
  AlbumMessage get albums => $_getN(1);
  @$pb.TagNumber(2)
  set albums(AlbumMessage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAlbums() => $_has(1);
  @$pb.TagNumber(2)
  void clearAlbums() => clearField(2);
  @$pb.TagNumber(2)
  AlbumMessage ensureAlbums() => $_ensure(1);
}

class SearchAlbumsByNameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchAlbumsByNameRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'query')
    ..hasRequiredFields = false
  ;

  SearchAlbumsByNameRequest._() : super();
  factory SearchAlbumsByNameRequest({
    $core.String? query,
  }) {
    final _result = create();
    if (query != null) {
      _result.query = query;
    }
    return _result;
  }
  factory SearchAlbumsByNameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchAlbumsByNameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchAlbumsByNameRequest clone() => SearchAlbumsByNameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchAlbumsByNameRequest copyWith(void Function(SearchAlbumsByNameRequest) updates) => super.copyWith((message) => updates(message as SearchAlbumsByNameRequest)) as SearchAlbumsByNameRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchAlbumsByNameRequest create() => SearchAlbumsByNameRequest._();
  SearchAlbumsByNameRequest createEmptyInstance() => create();
  static $pb.PbList<SearchAlbumsByNameRequest> createRepeated() => $pb.PbList<SearchAlbumsByNameRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchAlbumsByNameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchAlbumsByNameRequest>(create);
  static SearchAlbumsByNameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);
}

class SearchAlbumsByNameResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchAlbumsByNameResponse', createEmptyInstance: create)
    ..pc<AlbumMessage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'albums', $pb.PbFieldType.PM, subBuilder: AlbumMessage.create)
    ..hasRequiredFields = false
  ;

  SearchAlbumsByNameResponse._() : super();
  factory SearchAlbumsByNameResponse({
    $core.Iterable<AlbumMessage>? albums,
  }) {
    final _result = create();
    if (albums != null) {
      _result.albums.addAll(albums);
    }
    return _result;
  }
  factory SearchAlbumsByNameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchAlbumsByNameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchAlbumsByNameResponse clone() => SearchAlbumsByNameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchAlbumsByNameResponse copyWith(void Function(SearchAlbumsByNameResponse) updates) => super.copyWith((message) => updates(message as SearchAlbumsByNameResponse)) as SearchAlbumsByNameResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchAlbumsByNameResponse create() => SearchAlbumsByNameResponse._();
  SearchAlbumsByNameResponse createEmptyInstance() => create();
  static $pb.PbList<SearchAlbumsByNameResponse> createRepeated() => $pb.PbList<SearchAlbumsByNameResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchAlbumsByNameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchAlbumsByNameResponse>(create);
  static SearchAlbumsByNameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AlbumMessage> get albums => $_getList(0);
}

