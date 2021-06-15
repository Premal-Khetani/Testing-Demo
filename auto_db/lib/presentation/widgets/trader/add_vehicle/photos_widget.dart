import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/domain/value_objects/add_vehicle/photo.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/photo_widget.dart';
import 'package:flutter/material.dart';
import 'package:reorderables/reorderables.dart';

class PhotosWidget extends StatelessWidget {
  final List<Photo> photos;
  final void Function(int oldIndex, int newIndex) onReorder;
  final void Function(Photo photo) onDeletePhoto;

  const PhotosWidget(
      {Key key, @required this.photos, this.onReorder, this.onDeletePhoto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var wrap = ReorderableWrap(
      spacing: 3.0,
      runSpacing: 3.0,
      padding: EdgeInsets.only(
          left: 2.2 * SizeConfig.heightMultiplier,
          top: 1.5 * SizeConfig.heightMultiplier,
          right: 2.2 * SizeConfig.heightMultiplier,
          bottom: 2.2 * SizeConfig.heightMultiplier),
      children: _getChildren(context),
      onReorder: _onReorder,
    );

    return SingleChildScrollView(
      child: wrap,
    );
  }

  List<Widget> _getChildren(BuildContext buildContext) {
    print("_getChildren Photos Widget");
    return photos.asMap().entries.map((entry) {
      int index = entry.key + 1;
      Photo photo = entry.value;
      return PhotoWidget(
        photo: photo,
        index: index,
        onDeleteTapped: () {
          onDeletePhoto(photo);
        },
      );
    }).toList();
  }

  void _onReorder(int oldIndex, int newIndex) {
    //tiles.insert(newIndex, tiles.removeAt(oldIndex));
    if (onReorder != null) {
      onReorder(oldIndex, newIndex);
    }
  }
}
