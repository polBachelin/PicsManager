///
//  Generated code. Do not modify.
//  source: message/album_message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AlbumMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AlbumMessage', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'albumId', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thumbnailData', $pb.PbFieldType.OY)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerName')
    ..hasRequiredFields = false
  ;

  AlbumMessage._() : super();
  factory AlbumMessage({
    $core.int? albumId,
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

