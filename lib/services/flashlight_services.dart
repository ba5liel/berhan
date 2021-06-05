
import 'package:berhan/interfaces/i_flashlight.dart';
import 'package:berhan/interfaces/i_vibration.dart';

class FlashLightServices implements IFlashLight {

  @override
  void offFlash() async {
    // TODO: implement offFlash
  }

  @override
  void onFlash() async {
    // TODO: implement onFlash
    // if(await Lantern.hasLamp)
    //     Lantern.turnOn();
  }



}