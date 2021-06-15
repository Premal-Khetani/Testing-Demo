class NotEmptyString {
  String value;
  String errorMessage;
  String _errorMessage;

  NotEmptyString._(this._errorMessage, {this.value, this.errorMessage,});

  factory NotEmptyString.initialWithErrorMessage(String message) =>
      NotEmptyString._(message, value: '', errorMessage: '');

  bool get isError => errorMessage.isNotEmpty;

  bool validate() {
    errorMessage = emptyStringValidation(value);
    return !isError;
  }

  String emptyStringValidation(String input) {
    if (input == null) {
      return this._errorMessage;
    }

    if (input.isEmpty) {
      return this._errorMessage;
    }

    return '';
  }
}
