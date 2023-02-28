import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraProvider extends ChangeNotifier {
  late final _cameras;
  late final _controller;
  bool _pending = false;

  init() async {
    _pending = true;
    _cameras = await availableCameras();
    _controller = CameraController(_usedCamera, ResolutionPreset.max);
    await _controller.initialize();
    _pending = false;
  }

  bool get isPending => _pending;
  bool get isAvailable => !_cameras.isEmpty;
  CameraDescription get _usedCamera => _cameras.first;
  Widget get show => (!isPending && isAvailable) ? CameraPreview(_controller) : const Center(child: CircularProgressIndicator());
  Image get picture => _controller.takePicture();
}