import 'dart:io';

import 'package:berhan/interfaces/i_imagepicker.dart';
import 'package:image_picker/image_picker.dart';


class ImagePickerServices implements IImagePicker {


  @override
  Future<File> pickerImageFromGallery() async {
    // TODO: implement pickerImageFromGallery
   return File((await ImagePicker().getImage(source: ImageSource.gallery)).path);
  }







}