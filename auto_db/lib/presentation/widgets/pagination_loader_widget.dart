import 'package:auto_db/core/configs/size_config.dart';
import 'package:auto_db/presentation/widgets/loader_widget.dart';
import 'package:flutter/material.dart';

class PaginationLoaderWidget extends StatelessWidget {
  const PaginationLoaderWidget({
    Key key, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8 * SizeConfig.heightMultiplier,
      child: LoaderWidget(),
    );
  }
}