import 'package:exercise1/repo/startup_entity.dart';

class PresentationModel {
  bool get canGoDown => startOffset + pageSize < listLength;

  bool get canGoUp => startOffset > 0;
  final int startOffset;

  final List<StartupEntity> pageSubset;
  final int listLength;
  final int pageSize;
  final bool isWaiting;
  final int? selectedOrdinal;
  final String? selectedName;

  PresentationModel(
      {required this.pageSubset,
      required this.startOffset,
      required this.listLength,
      required this.pageSize,
      this.selectedOrdinal,
      this.isWaiting = false,
      this.selectedName});
}
