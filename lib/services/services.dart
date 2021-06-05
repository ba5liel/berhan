import 'package:berhan/interfaces/i_flashlight.dart';
import 'package:berhan/interfaces/i_imagepicker.dart';
import 'package:berhan/interfaces/i_vibration.dart';
import 'package:berhan/locator.dart';

class Services {

   IVibration i_vibrate = locator<IVibration>();
   IFlashLight i_flashlight = locator<IFlashLight>();
   IImagePicker i_imagepicker = locator<IImagePicker>();
}