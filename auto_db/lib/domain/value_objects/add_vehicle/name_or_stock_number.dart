class NameOrStockNumber {
  String value;
  String errorMessage;

  NameOrStockNumber._({this.value, this.errorMessage});
  
  factory NameOrStockNumber.initial() => NameOrStockNumber._(
    value: '',
    errorMessage: ''
  );

  bool get isError => errorMessage.isNotEmpty;

  bool validate(){
    return !isError;
  }
}