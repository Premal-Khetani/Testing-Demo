import 'package:flutter/foundation.dart';

class AddVehicleStepState{
  AddVehicleStepStateEnum value;

  AddVehicleStepState._({@required value});

  factory AddVehicleStepState.initial() => AddVehicleStepState._(
    value : AddVehicleStepStateEnum.None
  );
}

enum AddVehicleStepStateEnum{
  Saved,
  Skiped,
  None
}