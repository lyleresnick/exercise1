import 'package:exercise1/ui/name_picker/use_case/name_picker_presentation_model.dart';

class ViewRowModel {
  final String startupName;
  final bool isSelected;
  ViewRowModel({required this.startupName, required this.isSelected});
}

class ViewModel {
  final bool canGoUp;
  final bool canGoDown;

  final List<ViewRowModel> pageSubset;
  final bool isNameSelected;
  final bool isWaiting;
  final String? selectedName;

  ViewModel.fromPresentation(PresentationModel model)
      : canGoDown = model.canGoDown,
        canGoUp = model.canGoUp,
        isNameSelected = model.selectedOrdinal != null,
        isWaiting = model.isWaiting,
        selectedName = model.selectedName,
        pageSubset = model.pageSubset
            .asMap()
            .map((offset, suggestion) => MapEntry(
                offset,
                ViewRowModel(
                    startupName: suggestion.startupName,
                    isSelected: _isSelected(
                        model.startOffset + offset, model.selectedOrdinal))))
            .values
            .toList();

  static bool _isSelected(int currentOffset, int? selectedOrdinal) {
    if ((selectedOrdinal != null) && (selectedOrdinal == currentOffset))
      return true;
    return false;
  }
}
