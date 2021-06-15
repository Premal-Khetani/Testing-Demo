import 'dart:io';

import 'package:multi_image_picker/multi_image_picker.dart';

class Photo {
  int id;
  String name;
  File local;
  String urlPath;
  Asset asset;
  double progress;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'local': local?.path,
      'urlPath': urlPath,
      'progress': progress,
    };
  }

  static Photo fromMap(Map<String, dynamic> map) {
    Photo photo = Photo();
    if (map['id'] != null) {
      photo.id = map['id'] as int;
    }
    if (map['name'] != null) {
      photo.name = map['name'] as String;
    }
    if (map['urlPath'] != null) {
      photo.urlPath = map['urlPath'] as String;
    }
    if (map['local'] != null) {
      photo.local = File(map['local'] as String);
    }
    if (map['progress'] != null) {
      photo.progress = map['progress'] as double;
    }
    return photo;
  }
}
