///
//  Generated code. Do not modify.
//  source: message/picture_message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

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

