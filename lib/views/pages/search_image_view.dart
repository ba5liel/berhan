import 'dart:io';

import 'package:berhan/viewmodels/ai_result_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:berhan/viewmodels/search_image_viewmodel.dart';
import 'package:berhan/views/core/base_view.dart';
import 'package:berhan/views/widgets/lens_appbar.dart';
import 'package:berhan/views/widgets/rubberbottomsheet_widget.dart';

class SearchImageView extends StatefulWidget {
  final String imagePath;
  final bool islandscape;

  SearchImageView({this.imagePath, this.islandscape});

  @override
  _SearchImageViewState createState() => _SearchImageViewState();
}

class _SearchImageViewState extends State<SearchImageView> {
  bool hide = false; // hide the widget on top of botto sheet once reach top
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<AIResultModel>(
        onModelReady: (model) => model.getDefaultData(widget.imagePath),
        builder: (context, model, child) => Scaffold(
              body: SafeArea(
                child: Stack(
                  children: <Widget>[
                    new RotatedBox(
                      quarterTurns: widget.islandscape ? -1 : 0,
                      child: Image.file(File(widget.imagePath),
                          fit: BoxFit.fill,
                          height: double.infinity,
                          width: double.infinity),
                    ),
                    RubberBottomSheetWidget(
                      initialvalue: 20.0,
                      result: model.result,
                    ),
                    LensAppBar(false, onpop, OpenGallery)
                  ],
                ),
              ),
            ));
  }

  void onpop(bool page) {
    Navigator.pop(context);
  }

  void OpenGallery() {
    //TODO in version 2
  }
}
