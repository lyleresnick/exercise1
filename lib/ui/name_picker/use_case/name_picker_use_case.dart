import 'package:exercise1/repo/repo.dart';
import 'package:exercise1/ui/app_state/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'name_picker_presentation_model.dart';
import 'name_picker_use_case_output.dart';

class NamePickerUseCase extends Cubit<NamePickerUseCaseOutput> {
  final Repo _repo;
  final AppState _appState;

  List<PresentationRowModel> _pageSubset = [];
  int _startOffset = 0;
  final _pageSize = 5;
  int? _selectedOrdinal;

  NamePickerUseCase(this._repo, this._appState)
      : super(NamePickerUseCaseOutput.presentLoading());

  void eventReady() async {
    _appState.suggestionList = [];
    emit(NamePickerUseCaseOutput.presentLoading());
    final pairs = await _repo.getMoreSuggestions();
    _appState.suggestionList.addAll(pairs);
    _refreshPage();
  }

  _refreshPage() {
    _pageSubset =
        _appState.suggestionList.skip(_startOffset).take(_pageSize)
        .map((entity) => PresentationRowModel.fromStartUpEntity(entity)).toList();
    _refreshPresentation();
  }

  void _refreshPresentation({isWaiting = false, String? selectedName}) {
    emit(NamePickerUseCaseOutput.presentModel(PresentationModel.fromState(
        pageSubset: _pageSubset,
        selectedOrdinal: _selectedOrdinal,
        startOffset: _startOffset,
        listLength: _appState.suggestionList.length,
        pageSize: _pageSize,
        isWaiting: isWaiting,
        selectedName: selectedName)));
  }

  Future<void> eventMoreNames() async {
    _refreshPresentation(isWaiting: true);
    final pairs = await _repo.getMoreSuggestions();
    _appState.suggestionList.addAll(pairs);
    _refreshPresentation();
  }

  void eventNameSelected(int ordinal) {
    _selectedOrdinal = ordinal + _startOffset;
    _refreshPresentation();
  }

  void eventGoUp() {
    _startOffset -= 1;
    _refreshPage();
  }

  void eventGoDown() {
    _startOffset += 1;
    _refreshPage();
  }

  void eventShowName() {
    _refreshPresentation(); //to thwart the Cubit from squelching duplicates (if show selection if pressed twice)
    _refreshPresentation(
        selectedName: _appState.suggestionList[_selectedOrdinal!].startupName);
  }
}
