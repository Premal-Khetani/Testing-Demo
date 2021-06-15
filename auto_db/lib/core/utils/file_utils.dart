import 'dart:async';
import 'dart:io';
import 'dart:ui' as skia;
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class FileUtils {
  static FileUtils _fileUtils;
  String documentsDir;
  String photosDir;

  FileUtils _() {}

  static Future<FileUtils> get instance async {
    if (FileUtils._fileUtils == null) {
      FileUtils._fileUtils = FileUtils();
      FileUtils._fileUtils.documentsDir =
          await _getApplicationDocumentsDirectoryPath();
      FileUtils._fileUtils.photosDir = "${_fileUtils.documentsDir}/photos_dir";
    }
    return FileUtils._fileUtils;
  }

  static Future<String> _getApplicationDocumentsDirectoryPath() async {
    final _directory = await getApplicationDocumentsDirectory();

    return _directory.path;
  }

  Future<String> getCreateSavePhotosDirPath(String subFolder) async {
    final String path = "$photosDir/$subFolder";
    Directory dir = Directory(path);
    if (!await dir.exists()) {
      await dir.create(recursive: true);
    }
    return path;
  }

  Future<File> copyImageToPhotos(String from, String subFolder) async {
    final String extension = _getImageExtensionFromImagePath(from);
    final StringBuffer toBuilder = StringBuffer(photosDir);
    if (subFolder != null) {
      toBuilder.write("/$subFolder");
    }
    toBuilder.write("/");
    toBuilder.write(DateTime.now().millisecondsSinceEpoch.toString());
    toBuilder.write(extension);
    final String to = toBuilder.toString();
    final File src = File(from);
    File ret;
    try {
      if (src.existsSync()) {
        final dest = File(to);
        if (!await dest.exists()) {
          await dest.create(recursive: true);
        }
        ret = await src.copy(to);
      }
    } catch (e) {
      print("copyImageToPhotos: " + e.toString());
    }

    return ret;
  }

  static Future<File> ensureValidImage(File file) async {
    final extensions = [".png", ".jpg", ".jpeg"];
    String path = file.path;
    File ret = file;
    String extension = _getNullableImageExtensionFromImagePath(path);
    extension = extension == null ? "" : extension.toLowerCase();
    if (!extensions.contains(extension)) {
      int idx = path.lastIndexOf(".");
      idx = idx == -1 ? path.length : idx;
      String newPath = path.substring(0, idx) + ".png";
      Uint8List data = await file.readAsBytes();

      final codec = await skia.instantiateImageCodec(data);
      final frame = await codec.getNextFrame();
      final byteDataPng =
          await frame.image.toByteData(format: skia.ImageByteFormat.png);
      final _imageBytes = Uint8List.sublistView(byteDataPng);
      ret = await saveImageFileToPath(_imageBytes, newPath);
    }
    return ret;
  }

  Future<File> saveAssetToPhotos(
      {Asset asset, String subFolder, String extension = '.png'}) async {
    final StringBuffer toBuilder = StringBuffer(photosDir);
    if (subFolder != null) {
      toBuilder.write("/$subFolder");
    }
    toBuilder.write("/");
    toBuilder.write(DateTime.now().millisecondsSinceEpoch.toString());
    toBuilder.write(extension);
    final String to = toBuilder.toString();
    IntSize imgSize =
        IntSize.clamped(asset.originalWidth, asset.originalHeight);

    ByteData byteData = await asset.getByteData();
    Uint8List data = byteData.buffer.asUint8List();

    final codec = await skia.instantiateImageCodec(data,
        targetWidth: imgSize.width, targetHeight: imgSize.height);
    final frame = await codec.getNextFrame();
    final byteDataPng =
        await frame.image.toByteData(format: skia.ImageByteFormat.png);
    final _imageBytes = Uint8List.sublistView(byteDataPng);
    return await saveImageFileToPath(_imageBytes, to);
  }

  Future<File> copyAssetToPhotos({
    Asset asset,
    String subFolder,
  }) async {
    final StringBuffer toBuilder = StringBuffer(photosDir);
    if (subFolder != null) {
      toBuilder.write("/$subFolder");
    }
    toBuilder.write("/");
    toBuilder.write(DateTime.now().millisecondsSinceEpoch.toString());
    toBuilder.write(".jpeg"); //Asset is always jpeg type image
    final String to = toBuilder.toString();
    IntSize imgSize =
        IntSize.clamped(asset.originalWidth, asset.originalHeight);

    ByteData byteData =
        await asset.getThumbByteData(imgSize.width, imgSize.height);
    Uint8List data = byteData.buffer.asUint8List();
    return await saveImageFileToPath(data, to);
  }

  Future<File> copyPhotoToPhotos({Uint8List data, String subFolder}) async {
    final StringBuffer toBuilder = StringBuffer(photosDir);
    if (subFolder != null) {
      toBuilder.write("/$subFolder");
    }
    toBuilder.write("/");
    toBuilder.write(DateTime.now().millisecondsSinceEpoch.toString());
    toBuilder.write('.png');
    final String to = toBuilder.toString();
    final codec = await skia.instantiateImageCodec(data);
    final frame = await codec.getNextFrame();
    final byteDataPng =
        await frame.image.toByteData(format: skia.ImageByteFormat.png);
    final _imageBytes = Uint8List.sublistView(byteDataPng);
    return await saveImageFileToPath(_imageBytes, to);
  }

  static String _getNullableImageExtensionFromImagePath(String imagePath) {
    String _imageExtension;
    try {
      final _extensionIndex = imagePath.lastIndexOf('.');
      if (_extensionIndex != -1) {
        _imageExtension = imagePath.substring(_extensionIndex);
      }
    } catch (e) {
      print("_getNullableImageExtensionFromImagePath: " + e.toString());
    }

    return _imageExtension;
  }

  String _getImageExtensionFromImagePath(String imagePath) {
    String _imageExtension;
    try {
      final _extensionIndex = imagePath.lastIndexOf('.');
      if (_extensionIndex != -1) {
        _imageExtension = imagePath.substring(_extensionIndex + 1);
      }
    } catch (e) {
      print("GetImageExtension: " + e.toString());
    }

    if (_imageExtension == null) {
      _imageExtension = "png";
    }

    return '.' + _imageExtension;
  }

  static Future<File> saveImageFileToPath(
      Uint8List byteData, String imagePath) async {
    final _file = File(imagePath);
    final _exist = await _file.exists();

    if (!_exist) {
      await _file.create(recursive: true);
    }

    await _file.writeAsBytes(byteData, flush: true);

    return _file;
  }

  static Future<File> copyFileTo(String from, String to) async {
    final File src = File(from);
    File ret;
    try {
      if (src.existsSync()) {
        final dest = File(to);
        if (!await dest.exists()) {
          await dest.create(recursive: true);
        }
        ret = await src.copy(to);
      }
    } catch (e) {
      print("Copy File: " + e.toString());
    }

    return ret;
  }
}

class IntSize {
  final int width;
  final int height;

  const IntSize._({this.width, this.height});

  factory IntSize.clamped(int width, int height) {
    double w = width.toDouble();
    double h = height.toDouble();
    if (width > height && width > 1920) {
      w = 1920.0;
      h = w * height / width;
    } else if (height > width && height > 1920) {
      h = 1920.0;
      w = h * width / height;
    }
    return IntSize._(width: w.toInt(), height: h.toInt());
  }
}
