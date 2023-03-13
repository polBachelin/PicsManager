// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.2.0
// - protoc             v3.12.4
// source: picture_service.proto

package backend

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.32.0 or later.
const _ = grpc.SupportPackageIsVersion7

// PictureServiceClient is the client API for PictureService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type PictureServiceClient interface {
	CreatePicture(ctx context.Context, in *CreatePictureRequest, opts ...grpc.CallOption) (*CreatePictureResponse, error)
	UpdatePicture(ctx context.Context, in *UpdatePictureRequest, opts ...grpc.CallOption) (*UpdatePictureResponse, error)
	DeletePicture(ctx context.Context, in *DeletePictureRequest, opts ...grpc.CallOption) (*DeletePictureResponse, error)
	ListPictures(ctx context.Context, in *ListPicturesRequest, opts ...grpc.CallOption) (PictureService_ListPicturesClient, error)
	ListAlbumPictures(ctx context.Context, in *ListAlbumPicturesRequest, opts ...grpc.CallOption) (PictureService_ListAlbumPicturesClient, error)
	SearchPicturesByTag(ctx context.Context, in *SearchPicturesByTagRequest, opts ...grpc.CallOption) (PictureService_SearchPicturesByTagClient, error)
	SearchPicturesByName(ctx context.Context, in *SearchPicturesByNameRequest, opts ...grpc.CallOption) (PictureService_SearchPicturesByNameClient, error)
}

type pictureServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewPictureServiceClient(cc grpc.ClientConnInterface) PictureServiceClient {
	return &pictureServiceClient{cc}
}

func (c *pictureServiceClient) CreatePicture(ctx context.Context, in *CreatePictureRequest, opts ...grpc.CallOption) (*CreatePictureResponse, error) {
	out := new(CreatePictureResponse)
	err := c.cc.Invoke(ctx, "/PictureService/CreatePicture", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *pictureServiceClient) UpdatePicture(ctx context.Context, in *UpdatePictureRequest, opts ...grpc.CallOption) (*UpdatePictureResponse, error) {
	out := new(UpdatePictureResponse)
	err := c.cc.Invoke(ctx, "/PictureService/UpdatePicture", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *pictureServiceClient) DeletePicture(ctx context.Context, in *DeletePictureRequest, opts ...grpc.CallOption) (*DeletePictureResponse, error) {
	out := new(DeletePictureResponse)
	err := c.cc.Invoke(ctx, "/PictureService/DeletePicture", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *pictureServiceClient) ListPictures(ctx context.Context, in *ListPicturesRequest, opts ...grpc.CallOption) (PictureService_ListPicturesClient, error) {
	stream, err := c.cc.NewStream(ctx, &PictureService_ServiceDesc.Streams[0], "/PictureService/ListPictures", opts...)
	if err != nil {
		return nil, err
	}
	x := &pictureServiceListPicturesClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type PictureService_ListPicturesClient interface {
	Recv() (*ListPicturesResponse, error)
	grpc.ClientStream
}

type pictureServiceListPicturesClient struct {
	grpc.ClientStream
}

func (x *pictureServiceListPicturesClient) Recv() (*ListPicturesResponse, error) {
	m := new(ListPicturesResponse)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *pictureServiceClient) ListAlbumPictures(ctx context.Context, in *ListAlbumPicturesRequest, opts ...grpc.CallOption) (PictureService_ListAlbumPicturesClient, error) {
	stream, err := c.cc.NewStream(ctx, &PictureService_ServiceDesc.Streams[1], "/PictureService/ListAlbumPictures", opts...)
	if err != nil {
		return nil, err
	}
	x := &pictureServiceListAlbumPicturesClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type PictureService_ListAlbumPicturesClient interface {
	Recv() (*ListAlbumPicturesResponse, error)
	grpc.ClientStream
}

type pictureServiceListAlbumPicturesClient struct {
	grpc.ClientStream
}

func (x *pictureServiceListAlbumPicturesClient) Recv() (*ListAlbumPicturesResponse, error) {
	m := new(ListAlbumPicturesResponse)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *pictureServiceClient) SearchPicturesByTag(ctx context.Context, in *SearchPicturesByTagRequest, opts ...grpc.CallOption) (PictureService_SearchPicturesByTagClient, error) {
	stream, err := c.cc.NewStream(ctx, &PictureService_ServiceDesc.Streams[2], "/PictureService/SearchPicturesByTag", opts...)
	if err != nil {
		return nil, err
	}
	x := &pictureServiceSearchPicturesByTagClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type PictureService_SearchPicturesByTagClient interface {
	Recv() (*SearchPicturesByTagResponse, error)
	grpc.ClientStream
}

type pictureServiceSearchPicturesByTagClient struct {
	grpc.ClientStream
}

func (x *pictureServiceSearchPicturesByTagClient) Recv() (*SearchPicturesByTagResponse, error) {
	m := new(SearchPicturesByTagResponse)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *pictureServiceClient) SearchPicturesByName(ctx context.Context, in *SearchPicturesByNameRequest, opts ...grpc.CallOption) (PictureService_SearchPicturesByNameClient, error) {
	stream, err := c.cc.NewStream(ctx, &PictureService_ServiceDesc.Streams[3], "/PictureService/SearchPicturesByName", opts...)
	if err != nil {
		return nil, err
	}
	x := &pictureServiceSearchPicturesByNameClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type PictureService_SearchPicturesByNameClient interface {
	Recv() (*SearchPicturesByNameResponse, error)
	grpc.ClientStream
}

type pictureServiceSearchPicturesByNameClient struct {
	grpc.ClientStream
}

func (x *pictureServiceSearchPicturesByNameClient) Recv() (*SearchPicturesByNameResponse, error) {
	m := new(SearchPicturesByNameResponse)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

// PictureServiceServer is the server API for PictureService service.
// All implementations must embed UnimplementedPictureServiceServer
// for forward compatibility
type PictureServiceServer interface {
	CreatePicture(context.Context, *CreatePictureRequest) (*CreatePictureResponse, error)
	UpdatePicture(context.Context, *UpdatePictureRequest) (*UpdatePictureResponse, error)
	DeletePicture(context.Context, *DeletePictureRequest) (*DeletePictureResponse, error)
	ListPictures(*ListPicturesRequest, PictureService_ListPicturesServer) error
	ListAlbumPictures(*ListAlbumPicturesRequest, PictureService_ListAlbumPicturesServer) error
	SearchPicturesByTag(*SearchPicturesByTagRequest, PictureService_SearchPicturesByTagServer) error
	SearchPicturesByName(*SearchPicturesByNameRequest, PictureService_SearchPicturesByNameServer) error
	mustEmbedUnimplementedPictureServiceServer()
}

// UnimplementedPictureServiceServer must be embedded to have forward compatible implementations.
type UnimplementedPictureServiceServer struct {
}

func (UnimplementedPictureServiceServer) CreatePicture(context.Context, *CreatePictureRequest) (*CreatePictureResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreatePicture not implemented")
}
func (UnimplementedPictureServiceServer) UpdatePicture(context.Context, *UpdatePictureRequest) (*UpdatePictureResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UpdatePicture not implemented")
}
func (UnimplementedPictureServiceServer) DeletePicture(context.Context, *DeletePictureRequest) (*DeletePictureResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method DeletePicture not implemented")
}
func (UnimplementedPictureServiceServer) ListPictures(*ListPicturesRequest, PictureService_ListPicturesServer) error {
	return status.Errorf(codes.Unimplemented, "method ListPictures not implemented")
}
func (UnimplementedPictureServiceServer) ListAlbumPictures(*ListAlbumPicturesRequest, PictureService_ListAlbumPicturesServer) error {
	return status.Errorf(codes.Unimplemented, "method ListAlbumPictures not implemented")
}
func (UnimplementedPictureServiceServer) SearchPicturesByTag(*SearchPicturesByTagRequest, PictureService_SearchPicturesByTagServer) error {
	return status.Errorf(codes.Unimplemented, "method SearchPicturesByTag not implemented")
}
func (UnimplementedPictureServiceServer) SearchPicturesByName(*SearchPicturesByNameRequest, PictureService_SearchPicturesByNameServer) error {
	return status.Errorf(codes.Unimplemented, "method SearchPicturesByName not implemented")
}
func (UnimplementedPictureServiceServer) mustEmbedUnimplementedPictureServiceServer() {}

// UnsafePictureServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to PictureServiceServer will
// result in compilation errors.
type UnsafePictureServiceServer interface {
	mustEmbedUnimplementedPictureServiceServer()
}

func RegisterPictureServiceServer(s grpc.ServiceRegistrar, srv PictureServiceServer) {
	s.RegisterService(&PictureService_ServiceDesc, srv)
}

func _PictureService_CreatePicture_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CreatePictureRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PictureServiceServer).CreatePicture(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/PictureService/CreatePicture",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PictureServiceServer).CreatePicture(ctx, req.(*CreatePictureRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _PictureService_UpdatePicture_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UpdatePictureRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PictureServiceServer).UpdatePicture(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/PictureService/UpdatePicture",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PictureServiceServer).UpdatePicture(ctx, req.(*UpdatePictureRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _PictureService_DeletePicture_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(DeletePictureRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(PictureServiceServer).DeletePicture(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/PictureService/DeletePicture",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(PictureServiceServer).DeletePicture(ctx, req.(*DeletePictureRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _PictureService_ListPictures_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(ListPicturesRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(PictureServiceServer).ListPictures(m, &pictureServiceListPicturesServer{stream})
}

type PictureService_ListPicturesServer interface {
	Send(*ListPicturesResponse) error
	grpc.ServerStream
}

type pictureServiceListPicturesServer struct {
	grpc.ServerStream
}

func (x *pictureServiceListPicturesServer) Send(m *ListPicturesResponse) error {
	return x.ServerStream.SendMsg(m)
}

func _PictureService_ListAlbumPictures_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(ListAlbumPicturesRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(PictureServiceServer).ListAlbumPictures(m, &pictureServiceListAlbumPicturesServer{stream})
}

type PictureService_ListAlbumPicturesServer interface {
	Send(*ListAlbumPicturesResponse) error
	grpc.ServerStream
}

type pictureServiceListAlbumPicturesServer struct {
	grpc.ServerStream
}

func (x *pictureServiceListAlbumPicturesServer) Send(m *ListAlbumPicturesResponse) error {
	return x.ServerStream.SendMsg(m)
}

func _PictureService_SearchPicturesByTag_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(SearchPicturesByTagRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(PictureServiceServer).SearchPicturesByTag(m, &pictureServiceSearchPicturesByTagServer{stream})
}

type PictureService_SearchPicturesByTagServer interface {
	Send(*SearchPicturesByTagResponse) error
	grpc.ServerStream
}

type pictureServiceSearchPicturesByTagServer struct {
	grpc.ServerStream
}

func (x *pictureServiceSearchPicturesByTagServer) Send(m *SearchPicturesByTagResponse) error {
	return x.ServerStream.SendMsg(m)
}

func _PictureService_SearchPicturesByName_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(SearchPicturesByNameRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(PictureServiceServer).SearchPicturesByName(m, &pictureServiceSearchPicturesByNameServer{stream})
}

type PictureService_SearchPicturesByNameServer interface {
	Send(*SearchPicturesByNameResponse) error
	grpc.ServerStream
}

type pictureServiceSearchPicturesByNameServer struct {
	grpc.ServerStream
}

func (x *pictureServiceSearchPicturesByNameServer) Send(m *SearchPicturesByNameResponse) error {
	return x.ServerStream.SendMsg(m)
}

// PictureService_ServiceDesc is the grpc.ServiceDesc for PictureService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var PictureService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "PictureService",
	HandlerType: (*PictureServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "CreatePicture",
			Handler:    _PictureService_CreatePicture_Handler,
		},
		{
			MethodName: "UpdatePicture",
			Handler:    _PictureService_UpdatePicture_Handler,
		},
		{
			MethodName: "DeletePicture",
			Handler:    _PictureService_DeletePicture_Handler,
		},
	},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "ListPictures",
			Handler:       _PictureService_ListPictures_Handler,
			ServerStreams: true,
		},
		{
			StreamName:    "ListAlbumPictures",
			Handler:       _PictureService_ListAlbumPictures_Handler,
			ServerStreams: true,
		},
		{
			StreamName:    "SearchPicturesByTag",
			Handler:       _PictureService_SearchPicturesByTag_Handler,
			ServerStreams: true,
		},
		{
			StreamName:    "SearchPicturesByName",
			Handler:       _PictureService_SearchPicturesByName_Handler,
			ServerStreams: true,
		},
	},
	Metadata: "picture_service.proto",
}
