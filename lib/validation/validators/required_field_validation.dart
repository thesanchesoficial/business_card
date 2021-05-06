import 'package:equatable/equatable.dart';

import '../../presentation/protocols/router.dart';
import '../protocols/router.dart';

class RequiredFieldValidation extends Equatable implements FieldValidation {
  final String field;

  List get props => [field];

  RequiredFieldValidation(this.field);

  ValidationError validate(Map input) =>
    input[field]?.isNotEmpty == true ? null : ValidationError.requiredField;
}