import '../../presentation/protocols/router.dart';

abstract class FieldValidation {
  String get field;
  ValidationError validate(Map input);
}