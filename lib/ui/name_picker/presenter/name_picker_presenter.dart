import 'package:exercise1/ui/common/starter_bloc.dart';
import 'package:exercise1/ui/name_picker/presenter/name_picker_view_model.dart';
import 'package:exercise1/ui/name_picker/use_case/name_picker_use_case.dart';

import 'name_picker_presenter_output.dart';

class NamePickerPresenter extends StarterBloc<NamePickerPresenterOutput> {
  final NamePickerUseCase _useCase;

  NamePickerPresenter(this._useCase) {
    _useCase.stream.listen((event) {
      emit(event.when(
          presentModel: (model) => NamePickerPresenterOutput.showModel(ViewModel.fromPresentation(model)),
          presentLoading: () => NamePickerPresenterOutput.showLoading()));
    });
  }

  void eventReady() {
    _useCase.eventReady();
  }

  void eventNameSelected(int ordinal) {
    _useCase.eventNameSelected(ordinal);
  }

  void eventShowName() {
    _useCase.eventShowName();
  }

  void eventMoreNames() {
    _useCase.eventMoreNames();
  }

  void eventGoUp() {
    _useCase.eventGoUp();
  }

  void eventGoDown() {
    _useCase.eventGoDown();
  }

  @override
  void dispose() {
    _useCase.dispose();
    super.dispose();
  }
}
