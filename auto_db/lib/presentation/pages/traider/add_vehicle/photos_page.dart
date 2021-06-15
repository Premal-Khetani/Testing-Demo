import 'package:auto_db/core/configs/size_config.dart';

import 'package:auto_db/core/constants/color_constants.dart';
import 'package:auto_db/core/constants/string_constants.dart';
import 'package:auto_db/core/constants/style_constants.dart';
import 'package:auto_db/domain/entities/add_vehicle/add_vehicle_response.dart';
import 'package:auto_db/icons/add_vehicle_icons.dart';
import 'package:auto_db/navigation/tab_navigator.dart';
import 'package:auto_db/presentation/blocs/trader/add_vehicle/photos/photos_bloc.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:auto_db/presentation/widgets/navigation_widget.dart';
import 'package:auto_db/presentation/widgets/notifaction_area_widget.dart';
import 'package:auto_db/presentation/widgets/trader/add_vehicle/photos_widget.dart';
import 'package:flutter/material.dart';

class PhotosPage extends StatefulWidget {
  final AddVehicleResponse addVehicleResponse;

  const PhotosPage({Key key, @required this.addVehicleResponse})
      : super(key: key);

  @override
  _PhotosPageState createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> with WillPopRouteObserver {
  PhotosBloc photosBloc;

  @override
  void dispose() {
    photosBloc?.dispose();
    TabNavigator.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    TabNavigator.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (photosBloc == null) {
      photosBloc = PhotosBloc(
          context: context, addVehicleResponse: widget.addVehicleResponse);
    }
    super.didChangeDependencies();
  }

  @override
  Future<bool> willPopRoute() async{
    await photosBloc?.close();
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.backgroundColor,
        body: _drawBody(context),
      );
  }

  Widget _drawBody(BuildContext buildContext) {
    final padding = MediaQuery.of(buildContext).viewPadding;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        NotificationAreaWidget(
          topPadding: padding.top,
          haveHomeButton: true,
          haveHelpButton: true,
          onHelpTapped: () {},
        ),
        Expanded(flex: 1, child: _getPhotosStateListener(buildContext))
      ],
    );
  }

  Widget _getPhotosStateListener(BuildContext buildContext) {
    return StreamBuilder(
        initialData: photosBloc.photosInitialState,
        stream: photosBloc.outPhotosStateController,
        builder: (BuildContext context, AsyncSnapshot<PhotosState> snapshot) {
          final state = snapshot.data;

          if (state.isSubmitting) {
            return LoaderWidget();
          }

          final List<Widget> actionWidgets = [
            GestureDetector(
              onTap: () {
                photosBloc.addEvent(PhotosEvent.photoFromCamera());
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 1 * SizeConfig.heightMultiplier),
                child: Container(
                  height: 4.25 * SizeConfig.imageSizeMultiplier,
                  width: 4.25 * SizeConfig.imageSizeMultiplier,
                  decoration: BoxDecoration(
                      color: ColorConstants.whiteColor,
                      borderRadius: BorderRadius.circular(
                          2.0 * SizeConfig.imageSizeMultiplier)),
                  child: Icon(
                    AddVehicleIcons.take_a_photo,
                    color: ColorConstants.blackColor,
                    size: 2.75 * SizeConfig.imageSizeMultiplier,
                  ),
                ),
              ),
            ),
           /* GestureDetector(
              onTap: () {
                photosBloc.addEvent(PhotosEvent.photoFromLibrary());
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 1 * SizeConfig.heightMultiplier),
                child: Container(
                  height: 4.25 * SizeConfig.imageSizeMultiplier,
                  width: 4.25 * SizeConfig.imageSizeMultiplier,
                  decoration: BoxDecoration(
                      color: ColorConstants.whiteColor,
                      borderRadius: BorderRadius.circular(
                          2.0 * SizeConfig.imageSizeMultiplier)),
                  child: Icon(
                    AddVehicleIcons.photo_library,
                    color: ColorConstants.blackColor,
                    size: 2.75 * SizeConfig.imageSizeMultiplier,
                  ),
                ),
              ),
            ),*/
            GestureDetector(
              onTap: () {
                photosBloc.addEvent(PhotosEvent.save());
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 1 * SizeConfig.heightMultiplier),
                child: Container(
                  height: 4.25 * SizeConfig.imageSizeMultiplier,
                  width: 4.25 * SizeConfig.imageSizeMultiplier,
                  decoration: BoxDecoration(
                      color: ColorConstants.whiteColor,
                      borderRadius: BorderRadius.circular(
                          2 * SizeConfig.imageSizeMultiplier)),
                  child: Icon(
                    AddVehicleIcons.save,
                    color: ColorConstants.blackColor,
                    size: 2.75 * SizeConfig.imageSizeMultiplier,
                  ),
                ),
              ),
            )
          ];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              NavigationWidget(
                title: StringConstants.photos.toUpperCase(),
                textAlign: TextAlign.start,
                style: StyleConstants.bigPageTitleTextStyle,
                haveBackButton: true,
                onTrailerTapped: () {
                  photosBloc.addEvent(PhotosEvent.close());
                },
                actionWidgets: actionWidgets,
              ),
              Expanded(
                flex: 1,
                child: PhotosWidget(
                  photos: state.photos,
                  onReorder: (int oldIndex, int newIndex) {
                    photosBloc.addEvent(PhotosEvent.onReorder(
                        oldIndex: oldIndex, newIndex: newIndex));
                  },
                  onDeletePhoto: (photo) {
                    photosBloc.addEvent(
                        PhotosEvent.onDeletePhotoTapped(photo: photo));
                  },
                ),
              )
            ],
          );
        });
  }
}
