import 'package:exercise1/repo/repo.dart';
import 'package:exercise1/ui/app_state/name_picker_app_state.dart';
import 'package:exercise1/ui/name_picker/presenter/name_picker_presenter.dart';
import 'package:exercise1/ui/name_picker/use_case/name_picker_use_case.dart';
import 'package:exercise1/ui/name_picker/view/name_picker_scene.dart';

class NamePickerAssembly {
  final NamePickerScene scene;

  NamePickerAssembly._(this.scene);

  factory NamePickerAssembly() {
    final useCase = NamePickerUseCase(Repo.repo, NamePickerAppState.instance);
    final presenter = NamePickerPresenter(useCase);
    final scene = NamePickerScene(presenter);

    return NamePickerAssembly._(scene);
  }
}
