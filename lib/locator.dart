import 'package:berhan/viewmodels/ai_result_viewmodel.dart';
import 'package:get_it/get_it.dart';
import 'package:berhan/interfaces/i_imagepicker.dart';
import 'package:berhan/interfaces/i_mockdata.dart';
import 'package:berhan/interfaces/i_vibration.dart';
import 'package:berhan/repository/mock_data/mockservice.dart';
import 'package:berhan/repository/repository.dart';
import 'package:berhan/services/flashlight_services.dart';
import 'package:berhan/services/imagepicker_services.dart';
import 'package:berhan/services/services.dart';
import 'package:berhan/services/vibration_services.dart';
import 'package:berhan/utils/datetime_utils.dart';
import 'package:berhan/viewmodels/carousal_slider_viewmodel.dart';
import 'package:berhan/viewmodels/home_camera_viewmodel.dart';
import 'package:berhan/viewmodels/search_image_viewmodel.dart';

import 'interfaces/i_flashlight.dart';
import 'interfaces/i_repository.dart';

GetIt locator = GetIt.I;
void setupLocator() {
  locator.registerFactory(() => HomeCameraViewModel());

  locator.registerFactory(() => CarousalSliderViewModel());

  locator.registerFactory(() => SearchImageViewModel());

  locator.registerFactory(() => AIResultModel());

  locator.registerLazySingleton<IMockData>(() => new MockService());
  locator.registerLazySingleton<IRepository>(() => new Repository());
  locator.registerSingleton(new DateTimeUtils());
  locator.registerLazySingleton<IVibration>(() => new VibrationServices());
  locator.registerLazySingleton<IFlashLight>(() => new FlashLightServices());
  locator.registerLazySingleton<IImagePicker>(() => new ImagePickerServices());
  locator.registerSingleton(new Services());
}
