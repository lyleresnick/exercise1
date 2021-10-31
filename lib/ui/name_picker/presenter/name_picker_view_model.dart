import 'package:exercise1/ui/name_picker/use_case/name_picker_presentation_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part "name_picker_view_model.freezed.dart";

@freezed
class ViewRowModel with _$ViewRowModel{
  factory ViewRowModel({required String startupName, required bool isSelected}) = _ViewRowModel;
}

@freezed
class ViewModel with _$ViewModel {

  factory ViewModel({
    required bool canGoUp,
    required bool canGoDown,
    required List<ViewRowModel> pageSubset,
    required bool isNameSelected,
    @Default(false) bool isWaiting,
    String? selectedName,
  }) = _ViewModel;

  static ViewModel fromPresentation(PresentationModel model) {
    final canGoDown = model.startOffset + model.pageSubset.length < model.listLength;

    final canGoUp = model.startOffset > 0;

    final isNameSelected = model.selectedOrdinal != null;
    final isWaiting = model.isWaiting;
    final selectedName = model.selectedName;
    final pageSubset = model.pageSubset
        .asMap()
        .map((offset, suggestion) =>
        MapEntry(
            offset,
            ViewRowModel(
                startupName: suggestion.startupName,
                isSelected: _isSelected(
                    model.startOffset + offset, model.selectedOrdinal))))
        .values
        .toList();
    return ViewModel(canGoDown: canGoDown, canGoUp: canGoUp, isNameSelected: isNameSelected,
        isWaiting: isWaiting, selectedName: selectedName, pageSubset: pageSubset);
  }

  static bool _isSelected(int currentOffset, int? selectedOrdinal) {
    if ((selectedOrdinal != null) && (selectedOrdinal == currentOffset))
      return true;
    return false;
  }
}
