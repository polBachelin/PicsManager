// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.2.0
// - protoc             v3.12.4
// source: album_service.proto

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

// AlbumServiceClient is the client API for AlbumService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type AlbumServiceClient interface {
	CreateAlbum(ctx context.Context, in *CreateAlbumRequest, opts ...grpc.CallOption) (*CreateAlbumResponse, error)
	UpdateAlbum(ctx context.Context, in *UpdateAlbumRequest, opts ...grpc.CallOption) (*UpdateAlbumResponse, error)
	DeleteAlbum(ctx context.Context, in *DeleteAlbumRequest, opts ...grpc.CallOption) (*DeleteAlbumResponse, error)
	ListAlbums(ctx context.Context, in *ListAlbumsRequest, opts ...grpc.CallOption) (AlbumService_ListAlbumsClient, error)
	ListOwnedAlbums(ctx context.Context, in *ListOwnedAlbumsRequest, opts ...grpc.CallOption) (AlbumService_ListOwnedAlbumsClient, error)
	ListSharedAlbums(ctx context.Context, in *ListSharedAlbumsRequest, opts ...grpc.CallOption) (AlbumService_ListSharedAlbumsClient, error)
	SearchAlbumsByName(ctx context.Context, in *SearchAlbumsByNameRequest, opts ...grpc.CallOption) (*SearchAlbumsByNameResponse, error)
}

type albumServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewAlbumServiceClient(cc grpc.ClientConnInterface) AlbumServiceClient {
	return &albumServiceClient{cc}
}

func (c *albumServiceClient) CreateAlbum(ctx context.Context, in *CreateAlbumRequest, opts ...grpc.CallOption) (*CreateAlbumResponse, error) {
	out := new(CreateAlbumResponse)
	err := c.cc.Invoke(ctx, "/AlbumService/CreateAlbum", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *albumServiceClient) UpdateAlbum(ctx context.Context, in *UpdateAlbumRequest, opts ...grpc.CallOption) (*UpdateAlbumResponse, error) {
	out := new(UpdateAlbumResponse)
	err := c.cc.Invoke(ctx, "/AlbumService/UpdateAlbum", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *albumServiceClient) DeleteAlbum(ctx context.Context, in *DeleteAlbumRequest, opts ...grpc.CallOption) (*DeleteAlbumResponse, error) {
	out := new(DeleteAlbumResponse)
	err := c.cc.Invoke(ctx, "/AlbumService/DeleteAlbum", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *albumServiceClient) ListAlbums(ctx context.Context, in *ListAlbumsRequest, opts ...grpc.CallOption) (AlbumService_ListAlbumsClient, error) {
	stream, err := c.cc.NewStream(ctx, &AlbumService_ServiceDesc.Streams[0], "/AlbumService/ListAlbums", opts...)
	if err != nil {
		return nil, err
	}
	x := &albumServiceListAlbumsClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type AlbumService_ListAlbumsClient interface {
	Recv() (*ListAlbumsResponse, error)
	grpc.ClientStream
}

type albumServiceListAlbumsClient struct {
	grpc.ClientStream
}

func (x *albumServiceListAlbumsClient) Recv() (*ListAlbumsResponse, error) {
	m := new(ListAlbumsResponse)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *albumServiceClient) ListOwnedAlbums(ctx context.Context, in *ListOwnedAlbumsRequest, opts ...grpc.CallOption) (AlbumService_ListOwnedAlbumsClient, error) {
	stream, err := c.cc.NewStream(ctx, &AlbumService_ServiceDesc.Streams[1], "/AlbumService/ListOwnedAlbums", opts...)
	if err != nil {
		return nil, err
	}
	x := &albumServiceListOwnedAlbumsClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type AlbumService_ListOwnedAlbumsClient interface {
	Recv() (*ListOwnedAlbumsResponse, error)
	grpc.ClientStream
}

type albumServiceListOwnedAlbumsClient struct {
	grpc.ClientStream
}

func (x *albumServiceListOwnedAlbumsClient) Recv() (*ListOwnedAlbumsResponse, error) {
	m := new(ListOwnedAlbumsResponse)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *albumServiceClient) ListSharedAlbums(ctx context.Context, in *ListSharedAlbumsRequest, opts ...grpc.CallOption) (AlbumService_ListSharedAlbumsClient, error) {
	stream, err := c.cc.NewStream(ctx, &AlbumService_ServiceDesc.Streams[2], "/AlbumService/ListSharedAlbums", opts...)
	if err != nil {
		return nil, err
	}
	x := &albumServiceListSharedAlbumsClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type AlbumService_ListSharedAlbumsClient interface {
	Recv() (*ListSharedAlbumsResponse, error)
	grpc.ClientStream
}

type albumServiceListSharedAlbumsClient struct {
	grpc.ClientStream
}

func (x *albumServiceListSharedAlbumsClient) Recv() (*ListSharedAlbumsResponse, error) {
	m := new(ListSharedAlbumsResponse)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *albumServiceClient) SearchAlbumsByName(ctx context.Context, in *SearchAlbumsByNameRequest, opts ...grpc.CallOption) (*SearchAlbumsByNameResponse, error) {
	out := new(SearchAlbumsByNameResponse)
	err := c.cc.Invoke(ctx, "/AlbumService/SearchAlbumsByName", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// AlbumServiceServer is the server API for AlbumService service.
// All implementations must embed UnimplementedAlbumServiceServer
// for forward compatibility
type AlbumServiceServer interface {
	CreateAlbum(context.Context, *CreateAlbumRequest) (*CreateAlbumResponse, error)
	UpdateAlbum(context.Context, *UpdateAlbumRequest) (*UpdateAlbumResponse, error)
	DeleteAlbum(context.Context, *DeleteAlbumRequest) (*DeleteAlbumResponse, error)
	ListAlbums(*ListAlbumsRequest, AlbumService_ListAlbumsServer) error
	ListOwnedAlbums(*ListOwnedAlbumsRequest, AlbumService_ListOwnedAlbumsServer) error
	ListSharedAlbums(*ListSharedAlbumsRequest, AlbumService_ListSharedAlbumsServer) error
	SearchAlbumsByName(context.Context, *SearchAlbumsByNameRequest) (*SearchAlbumsByNameResponse, error)
	mustEmbedUnimplementedAlbumServiceServer()
}

// UnimplementedAlbumServiceServer must be embedded to have forward compatible implementations.
type UnimplementedAlbumServiceServer struct {
}

func (UnimplementedAlbumServiceServer) CreateAlbum(context.Context, *CreateAlbumRequest) (*CreateAlbumResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreateAlbum not implemented")
}
func (UnimplementedAlbumServiceServer) UpdateAlbum(context.Context, *UpdateAlbumRequest) (*UpdateAlbumResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UpdateAlbum not implemented")
}
func (UnimplementedAlbumServiceServer) DeleteAlbum(context.Context, *DeleteAlbumRequest) (*DeleteAlbumResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method DeleteAlbum not implemented")
}
func (UnimplementedAlbumServiceServer) ListAlbums(*ListAlbumsRequest, AlbumService_ListAlbumsServer) error {
	return status.Errorf(codes.Unimplemented, "method ListAlbums not implemented")
}
func (UnimplementedAlbumServiceServer) ListOwnedAlbums(*ListOwnedAlbumsRequest, AlbumService_ListOwnedAlbumsServer) error {
	return status.Errorf(codes.Unimplemented, "method ListOwnedAlbums not implemented")
}
func (UnimplementedAlbumServiceServer) ListSharedAlbums(*ListSharedAlbumsRequest, AlbumService_ListSharedAlbumsServer) error {
	return status.Errorf(codes.Unimplemented, "method ListSharedAlbums not implemented")
}
func (UnimplementedAlbumServiceServer) SearchAlbumsByName(context.Context, *SearchAlbumsByNameRequest) (*SearchAlbumsByNameResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SearchAlbumsByName not implemented")
}
func (UnimplementedAlbumServiceServer) mustEmbedUnimplementedAlbumServiceServer() {}

// UnsafeAlbumServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to AlbumServiceServer will
// result in compilation errors.
type UnsafeAlbumServiceServer interface {
	mustEmbedUnimplementedAlbumServiceServer()
}

func RegisterAlbumServiceServer(s grpc.ServiceRegistrar, srv AlbumServiceServer) {
	s.RegisterService(&AlbumService_ServiceDesc, srv)
}

func _AlbumService_CreateAlbum_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CreateAlbumRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(AlbumServiceServer).CreateAlbum(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/AlbumService/CreateAlbum",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(AlbumServiceServer).CreateAlbum(ctx, req.(*CreateAlbumRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _AlbumService_UpdateAlbum_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UpdateAlbumRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(AlbumServiceServer).UpdateAlbum(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/AlbumService/UpdateAlbum",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(AlbumServiceServer).UpdateAlbum(ctx, req.(*UpdateAlbumRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _AlbumService_DeleteAlbum_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(DeleteAlbumRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(AlbumServiceServer).DeleteAlbum(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/AlbumService/DeleteAlbum",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(AlbumServiceServer).DeleteAlbum(ctx, req.(*DeleteAlbumRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _AlbumService_ListAlbums_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(ListAlbumsRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(AlbumServiceServer).ListAlbums(m, &albumServiceListAlbumsServer{stream})
}

type AlbumService_ListAlbumsServer interface {
	Send(*ListAlbumsResponse) error
	grpc.ServerStream
}

type albumServiceListAlbumsServer struct {
	grpc.ServerStream
}

func (x *albumServiceListAlbumsServer) Send(m *ListAlbumsResponse) error {
	return x.ServerStream.SendMsg(m)
}

func _AlbumService_ListOwnedAlbums_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(ListOwnedAlbumsRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(AlbumServiceServer).ListOwnedAlbums(m, &albumServiceListOwnedAlbumsServer{stream})
}

type AlbumService_ListOwnedAlbumsServer interface {
	Send(*ListOwnedAlbumsResponse) error
	grpc.ServerStream
}

type albumServiceListOwnedAlbumsServer struct {
	grpc.ServerStream
}

func (x *albumServiceListOwnedAlbumsServer) Send(m *ListOwnedAlbumsResponse) error {
	return x.ServerStream.SendMsg(m)
}

func _AlbumService_ListSharedAlbums_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(ListSharedAlbumsRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(AlbumServiceServer).ListSharedAlbums(m, &albumServiceListSharedAlbumsServer{stream})
}

type AlbumService_ListSharedAlbumsServer interface {
	Send(*ListSharedAlbumsResponse) error
	grpc.ServerStream
}

type albumServiceListSharedAlbumsServer struct {
	grpc.ServerStream
}

func (x *albumServiceListSharedAlbumsServer) Send(m *ListSharedAlbumsResponse) error {
	return x.ServerStream.SendMsg(m)
}

func _AlbumService_SearchAlbumsByName_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(SearchAlbumsByNameRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(AlbumServiceServer).SearchAlbumsByName(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/AlbumService/SearchAlbumsByName",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(AlbumServiceServer).SearchAlbumsByName(ctx, req.(*SearchAlbumsByNameRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// AlbumService_ServiceDesc is the grpc.ServiceDesc for AlbumService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var AlbumService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "AlbumService",
	HandlerType: (*AlbumServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "CreateAlbum",
			Handler:    _AlbumService_CreateAlbum_Handler,
		},
		{
			MethodName: "UpdateAlbum",
			Handler:    _AlbumService_UpdateAlbum_Handler,
		},
		{
			MethodName: "DeleteAlbum",
			Handler:    _AlbumService_DeleteAlbum_Handler,
		},
		{
			MethodName: "SearchAlbumsByName",
			Handler:    _AlbumService_SearchAlbumsByName_Handler,
		},
	},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "ListAlbums",
			Handler:       _AlbumService_ListAlbums_Handler,
			ServerStreams: true,
		},
		{
			StreamName:    "ListOwnedAlbums",
			Handler:       _AlbumService_ListOwnedAlbums_Handler,
			ServerStreams: true,
		},
		{
			StreamName:    "ListSharedAlbums",
			Handler:       _AlbumService_ListSharedAlbums_Handler,
			ServerStreams: true,
		},
	},
	Metadata: "album_service.proto",
}
