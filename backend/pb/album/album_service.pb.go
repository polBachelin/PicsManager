// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.1
// 	protoc        v3.12.4
// source: album_service.proto

package backend

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type AlbumMessage struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	AlbumId       int32  `protobuf:"varint,1,opt,name=album_id,json=albumId,proto3" json:"album_id,omitempty"`
	Name          string `protobuf:"bytes,2,opt,name=name,proto3" json:"name,omitempty"`
	ThumbnailData []byte `protobuf:"bytes,3,opt,name=thumbnail_data,json=thumbnailData,proto3" json:"thumbnail_data,omitempty"`
	OwnerName     string `protobuf:"bytes,4,opt,name=owner_name,json=ownerName,proto3" json:"owner_name,omitempty"`
}

func (x *AlbumMessage) Reset() {
	*x = AlbumMessage{}
	if protoimpl.UnsafeEnabled {
		mi := &file_album_service_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *AlbumMessage) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*AlbumMessage) ProtoMessage() {}

func (x *AlbumMessage) ProtoReflect() protoreflect.Message {
	mi := &file_album_service_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use AlbumMessage.ProtoReflect.Descriptor instead.
func (*AlbumMessage) Descriptor() ([]byte, []int) {
	return file_album_service_proto_rawDescGZIP(), []int{0}
}

func (x *AlbumMessage) GetAlbumId() int32 {
	if x != nil {
		return x.AlbumId
	}
	return 0
}

func (x *AlbumMessage) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *AlbumMessage) GetThumbnailData() []byte {
	if x != nil {
		return x.ThumbnailData
	}
	return nil
}

func (x *AlbumMessage) GetOwnerName() string {
	if x != nil {
		return x.OwnerName
	}
	return ""
}

type CreateAlbumRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Name string `protobuf:"bytes,1,opt,name=name,proto3" json:"name,omitempty"`
}

func (x *CreateAlbumRequest) Reset() {
	*x = CreateAlbumRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_album_service_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreateAlbumRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateAlbumRequest) ProtoMessage() {}

func (x *CreateAlbumRequest) ProtoReflect() protoreflect.Message {
	mi := &file_album_service_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateAlbumRequest.ProtoReflect.Descriptor instead.
func (*CreateAlbumRequest) Descriptor() ([]byte, []int) {
	return file_album_service_proto_rawDescGZIP(), []int{1}
}

func (x *CreateAlbumRequest) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

type CreateAlbumResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Album *AlbumMessage `protobuf:"bytes,1,opt,name=album,proto3" json:"album,omitempty"`
}

func (x *CreateAlbumResponse) Reset() {
	*x = CreateAlbumResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_album_service_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreateAlbumResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateAlbumResponse) ProtoMessage() {}

func (x *CreateAlbumResponse) ProtoReflect() protoreflect.Message {
	mi := &file_album_service_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateAlbumResponse.ProtoReflect.Descriptor instead.
func (*CreateAlbumResponse) Descriptor() ([]byte, []int) {
	return file_album_service_proto_rawDescGZIP(), []int{2}
}

func (x *CreateAlbumResponse) GetAlbum() *AlbumMessage {
	if x != nil {
		return x.Album
	}
	return nil
}

type UpdateAlbumRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Source *AlbumMessage `protobuf:"bytes,1,opt,name=source,proto3" json:"source,omitempty"`
}

func (x *UpdateAlbumRequest) Reset() {
	*x = UpdateAlbumRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_album_service_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *UpdateAlbumRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UpdateAlbumRequest) ProtoMessage() {}

func (x *UpdateAlbumRequest) ProtoReflect() protoreflect.Message {
	mi := &file_album_service_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UpdateAlbumRequest.ProtoReflect.Descriptor instead.
func (*UpdateAlbumRequest) Descriptor() ([]byte, []int) {
	return file_album_service_proto_rawDescGZIP(), []int{3}
}

func (x *UpdateAlbumRequest) GetSource() *AlbumMessage {
	if x != nil {
		return x.Source
	}
	return nil
}

type UpdateAlbumResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Album *AlbumMessage `protobuf:"bytes,1,opt,name=album,proto3" json:"album,omitempty"`
}

func (x *UpdateAlbumResponse) Reset() {
	*x = UpdateAlbumResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_album_service_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *UpdateAlbumResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UpdateAlbumResponse) ProtoMessage() {}

func (x *UpdateAlbumResponse) ProtoReflect() protoreflect.Message {
	mi := &file_album_service_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UpdateAlbumResponse.ProtoReflect.Descriptor instead.
func (*UpdateAlbumResponse) Descriptor() ([]byte, []int) {
	return file_album_service_proto_rawDescGZIP(), []int{4}
}

func (x *UpdateAlbumResponse) GetAlbum() *AlbumMessage {
	if x != nil {
		return x.Album
	}
	return nil
}

type DeleteAlbumRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	AlbumId           int32 `protobuf:"varint,1,opt,name=album_id,json=albumId,proto3" json:"album_id,omitempty"`
	PropagateDeletion *bool `protobuf:"varint,2,opt,name=propagate_deletion,json=propagateDeletion,proto3,oneof" json:"propagate_deletion,omitempty"`
}

func (x *DeleteAlbumRequest) Reset() {
	*x = DeleteAlbumRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_album_service_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *DeleteAlbumRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*DeleteAlbumRequest) ProtoMessage() {}

func (x *DeleteAlbumRequest) ProtoReflect() protoreflect.Message {
	mi := &file_album_service_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use DeleteAlbumRequest.ProtoReflect.Descriptor instead.
func (*DeleteAlbumRequest) Descriptor() ([]byte, []int) {
	return file_album_service_proto_rawDescGZIP(), []int{5}
}

func (x *DeleteAlbumRequest) GetAlbumId() int32 {
	if x != nil {
		return x.AlbumId
	}
	return 0
}

func (x *DeleteAlbumRequest) GetPropagateDeletion() bool {
	if x != nil && x.PropagateDeletion != nil {
		return *x.PropagateDeletion
	}
	return false
}

type DeleteAlbumResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *DeleteAlbumResponse) Reset() {
	*x = DeleteAlbumResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_album_service_proto_msgTypes[6]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *DeleteAlbumResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*DeleteAlbumResponse) ProtoMessage() {}

func (x *DeleteAlbumResponse) ProtoReflect() protoreflect.Message {
	mi := &file_album_service_proto_msgTypes[6]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use DeleteAlbumResponse.ProtoReflect.Descriptor instead.
func (*DeleteAlbumResponse) Descriptor() ([]byte, []int) {
	return file_album_service_proto_rawDescGZIP(), []int{6}
}

type ListAlbumsRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *ListAlbumsRequest) Reset() {
	*x = ListAlbumsRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_album_service_proto_msgTypes[7]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ListAlbumsRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ListAlbumsRequest) ProtoMessage() {}

func (x *ListAlbumsRequest) ProtoReflect() protoreflect.Message {
	mi := &file_album_service_proto_msgTypes[7]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ListAlbumsRequest.ProtoReflect.Descriptor instead.
func (*ListAlbumsRequest) Descriptor() ([]byte, []int) {
	return file_album_service_proto_rawDescGZIP(), []int{7}
}

type ListAlbumsResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Index  int32         `protobuf:"varint,1,opt,name=index,proto3" json:"index,omitempty"`
	Albums *AlbumMessage `protobuf:"bytes,2,opt,name=albums,proto3" json:"albums,omitempty"`
}

func (x *ListAlbumsResponse) Reset() {
	*x = ListAlbumsResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_album_service_proto_msgTypes[8]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ListAlbumsResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ListAlbumsResponse) ProtoMessage() {}

func (x *ListAlbumsResponse) ProtoReflect() protoreflect.Message {
	mi := &file_album_service_proto_msgTypes[8]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ListAlbumsResponse.ProtoReflect.Descriptor instead.
func (*ListAlbumsResponse) Descriptor() ([]byte, []int) {
	return file_album_service_proto_rawDescGZIP(), []int{8}
}

func (x *ListAlbumsResponse) GetIndex() int32 {
	if x != nil {
		return x.Index
	}
	return 0
}

func (x *ListAlbumsResponse) GetAlbums() *AlbumMessage {
	if x != nil {
		return x.Albums
	}
	return nil
}

type ListOwnedAlbumsRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *ListOwnedAlbumsRequest) Reset() {
	*x = ListOwnedAlbumsRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_album_service_proto_msgTypes[9]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ListOwnedAlbumsRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ListOwnedAlbumsRequest) ProtoMessage() {}

func (x *ListOwnedAlbumsRequest) ProtoReflect() protoreflect.Message {
	mi := &file_album_service_proto_msgTypes[9]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ListOwnedAlbumsRequest.ProtoReflect.Descriptor instead.
func (*ListOwnedAlbumsRequest) Descriptor() ([]byte, []int) {
	return file_album_service_proto_rawDescGZIP(), []int{9}
}

type ListOwnedAlbumsResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Index  int32         `protobuf:"varint,1,opt,name=index,proto3" json:"index,omitempty"`
	Albums *AlbumMessage `protobuf:"bytes,2,opt,name=albums,proto3" json:"albums,omitempty"`
}

func (x *ListOwnedAlbumsResponse) Reset() {
	*x = ListOwnedAlbumsResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_album_service_proto_msgTypes[10]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ListOwnedAlbumsResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ListOwnedAlbumsResponse) ProtoMessage() {}

func (x *ListOwnedAlbumsResponse) ProtoReflect() protoreflect.Message {
	mi := &file_album_service_proto_msgTypes[10]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ListOwnedAlbumsResponse.ProtoReflect.Descriptor instead.
func (*ListOwnedAlbumsResponse) Descriptor() ([]byte, []int) {
	return file_album_service_proto_rawDescGZIP(), []int{10}
}

func (x *ListOwnedAlbumsResponse) GetIndex() int32 {
	if x != nil {
		return x.Index
	}
	return 0
}

func (x *ListOwnedAlbumsResponse) GetAlbums() *AlbumMessage {
	if x != nil {
		return x.Albums
	}
	return nil
}

type ListSharedAlbumsRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *ListSharedAlbumsRequest) Reset() {
	*x = ListSharedAlbumsRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_album_service_proto_msgTypes[11]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ListSharedAlbumsRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ListSharedAlbumsRequest) ProtoMessage() {}

func (x *ListSharedAlbumsRequest) ProtoReflect() protoreflect.Message {
	mi := &file_album_service_proto_msgTypes[11]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ListSharedAlbumsRequest.ProtoReflect.Descriptor instead.
func (*ListSharedAlbumsRequest) Descriptor() ([]byte, []int) {
	return file_album_service_proto_rawDescGZIP(), []int{11}
}

type ListSharedAlbumsResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Index  int32         `protobuf:"varint,1,opt,name=index,proto3" json:"index,omitempty"`
	Albums *AlbumMessage `protobuf:"bytes,2,opt,name=albums,proto3" json:"albums,omitempty"`
}

func (x *ListSharedAlbumsResponse) Reset() {
	*x = ListSharedAlbumsResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_album_service_proto_msgTypes[12]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ListSharedAlbumsResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ListSharedAlbumsResponse) ProtoMessage() {}

func (x *ListSharedAlbumsResponse) ProtoReflect() protoreflect.Message {
	mi := &file_album_service_proto_msgTypes[12]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ListSharedAlbumsResponse.ProtoReflect.Descriptor instead.
func (*ListSharedAlbumsResponse) Descriptor() ([]byte, []int) {
	return file_album_service_proto_rawDescGZIP(), []int{12}
}

func (x *ListSharedAlbumsResponse) GetIndex() int32 {
	if x != nil {
		return x.Index
	}
	return 0
}

func (x *ListSharedAlbumsResponse) GetAlbums() *AlbumMessage {
	if x != nil {
		return x.Albums
	}
	return nil
}

type SearchAlbumsByNameRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Query string `protobuf:"bytes,1,opt,name=query,proto3" json:"query,omitempty"`
}

func (x *SearchAlbumsByNameRequest) Reset() {
	*x = SearchAlbumsByNameRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_album_service_proto_msgTypes[13]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *SearchAlbumsByNameRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*SearchAlbumsByNameRequest) ProtoMessage() {}

func (x *SearchAlbumsByNameRequest) ProtoReflect() protoreflect.Message {
	mi := &file_album_service_proto_msgTypes[13]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use SearchAlbumsByNameRequest.ProtoReflect.Descriptor instead.
func (*SearchAlbumsByNameRequest) Descriptor() ([]byte, []int) {
	return file_album_service_proto_rawDescGZIP(), []int{13}
}

func (x *SearchAlbumsByNameRequest) GetQuery() string {
	if x != nil {
		return x.Query
	}
	return ""
}

type SearchAlbumsByNameResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Albums []*AlbumMessage `protobuf:"bytes,1,rep,name=albums,proto3" json:"albums,omitempty"`
}

func (x *SearchAlbumsByNameResponse) Reset() {
	*x = SearchAlbumsByNameResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_album_service_proto_msgTypes[14]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *SearchAlbumsByNameResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*SearchAlbumsByNameResponse) ProtoMessage() {}

func (x *SearchAlbumsByNameResponse) ProtoReflect() protoreflect.Message {
	mi := &file_album_service_proto_msgTypes[14]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use SearchAlbumsByNameResponse.ProtoReflect.Descriptor instead.
func (*SearchAlbumsByNameResponse) Descriptor() ([]byte, []int) {
	return file_album_service_proto_rawDescGZIP(), []int{14}
}

func (x *SearchAlbumsByNameResponse) GetAlbums() []*AlbumMessage {
	if x != nil {
		return x.Albums
	}
	return nil
}

var File_album_service_proto protoreflect.FileDescriptor

var file_album_service_proto_rawDesc = []byte{
	0x0a, 0x13, 0x61, 0x6c, 0x62, 0x75, 0x6d, 0x5f, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0x83, 0x01, 0x0a, 0x0c, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x4d,
	0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x12, 0x19, 0x0a, 0x08, 0x61, 0x6c, 0x62, 0x75, 0x6d, 0x5f,
	0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x05, 0x52, 0x07, 0x61, 0x6c, 0x62, 0x75, 0x6d, 0x49,
	0x64, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x25, 0x0a, 0x0e, 0x74, 0x68, 0x75, 0x6d, 0x62, 0x6e, 0x61,
	0x69, 0x6c, 0x5f, 0x64, 0x61, 0x74, 0x61, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x0d, 0x74,
	0x68, 0x75, 0x6d, 0x62, 0x6e, 0x61, 0x69, 0x6c, 0x44, 0x61, 0x74, 0x61, 0x12, 0x1d, 0x0a, 0x0a,
	0x6f, 0x77, 0x6e, 0x65, 0x72, 0x5f, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x09, 0x6f, 0x77, 0x6e, 0x65, 0x72, 0x4e, 0x61, 0x6d, 0x65, 0x22, 0x28, 0x0a, 0x12, 0x43,
	0x72, 0x65, 0x61, 0x74, 0x65, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73,
	0x74, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x04, 0x6e, 0x61, 0x6d, 0x65, 0x22, 0x3a, 0x0a, 0x13, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x41,
	0x6c, 0x62, 0x75, 0x6d, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x23, 0x0a, 0x05,
	0x61, 0x6c, 0x62, 0x75, 0x6d, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x0d, 0x2e, 0x41, 0x6c,
	0x62, 0x75, 0x6d, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x52, 0x05, 0x61, 0x6c, 0x62, 0x75,
	0x6d, 0x22, 0x3b, 0x0a, 0x12, 0x55, 0x70, 0x64, 0x61, 0x74, 0x65, 0x41, 0x6c, 0x62, 0x75, 0x6d,
	0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x25, 0x0a, 0x06, 0x73, 0x6f, 0x75, 0x72, 0x63,
	0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x0d, 0x2e, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x4d,
	0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x52, 0x06, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x22, 0x3a,
	0x0a, 0x13, 0x55, 0x70, 0x64, 0x61, 0x74, 0x65, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x52, 0x65, 0x73,
	0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x23, 0x0a, 0x05, 0x61, 0x6c, 0x62, 0x75, 0x6d, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x0b, 0x32, 0x0d, 0x2e, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x4d, 0x65, 0x73, 0x73,
	0x61, 0x67, 0x65, 0x52, 0x05, 0x61, 0x6c, 0x62, 0x75, 0x6d, 0x22, 0x7a, 0x0a, 0x12, 0x44, 0x65,
	0x6c, 0x65, 0x74, 0x65, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74,
	0x12, 0x19, 0x0a, 0x08, 0x61, 0x6c, 0x62, 0x75, 0x6d, 0x5f, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01,
	0x28, 0x05, 0x52, 0x07, 0x61, 0x6c, 0x62, 0x75, 0x6d, 0x49, 0x64, 0x12, 0x32, 0x0a, 0x12, 0x70,
	0x72, 0x6f, 0x70, 0x61, 0x67, 0x61, 0x74, 0x65, 0x5f, 0x64, 0x65, 0x6c, 0x65, 0x74, 0x69, 0x6f,
	0x6e, 0x18, 0x02, 0x20, 0x01, 0x28, 0x08, 0x48, 0x00, 0x52, 0x11, 0x70, 0x72, 0x6f, 0x70, 0x61,
	0x67, 0x61, 0x74, 0x65, 0x44, 0x65, 0x6c, 0x65, 0x74, 0x69, 0x6f, 0x6e, 0x88, 0x01, 0x01, 0x42,
	0x15, 0x0a, 0x13, 0x5f, 0x70, 0x72, 0x6f, 0x70, 0x61, 0x67, 0x61, 0x74, 0x65, 0x5f, 0x64, 0x65,
	0x6c, 0x65, 0x74, 0x69, 0x6f, 0x6e, 0x22, 0x15, 0x0a, 0x13, 0x44, 0x65, 0x6c, 0x65, 0x74, 0x65,
	0x41, 0x6c, 0x62, 0x75, 0x6d, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x13, 0x0a,
	0x11, 0x4c, 0x69, 0x73, 0x74, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65,
	0x73, 0x74, 0x22, 0x51, 0x0a, 0x12, 0x4c, 0x69, 0x73, 0x74, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x73,
	0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x14, 0x0a, 0x05, 0x69, 0x6e, 0x64, 0x65,
	0x78, 0x18, 0x01, 0x20, 0x01, 0x28, 0x05, 0x52, 0x05, 0x69, 0x6e, 0x64, 0x65, 0x78, 0x12, 0x25,
	0x0a, 0x06, 0x61, 0x6c, 0x62, 0x75, 0x6d, 0x73, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x0d,
	0x2e, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x52, 0x06, 0x61,
	0x6c, 0x62, 0x75, 0x6d, 0x73, 0x22, 0x18, 0x0a, 0x16, 0x4c, 0x69, 0x73, 0x74, 0x4f, 0x77, 0x6e,
	0x65, 0x64, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x22,
	0x56, 0x0a, 0x17, 0x4c, 0x69, 0x73, 0x74, 0x4f, 0x77, 0x6e, 0x65, 0x64, 0x41, 0x6c, 0x62, 0x75,
	0x6d, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x14, 0x0a, 0x05, 0x69, 0x6e,
	0x64, 0x65, 0x78, 0x18, 0x01, 0x20, 0x01, 0x28, 0x05, 0x52, 0x05, 0x69, 0x6e, 0x64, 0x65, 0x78,
	0x12, 0x25, 0x0a, 0x06, 0x61, 0x6c, 0x62, 0x75, 0x6d, 0x73, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b,
	0x32, 0x0d, 0x2e, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x52,
	0x06, 0x61, 0x6c, 0x62, 0x75, 0x6d, 0x73, 0x22, 0x19, 0x0a, 0x17, 0x4c, 0x69, 0x73, 0x74, 0x53,
	0x68, 0x61, 0x72, 0x65, 0x64, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65,
	0x73, 0x74, 0x22, 0x57, 0x0a, 0x18, 0x4c, 0x69, 0x73, 0x74, 0x53, 0x68, 0x61, 0x72, 0x65, 0x64,
	0x41, 0x6c, 0x62, 0x75, 0x6d, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x14,
	0x0a, 0x05, 0x69, 0x6e, 0x64, 0x65, 0x78, 0x18, 0x01, 0x20, 0x01, 0x28, 0x05, 0x52, 0x05, 0x69,
	0x6e, 0x64, 0x65, 0x78, 0x12, 0x25, 0x0a, 0x06, 0x61, 0x6c, 0x62, 0x75, 0x6d, 0x73, 0x18, 0x02,
	0x20, 0x01, 0x28, 0x0b, 0x32, 0x0d, 0x2e, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x4d, 0x65, 0x73, 0x73,
	0x61, 0x67, 0x65, 0x52, 0x06, 0x61, 0x6c, 0x62, 0x75, 0x6d, 0x73, 0x22, 0x31, 0x0a, 0x19, 0x53,
	0x65, 0x61, 0x72, 0x63, 0x68, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x73, 0x42, 0x79, 0x4e, 0x61, 0x6d,
	0x65, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x14, 0x0a, 0x05, 0x71, 0x75, 0x65, 0x72,
	0x79, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x05, 0x71, 0x75, 0x65, 0x72, 0x79, 0x22, 0x43,
	0x0a, 0x1a, 0x53, 0x65, 0x61, 0x72, 0x63, 0x68, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x73, 0x42, 0x79,
	0x4e, 0x61, 0x6d, 0x65, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x25, 0x0a, 0x06,
	0x61, 0x6c, 0x62, 0x75, 0x6d, 0x73, 0x18, 0x01, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x0d, 0x2e, 0x41,
	0x6c, 0x62, 0x75, 0x6d, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x52, 0x06, 0x61, 0x6c, 0x62,
	0x75, 0x6d, 0x73, 0x32, 0xd7, 0x03, 0x0a, 0x0c, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x53, 0x65, 0x72,
	0x76, 0x69, 0x63, 0x65, 0x12, 0x38, 0x0a, 0x0b, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x41, 0x6c,
	0x62, 0x75, 0x6d, 0x12, 0x13, 0x2e, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x41, 0x6c, 0x62, 0x75,
	0x6d, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x14, 0x2e, 0x43, 0x72, 0x65, 0x61, 0x74,
	0x65, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x38,
	0x0a, 0x0b, 0x55, 0x70, 0x64, 0x61, 0x74, 0x65, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x12, 0x13, 0x2e,
	0x55, 0x70, 0x64, 0x61, 0x74, 0x65, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x52, 0x65, 0x71, 0x75, 0x65,
	0x73, 0x74, 0x1a, 0x14, 0x2e, 0x55, 0x70, 0x64, 0x61, 0x74, 0x65, 0x41, 0x6c, 0x62, 0x75, 0x6d,
	0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x38, 0x0a, 0x0b, 0x44, 0x65, 0x6c, 0x65,
	0x74, 0x65, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x12, 0x13, 0x2e, 0x44, 0x65, 0x6c, 0x65, 0x74, 0x65,
	0x41, 0x6c, 0x62, 0x75, 0x6d, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x14, 0x2e, 0x44,
	0x65, 0x6c, 0x65, 0x74, 0x65, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e,
	0x73, 0x65, 0x12, 0x37, 0x0a, 0x0a, 0x4c, 0x69, 0x73, 0x74, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x73,
	0x12, 0x12, 0x2e, 0x4c, 0x69, 0x73, 0x74, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x73, 0x52, 0x65, 0x71,
	0x75, 0x65, 0x73, 0x74, 0x1a, 0x13, 0x2e, 0x4c, 0x69, 0x73, 0x74, 0x41, 0x6c, 0x62, 0x75, 0x6d,
	0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x30, 0x01, 0x12, 0x46, 0x0a, 0x0f, 0x4c,
	0x69, 0x73, 0x74, 0x4f, 0x77, 0x6e, 0x65, 0x64, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x73, 0x12, 0x17,
	0x2e, 0x4c, 0x69, 0x73, 0x74, 0x4f, 0x77, 0x6e, 0x65, 0x64, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x73,
	0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x18, 0x2e, 0x4c, 0x69, 0x73, 0x74, 0x4f, 0x77,
	0x6e, 0x65, 0x64, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73,
	0x65, 0x30, 0x01, 0x12, 0x49, 0x0a, 0x10, 0x4c, 0x69, 0x73, 0x74, 0x53, 0x68, 0x61, 0x72, 0x65,
	0x64, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x73, 0x12, 0x18, 0x2e, 0x4c, 0x69, 0x73, 0x74, 0x53, 0x68,
	0x61, 0x72, 0x65, 0x64, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73,
	0x74, 0x1a, 0x19, 0x2e, 0x4c, 0x69, 0x73, 0x74, 0x53, 0x68, 0x61, 0x72, 0x65, 0x64, 0x41, 0x6c,
	0x62, 0x75, 0x6d, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x30, 0x01, 0x12, 0x4d,
	0x0a, 0x12, 0x53, 0x65, 0x61, 0x72, 0x63, 0x68, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x73, 0x42, 0x79,
	0x4e, 0x61, 0x6d, 0x65, 0x12, 0x1a, 0x2e, 0x53, 0x65, 0x61, 0x72, 0x63, 0x68, 0x41, 0x6c, 0x62,
	0x75, 0x6d, 0x73, 0x42, 0x79, 0x4e, 0x61, 0x6d, 0x65, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74,
	0x1a, 0x1b, 0x2e, 0x53, 0x65, 0x61, 0x72, 0x63, 0x68, 0x41, 0x6c, 0x62, 0x75, 0x6d, 0x73, 0x42,
	0x79, 0x4e, 0x61, 0x6d, 0x65, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x42, 0x15, 0x5a,
	0x13, 0x70, 0x69, 0x63, 0x73, 0x4d, 0x61, 0x6e, 0x61, 0x67, 0x65, 0x72, 0x2f, 0x62, 0x61, 0x63,
	0x6b, 0x65, 0x6e, 0x64, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_album_service_proto_rawDescOnce sync.Once
	file_album_service_proto_rawDescData = file_album_service_proto_rawDesc
)

func file_album_service_proto_rawDescGZIP() []byte {
	file_album_service_proto_rawDescOnce.Do(func() {
		file_album_service_proto_rawDescData = protoimpl.X.CompressGZIP(file_album_service_proto_rawDescData)
	})
	return file_album_service_proto_rawDescData
}

var file_album_service_proto_msgTypes = make([]protoimpl.MessageInfo, 15)
var file_album_service_proto_goTypes = []interface{}{
	(*AlbumMessage)(nil),               // 0: AlbumMessage
	(*CreateAlbumRequest)(nil),         // 1: CreateAlbumRequest
	(*CreateAlbumResponse)(nil),        // 2: CreateAlbumResponse
	(*UpdateAlbumRequest)(nil),         // 3: UpdateAlbumRequest
	(*UpdateAlbumResponse)(nil),        // 4: UpdateAlbumResponse
	(*DeleteAlbumRequest)(nil),         // 5: DeleteAlbumRequest
	(*DeleteAlbumResponse)(nil),        // 6: DeleteAlbumResponse
	(*ListAlbumsRequest)(nil),          // 7: ListAlbumsRequest
	(*ListAlbumsResponse)(nil),         // 8: ListAlbumsResponse
	(*ListOwnedAlbumsRequest)(nil),     // 9: ListOwnedAlbumsRequest
	(*ListOwnedAlbumsResponse)(nil),    // 10: ListOwnedAlbumsResponse
	(*ListSharedAlbumsRequest)(nil),    // 11: ListSharedAlbumsRequest
	(*ListSharedAlbumsResponse)(nil),   // 12: ListSharedAlbumsResponse
	(*SearchAlbumsByNameRequest)(nil),  // 13: SearchAlbumsByNameRequest
	(*SearchAlbumsByNameResponse)(nil), // 14: SearchAlbumsByNameResponse
}
var file_album_service_proto_depIdxs = []int32{
	0,  // 0: CreateAlbumResponse.album:type_name -> AlbumMessage
	0,  // 1: UpdateAlbumRequest.source:type_name -> AlbumMessage
	0,  // 2: UpdateAlbumResponse.album:type_name -> AlbumMessage
	0,  // 3: ListAlbumsResponse.albums:type_name -> AlbumMessage
	0,  // 4: ListOwnedAlbumsResponse.albums:type_name -> AlbumMessage
	0,  // 5: ListSharedAlbumsResponse.albums:type_name -> AlbumMessage
	0,  // 6: SearchAlbumsByNameResponse.albums:type_name -> AlbumMessage
	1,  // 7: AlbumService.CreateAlbum:input_type -> CreateAlbumRequest
	3,  // 8: AlbumService.UpdateAlbum:input_type -> UpdateAlbumRequest
	5,  // 9: AlbumService.DeleteAlbum:input_type -> DeleteAlbumRequest
	7,  // 10: AlbumService.ListAlbums:input_type -> ListAlbumsRequest
	9,  // 11: AlbumService.ListOwnedAlbums:input_type -> ListOwnedAlbumsRequest
	11, // 12: AlbumService.ListSharedAlbums:input_type -> ListSharedAlbumsRequest
	13, // 13: AlbumService.SearchAlbumsByName:input_type -> SearchAlbumsByNameRequest
	2,  // 14: AlbumService.CreateAlbum:output_type -> CreateAlbumResponse
	4,  // 15: AlbumService.UpdateAlbum:output_type -> UpdateAlbumResponse
	6,  // 16: AlbumService.DeleteAlbum:output_type -> DeleteAlbumResponse
	8,  // 17: AlbumService.ListAlbums:output_type -> ListAlbumsResponse
	10, // 18: AlbumService.ListOwnedAlbums:output_type -> ListOwnedAlbumsResponse
	12, // 19: AlbumService.ListSharedAlbums:output_type -> ListSharedAlbumsResponse
	14, // 20: AlbumService.SearchAlbumsByName:output_type -> SearchAlbumsByNameResponse
	14, // [14:21] is the sub-list for method output_type
	7,  // [7:14] is the sub-list for method input_type
	7,  // [7:7] is the sub-list for extension type_name
	7,  // [7:7] is the sub-list for extension extendee
	0,  // [0:7] is the sub-list for field type_name
}

func init() { file_album_service_proto_init() }
func file_album_service_proto_init() {
	if File_album_service_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_album_service_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*AlbumMessage); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_album_service_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreateAlbumRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_album_service_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreateAlbumResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_album_service_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*UpdateAlbumRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_album_service_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*UpdateAlbumResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_album_service_proto_msgTypes[5].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*DeleteAlbumRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_album_service_proto_msgTypes[6].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*DeleteAlbumResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_album_service_proto_msgTypes[7].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ListAlbumsRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_album_service_proto_msgTypes[8].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ListAlbumsResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_album_service_proto_msgTypes[9].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ListOwnedAlbumsRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_album_service_proto_msgTypes[10].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ListOwnedAlbumsResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_album_service_proto_msgTypes[11].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ListSharedAlbumsRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_album_service_proto_msgTypes[12].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ListSharedAlbumsResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_album_service_proto_msgTypes[13].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*SearchAlbumsByNameRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_album_service_proto_msgTypes[14].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*SearchAlbumsByNameResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	file_album_service_proto_msgTypes[5].OneofWrappers = []interface{}{}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_album_service_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   15,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_album_service_proto_goTypes,
		DependencyIndexes: file_album_service_proto_depIdxs,
		MessageInfos:      file_album_service_proto_msgTypes,
	}.Build()
	File_album_service_proto = out.File
	file_album_service_proto_rawDesc = nil
	file_album_service_proto_goTypes = nil
	file_album_service_proto_depIdxs = nil
}