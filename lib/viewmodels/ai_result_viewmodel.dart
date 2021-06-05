import 'dart:io';
import 'dart:math';
import 'dart:ui';

import 'package:berhan/enums/viewstate.dart';
import 'package:berhan/interfaces/i_vibration.dart';
import 'package:berhan/locator.dart';
import 'package:berhan/models/image_tile_model.dart';
import 'package:dio/dio.dart';

import 'core/base_viewmodel.dart';

class AIResultModel extends BaseViewModel {
  String result;
  final String url = "http://10.0.2.2:5000";
  final Dio dio = new Dio();

  void getDefaultData(String path) async {
    setState(ViewState.Busy);

    //var imagebyte = File(path).readAsBytesSync();

    var formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(path),
    });

    Response<Map<String, dynamic>> response = await dio.post(
        '$url/api/v1/predict',
        data: formData,
        options: Options(responseType: ResponseType.json));
        
    print("[FLASK API] ${response.data}");

    result = response.data["data"];
    setState(ViewState.Idle);
  }

  List<Size> _createSizes(int count) {
    Random rnd = new Random();
    return new List.generate(
        count,
        (i) => new Size((rnd.nextInt(500) + 200).toDouble(),
            rnd.nextInt(800) + 200.toDouble()));
  }
}
