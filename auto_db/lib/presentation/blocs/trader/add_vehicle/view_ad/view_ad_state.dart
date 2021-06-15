part of 'view_ad_bloc.dart';

@freezed
abstract class ViewAdState with _$ViewAdState {
  const factory ViewAdState({
    @required String title,
    @required String image,
    String licensePlate,
    String stockNumber,
    @required String price,
    @required String year,
    @required String mileage,
    @required String fuel,
    @required String engine,
    @required String transmission,
    @required String power,
    @required bool isSubmitting
  }) = _ViewAdState;

   factory ViewAdState.initial() => ViewAdState(
     title: '',
     image: '',
     licensePlate: null,
     stockNumber: null,
     price: '',
     year: '',
     mileage: '',
     fuel: '',
     engine: '',
     transmission: '',
     power: '',
     isSubmitting: true
   );
}