import 'package:freezed_annotation/freezed_annotation.dart';
import 'name_picker_view_model.dart';
part "name_picker_presenter_output.freezed.dart";


@freezed
class NamePickerPresenterOutput with _$NamePickerPresenterOutput {
  const factory NamePickerPresenterOutput.showLoading() = _Loading;
  const factory NamePickerPresenterOutput.showModel(ViewModel model) =
  _PresentModel;
}
