import 'package:exercise1/repo/startup_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part "name_picker_presentation_model.freezed.dart";

@freezed
class PresentationRowModel with _$PresentationRowModel{
  factory PresentationRowModel({required String id, required String startupName}) = _PresentationRowModel;
  static PresentationRowModel fromStartUpEntity(StartupEntity entity) {
    return PresentationRowModel(id: entity.id, startupName: entity.startupName);
  }
}

@freezed
class PresentationModel with _$PresentationModel {
  factory PresentationModel({
    required int startOffset,
    required List<PresentationRowModel> pageSubset,
    required int listLength,
    required int pageSize,
    @Default(false) bool isWaiting,
    int? selectedOrdinal,
    String? selectedName
  }) = _PresentationModel;


  static PresentationModel fromState({
    required int startOffset,
    required List<StartupEntity> pageSubset,
    required int listLength,
    required int pageSize,
    bool isWaiting = false,
    int? selectedOrdinal,
    String? selectedName
  }) {

    final pageSubsetPresentation = pageSubset.map((entity) => PresentationRowModel.fromStartUpEntity(entity)).toList();
    return PresentationModel(startOffset: startOffset,
        pageSubset: pageSubsetPresentation,
        listLength: listLength,
        pageSize: pageSize,
        selectedOrdinal: selectedOrdinal,
        isWaiting: isWaiting, selectedName: selectedName);
  }

}
