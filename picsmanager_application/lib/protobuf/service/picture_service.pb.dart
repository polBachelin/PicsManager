///
//  Generated code. Do not modify.
//  source: service/picture_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CreatePictureRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreatePictureRequest', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'albumId', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  CreatePictureRequest._() : super();
  factory CreatePictureRequest({
    $core.int? albumId,
    $core.String? name,
    $core.Iterable<$core.String>? tags,
    $core.List<$core.int>? data,
  }) {
    final _result = create();
    if (albumId != null) {
      _result.albumId = albumId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory CreatePictureRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePictureRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePictureRequest clone() => CreatePictureRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePictureRequest copyWith(void Function(CreatePictureRequest) updates) => super.copyWith((message) => updates(message as CreatePictureRequest)) as CreatePictureRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePictureRequest create() => CreatePictureRequest._();
  CreatePictureRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePictureRequest> createRepeated() => $pb.PbList<CreatePictureRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePictureRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePictureRequest>(create);
  static CreatePictureRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get albumId => $_getIZ(0);
  @$pb.TagNumber(1)
  set albumId($core.int v) { $_setSignedInt32(0, v); }
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
  $core.List<$core.String> get tags => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get data => $_getN(3);
  @$pb.TagNumber(4)
  set data($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasData() => $_has(3);
  @$pb.TagNumber(4)
  void clearData() => clearField(4);
}

class CreatePictureResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreatePictureResponse', createEmptyInstance: create)
    ..aOM<PictureMessage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pictures', subBuilder: PictureMessage.create)
    ..hasRequiredFields = false
  ;

  CreatePictureResponse._() : super();
  factory CreatePictureResponse({
    PictureMessage? pictures,
  }) {
    final _result = create();
    if (pictures != null) {
      _result.pictures = pictures;
    }
    return _result;
  }
  factory CreatePictureResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePictureResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePictureResponse clone() => CreatePictureResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePictureResponse copyWith(void Function(CreatePictureResponse) updates) => super.copyWith((message) => updates(message as CreatePictureResponse)) as CreatePictureResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePictureResponse create() => CreatePictureResponse._();
  CreatePictureResponse createEmptyInstance() => create();
  static $pb.PbList<CreatePictureResponse> createRepeated() => $pb.PbList<CreatePictureResponse>();
  @$core.pragma('dart2js:noInline')
  static CreatePictureResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePictureResponse>(create);
  static CreatePictureResponse? _defaultInstance;

  @$pb.TagNumber(1)
  PictureMessage get pictures => $_getN(0);
  @$pb.TagNumber(1)
  set pictures(PictureMessage v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPictures() => $_has(0);
  @$pb.TagNumber(1)
  void clearPictures() => clearField(1);
  @$pb.TagNumber(1)
  PictureMessage ensurePictures() => $_ensure(0);
}

class UpdatePictureRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdatePictureRequest', createEmptyInstance: create)
    ..aOM<PictureMessage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pictures', subBuilder: PictureMessage.create)
    ..hasRequiredFields = false
  ;

  UpdatePictureRequest._() : super();
  factory UpdatePictureRequest({
    PictureMessage? pictures,
  }) {
    final _result = create();
    if (pictures != null) {
      _result.pictures = pictures;
    }
    return _result;
  }
  factory UpdatePictureRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePictureRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePictureRequest clone() => UpdatePictureRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePictureRequest copyWith(void Function(UpdatePictureRequest) updates) => super.copyWith((message) => updates(message as UpdatePictureRequest)) as UpdatePictureRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdatePictureRequest create() => UpdatePictureRequest._();
  UpdatePictureRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePictureRequest> createRepeated() => $pb.PbList<UpdatePictureRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePictureRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePictureRequest>(create);
  static UpdatePictureRequest? _defaultInstance;

  @$pb.TagNumber(1)
  PictureMessage get pictures => $_getN(0);
  @$pb.TagNumber(1)
  set pictures(PictureMessage v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPictures() => $_has(0);
  @$pb.TagNumber(1)
  void clearPictures() => clearField(1);
  @$pb.TagNumber(1)
  PictureMessage ensurePictures() => $_ensure(0);
}

class UpdatePictureResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdatePictureResponse', createEmptyInstance: create)
    ..aOM<PictureMessage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pictures', subBuilder: PictureMessage.create)
    ..hasRequiredFields = false
  ;

  UpdatePictureResponse._() : super();
  factory UpdatePictureResponse({
    PictureMessage? pictures,
  }) {
    final _result = create();
    if (pictures != null) {
      _result.pictures = pictures;
    }
    return _result;
  }
  factory UpdatePictureResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePictureResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePictureResponse clone() => UpdatePictureResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePictureResponse copyWith(void Function(UpdatePictureResponse) updates) => super.copyWith((message) => updates(message as UpdatePictureResponse)) as UpdatePictureResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdatePictureResponse create() => UpdatePictureResponse._();
  UpdatePictureResponse createEmptyInstance() => create();
  static $pb.PbList<UpdatePictureResponse> createRepeated() => $pb.PbList<UpdatePictureResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdatePictureResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePictureResponse>(create);
  static UpdatePictureResponse? _defaultInstance;

  @$pb.TagNumber(1)
  PictureMessage get pictures => $_getN(0);
  @$pb.TagNumber(1)
  set pictures(PictureMessage v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPictures() => $_has(0);
  @$pb.TagNumber(1)
  void clearPictures() => clearField(1);
  @$pb.TagNumber(1)
  PictureMessage ensurePictures() => $_ensure(0);
}

class DeletePictureRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeletePictureRequest', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pictureId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  DeletePictureRequest._() : super();
  factory DeletePictureRequest({
    $core.int? pictureId,
  }) {
    final _result = create();
    if (pictureId != null) {
      _result.pictureId = pictureId;
    }
    return _result;
  }
  factory DeletePictureRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePictureRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletePictureRequest clone() => DeletePictureRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletePictureRequest copyWith(void Function(DeletePictureRequest) updates) => super.copyWith((message) => updates(message as DeletePictureRequest)) as DeletePictureRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeletePictureRequest create() => DeletePictureRequest._();
  DeletePictureRequest createEmptyInstance() => create();
  static $pb.PbList<DeletePictureRequest> createRepeated() => $pb.PbList<DeletePictureRequest>();
  @$core.pragma('dart2js:noInline')
  static DeletePictureRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePictureRequest>(create);
  static DeletePictureRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pictureId => $_getIZ(0);
  @$pb.TagNumber(1)
  set pictureId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPictureId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPictureId() => clearField(1);
}

class DeletePictureResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeletePictureResponse', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index', $pb.PbFieldType.O3)
    ..aOM<PictureMessage>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pictures', subBuilder: PictureMessage.create)
    ..hasRequiredFields = false
  ;

  DeletePictureResponse._() : super();
  factory DeletePictureResponse({
    $core.int? index,
    PictureMessage? pictures,
  }) {
    final _result = create();
    if (index != null) {
      _result.index = index;
    }
    if (pictures != null) {
      _result.pictures = pictures;
    }
    return _result;
  }
  factory DeletePictureResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePictureResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletePictureResponse clone() => DeletePictureResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletePictureResponse copyWith(void Function(DeletePictureResponse) updates) => super.copyWith((message) => updates(message as DeletePictureResponse)) as DeletePictureResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeletePictureResponse create() => DeletePictureResponse._();
  DeletePictureResponse createEmptyInstance() => create();
  static $pb.PbList<DeletePictureResponse> createRepeated() => $pb.PbList<DeletePictureResponse>();
  @$core.pragma('dart2js:noInline')
  static DeletePictureResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePictureResponse>(create);
  static DeletePictureResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get index => $_getIZ(0);
  @$pb.TagNumber(1)
  set index($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndex() => clearField(1);

  @$pb.TagNumber(2)
  PictureMessage get pictures => $_getN(1);
  @$pb.TagNumber(2)
  set pictures(PictureMessage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPictures() => $_has(1);
  @$pb.TagNumber(2)
  void clearPictures() => clearField(2);
  @$pb.TagNumber(2)
  PictureMessage ensurePictures() => $_ensure(1);
}

class ListPicturesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListPicturesRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListPicturesRequest._() : super();
  factory ListPicturesRequest() => create();
  factory ListPicturesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPicturesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPicturesRequest clone() => ListPicturesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPicturesRequest copyWith(void Function(ListPicturesRequest) updates) => super.copyWith((message) => updates(message as ListPicturesRequest)) as ListPicturesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPicturesRequest create() => ListPicturesRequest._();
  ListPicturesRequest createEmptyInstance() => create();
  static $pb.PbList<ListPicturesRequest> createRepeated() => $pb.PbList<ListPicturesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListPicturesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPicturesRequest>(create);
  static ListPicturesRequest? _defaultInstance;
}

class ListPicturesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListPicturesResponse', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index', $pb.PbFieldType.O3)
    ..aOM<PictureMessage>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pictures', subBuilder: PictureMessage.create)
    ..hasRequiredFields = false
  ;

  ListPicturesResponse._() : super();
  factory ListPicturesResponse({
    $core.int? index,
    PictureMessage? pictures,
  }) {
    final _result = create();
    if (index != null) {
      _result.index = index;
    }
    if (pictures != null) {
      _result.pictures = pictures;
    }
    return _result;
  }
  factory ListPicturesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPicturesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPicturesResponse clone() => ListPicturesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPicturesResponse copyWith(void Function(ListPicturesResponse) updates) => super.copyWith((message) => updates(message as ListPicturesResponse)) as ListPicturesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPicturesResponse create() => ListPicturesResponse._();
  ListPicturesResponse createEmptyInstance() => create();
  static $pb.PbList<ListPicturesResponse> createRepeated() => $pb.PbList<ListPicturesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListPicturesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPicturesResponse>(create);
  static ListPicturesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get index => $_getIZ(0);
  @$pb.TagNumber(1)
  set index($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndex() => clearField(1);

  @$pb.TagNumber(2)
  PictureMessage get pictures => $_getN(1);
  @$pb.TagNumber(2)
  set pictures(PictureMessage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPictures() => $_has(1);
  @$pb.TagNumber(2)
  void clearPictures() => clearField(2);
  @$pb.TagNumber(2)
  PictureMessage ensurePictures() => $_ensure(1);
}

class ListAlbumPicturesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListAlbumPicturesRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListAlbumPicturesRequest._() : super();
  factory ListAlbumPicturesRequest() => create();
  factory ListAlbumPicturesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListAlbumPicturesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListAlbumPicturesRequest clone() => ListAlbumPicturesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListAlbumPicturesRequest copyWith(void Function(ListAlbumPicturesRequest) updates) => super.copyWith((message) => updates(message as ListAlbumPicturesRequest)) as ListAlbumPicturesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListAlbumPicturesRequest create() => ListAlbumPicturesRequest._();
  ListAlbumPicturesRequest createEmptyInstance() => create();
  static $pb.PbList<ListAlbumPicturesRequest> createRepeated() => $pb.PbList<ListAlbumPicturesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListAlbumPicturesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAlbumPicturesRequest>(create);
  static ListAlbumPicturesRequest? _defaultInstance;
}

class ListAlbumPicturesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListAlbumPicturesResponse', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index', $pb.PbFieldType.O3)
    ..aOM<PictureMessage>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pictures', subBuilder: PictureMessage.create)
    ..hasRequiredFields = false
  ;

  ListAlbumPicturesResponse._() : super();
  factory ListAlbumPicturesResponse({
    $core.int? index,
    PictureMessage? pictures,
  }) {
    final _result = create();
    if (index != null) {
      _result.index = index;
    }
    if (pictures != null) {
      _result.pictures = pictures;
    }
    return _result;
  }
  factory ListAlbumPicturesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListAlbumPicturesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListAlbumPicturesResponse clone() => ListAlbumPicturesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListAlbumPicturesResponse copyWith(void Function(ListAlbumPicturesResponse) updates) => super.copyWith((message) => updates(message as ListAlbumPicturesResponse)) as ListAlbumPicturesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListAlbumPicturesResponse create() => ListAlbumPicturesResponse._();
  ListAlbumPicturesResponse createEmptyInstance() => create();
  static $pb.PbList<ListAlbumPicturesResponse> createRepeated() => $pb.PbList<ListAlbumPicturesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListAlbumPicturesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAlbumPicturesResponse>(create);
  static ListAlbumPicturesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get index => $_getIZ(0);
  @$pb.TagNumber(1)
  set index($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndex() => clearField(1);

  @$pb.TagNumber(2)
  PictureMessage get pictures => $_getN(1);
  @$pb.TagNumber(2)
  set pictures(PictureMessage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPictures() => $_has(1);
  @$pb.TagNumber(2)
  void clearPictures() => clearField(2);
  @$pb.TagNumber(2)
  PictureMessage ensurePictures() => $_ensure(1);
}

class SearchPicturesByTagRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchPicturesByTagRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'query')
    ..hasRequiredFields = false
  ;

  SearchPicturesByTagRequest._() : super();
  factory SearchPicturesByTagRequest({
    $core.String? query,
  }) {
    final _result = create();
    if (query != null) {
      _result.query = query;
    }
    return _result;
  }
  factory SearchPicturesByTagRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchPicturesByTagRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchPicturesByTagRequest clone() => SearchPicturesByTagRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchPicturesByTagRequest copyWith(void Function(SearchPicturesByTagRequest) updates) => super.copyWith((message) => updates(message as SearchPicturesByTagRequest)) as SearchPicturesByTagRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchPicturesByTagRequest create() => SearchPicturesByTagRequest._();
  SearchPicturesByTagRequest createEmptyInstance() => create();
  static $pb.PbList<SearchPicturesByTagRequest> createRepeated() => $pb.PbList<SearchPicturesByTagRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchPicturesByTagRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchPicturesByTagRequest>(create);
  static SearchPicturesByTagRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);
}

class SearchPicturesByTagResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchPicturesByTagResponse', createEmptyInstance: create)
    ..pc<PictureMessage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pictures', $pb.PbFieldType.PM, subBuilder: PictureMessage.create)
    ..hasRequiredFields = false
  ;

  SearchPicturesByTagResponse._() : super();
  factory SearchPicturesByTagResponse({
    $core.Iterable<PictureMessage>? pictures,
  }) {
    final _result = create();
    if (pictures != null) {
      _result.pictures.addAll(pictures);
    }
    return _result;
  }
  factory SearchPicturesByTagResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchPicturesByTagResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchPicturesByTagResponse clone() => SearchPicturesByTagResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchPicturesByTagResponse copyWith(void Function(SearchPicturesByTagResponse) updates) => super.copyWith((message) => updates(message as SearchPicturesByTagResponse)) as SearchPicturesByTagResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchPicturesByTagResponse create() => SearchPicturesByTagResponse._();
  SearchPicturesByTagResponse createEmptyInstance() => create();
  static $pb.PbList<SearchPicturesByTagResponse> createRepeated() => $pb.PbList<SearchPicturesByTagResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchPicturesByTagResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchPicturesByTagResponse>(create);
  static SearchPicturesByTagResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PictureMessage> get pictures => $_getList(0);
}

class SearchPicturesByNameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchPicturesByNameRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'query')
    ..hasRequiredFields = false
  ;

  SearchPicturesByNameRequest._() : super();
  factory SearchPicturesByNameRequest({
    $core.String? query,
  }) {
    final _result = create();
    if (query != null) {
      _result.query = query;
    }
    return _result;
  }
  factory SearchPicturesByNameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchPicturesByNameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchPicturesByNameRequest clone() => SearchPicturesByNameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchPicturesByNameRequest copyWith(void Function(SearchPicturesByNameRequest) updates) => super.copyWith((message) => updates(message as SearchPicturesByNameRequest)) as SearchPicturesByNameRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchPicturesByNameRequest create() => SearchPicturesByNameRequest._();
  SearchPicturesByNameRequest createEmptyInstance() => create();
  static $pb.PbList<SearchPicturesByNameRequest> createRepeated() => $pb.PbList<SearchPicturesByNameRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchPicturesByNameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchPicturesByNameRequest>(create);
  static SearchPicturesByNameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);
}

class SearchPicturesByNameResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchPicturesByNameResponse', createEmptyInstance: create)
    ..pc<PictureMessage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pictures', $pb.PbFieldType.PM, subBuilder: PictureMessage.create)
    ..hasRequiredFields = false
  ;

  SearchPicturesByNameResponse._() : super();
  factory SearchPicturesByNameResponse({
    $core.Iterable<PictureMessage>? pictures,
  }) {
    final _result = create();
    if (pictures != null) {
      _result.pictures.addAll(pictures);
    }
    return _result;
  }
  factory SearchPicturesByNameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchPicturesByNameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchPicturesByNameResponse clone() => SearchPicturesByNameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchPicturesByNameResponse copyWith(void Function(SearchPicturesByNameResponse) updates) => super.copyWith((message) => updates(message as SearchPicturesByNameResponse)) as SearchPicturesByNameResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchPicturesByNameResponse create() => SearchPicturesByNameResponse._();
  SearchPicturesByNameResponse createEmptyInstance() => create();
  static $pb.PbList<SearchPicturesByNameResponse> createRepeated() => $pb.PbList<SearchPicturesByNameResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchPicturesByNameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchPicturesByNameResponse>(create);
  static SearchPicturesByNameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PictureMessage> get pictures => $_getList(0);
}

class PictureMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PictureMessage', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageId', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'albumId', $pb.PbFieldType.O3)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerName')
    ..hasRequiredFields = false
  ;

  PictureMessage._() : super();
  factory PictureMessage({
    $core.int? imageId,
    $core.List<$core.int>? data,
    $core.Iterable<$core.String>? tags,
    $core.String? name,
    $core.int? albumId,
    $core.String? ownerName,
  }) {
    final _result = create();
    if (imageId != null) {
      _result.imageId = imageId;
    }
    if (data != null) {
      _result.data = data;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    if (name != null) {
      _result.name = name;
    }
    if (albumId != null) {
      _result.albumId = albumId;
    }
    if (ownerName != null) {
      _result.ownerName = ownerName;
    }
    return _result;
  }
  factory PictureMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PictureMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PictureMessage clone() => PictureMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PictureMessage copyWith(void Function(PictureMessage) updates) => super.copyWith((message) => updates(message as PictureMessage)) as PictureMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PictureMessage create() => PictureMessage._();
  PictureMessage createEmptyInstance() => create();
  static $pb.PbList<PictureMessage> createRepeated() => $pb.PbList<PictureMessage>();
  @$core.pragma('dart2js:noInline')
  static PictureMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PictureMessage>(create);
  static PictureMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get imageId => $_getIZ(0);
  @$pb.TagNumber(1)
  set imageId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearImageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get data => $_getN(1);
  @$pb.TagNumber(2)
  set data($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get tags => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get albumId => $_getIZ(4);
  @$pb.TagNumber(5)
  set albumId($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAlbumId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAlbumId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get ownerName => $_getSZ(5);
  @$pb.TagNumber(6)
  set ownerName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOwnerName() => $_has(5);
  @$pb.TagNumber(6)
  void clearOwnerName() => clearField(6);
}

