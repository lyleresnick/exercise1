import 'package:freezed_annotation/freezed_annotation.dart';
import 'name_picker_presentation_model.dart';
part "name_picker_use_case_output.freezed.dart";

@freezed
class NamePickerUseCaseOutput with _$NamePickerUseCaseOutput {
  const factory NamePickerUseCaseOutput.presentLoading() = _Loading;
  const factory NamePickerUseCaseOutput.presentModel(PresentationModel model) =
      _PresentModel;
}
