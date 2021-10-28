import 'package:exercise1/ui/app_state/app_state.dart';
import 'package:exercise1/ui/name_picker/presenter/name_picker_presenter.dart';
import 'package:exercise1/ui/name_picker/presenter/name_picker_presenter_output.dart';
import 'package:exercise1/ui/name_picker/presenter/name_picker_view_model.dart';
import 'package:exercise1/ui/name_picker/use_case/name_picker_presentation_model.dart';
import 'package:exercise1/ui/name_picker/use_case/name_picker_use_case.dart';
import 'package:exercise1/ui/name_picker/use_case/name_picker_use_case_output.dart';
import 'package:flutter_test/flutter_test.dart';

import 'unimplemented_repo.dart';

const testString = "abracadabra";

void main() {
  late NamePickerPresenter sut;
  late MockUseCase mockUseCase;

  setUp(() {
    mockUseCase = MockUseCase();
    sut = NamePickerPresenter(mockUseCase);
  });

  test('sut calls useCase.eventReady', () async {
    sut.eventReady();
    expect(mockUseCase.eventReadyCalled, equals(true));
  });

  test('sut calls useCase.eventGoDown', () async {
    sut.eventGoDown();
    expect(mockUseCase.eventGoDownCalled, equals(true));
  });

  final _testOrdinal = 6;
  test('sut calls useCase.eventNameSelected', () async {
    sut.eventNameSelected(_testOrdinal);
    expect(mockUseCase.eventNameSelectedOrdinal, equals(_testOrdinal));
  });

  test('sut calls useCase.eventShowName', () async {
    sut.eventShowName();
    expect(mockUseCase.eventShowNameCalled, equals(true));
  });

  test('sut correctly converts output of useCase', () async {
    mockUseCase.emitItems();
    expect(
        sut.stream,
        emitsInOrder(
          [
            NamePickerPresenterOutput.showLoading(),
            NamePickerPresenterOutput.showModel(ViewModel(
              canGoUp: false,
              canGoDown: true,
              pageSubset: [
                ViewRowModel(startupName: "Name1", isSelected: false),
                ViewRowModel(startupName: "Name2", isSelected: true),
                ViewRowModel(startupName: "Name3", isSelected: false),
                ViewRowModel(startupName: "Name4", isSelected: false),
                ViewRowModel(startupName: "Name5", isSelected: false),
              ],
              isNameSelected: true,
              selectedName: testString,
              isWaiting: true,
            )),
            NamePickerPresenterOutput.showModel(ViewModel(
              canGoUp: true,
              canGoDown: true,
              pageSubset: [
                ViewRowModel(startupName: "Name1", isSelected: false),
                ViewRowModel(startupName: "Name2", isSelected: false),
                ViewRowModel(startupName: "Name3", isSelected: true),
                ViewRowModel(startupName: "Name4", isSelected: false),
                ViewRowModel(startupName: "Name5", isSelected: false),
              ],
              isNameSelected: true,
              selectedName: null,
              isWaiting: true,
            )),
            NamePickerPresenterOutput.showModel(ViewModel(
              canGoUp: true,
              canGoDown: false,
              pageSubset: [
                ViewRowModel(startupName: "Name1", isSelected: false),
                ViewRowModel(startupName: "Name2", isSelected: false),
                ViewRowModel(startupName: "Name3", isSelected: true),
                ViewRowModel(startupName: "Name4", isSelected: false),
                ViewRowModel(startupName: "Name5", isSelected: false),
              ],
              isNameSelected: true,
              selectedName: null,
              isWaiting: true,
            )),
          ],
        ));
  });

  tearDown(() {
    sut.close();
  });
}

class MockUseCase extends NamePickerUseCase {
  MockUseCase() : super(UnimplementedRepo(), MockAppState());
  bool eventReadyCalled = false;
  bool eventGoDownCalled = false;
  bool eventGoUpCalled = false;
  bool eventMoreNamesCalled = false;
  int? eventNameSelectedOrdinal;
  bool eventShowNameCalled = false;

  @override
  Future<void> eventReady() async {
    eventReadyCalled = true;
  }

  @override
  void eventGoDown() {
    eventGoDownCalled = true;
  }

  @override
  void eventGoUp() {
    eventGoUpCalled = true;
  }

  @override
  Future<void> eventMoreNames() async {
    eventMoreNamesCalled = true;
  }

  @override
  void eventNameSelected(int ordinal) {
    eventNameSelectedOrdinal = ordinal;
  }

  @override
  void eventShowName() {
    eventShowNameCalled = true;
  }

  void emitItems() {
    emit(NamePickerUseCaseOutput.presentLoading());
    emit(NamePickerUseCaseOutput.presentModel(PresentationModel( //view at beginning of list
        pageSubset: [
          PresentationRowModel(id: "1", startupName: "Name1"),
          PresentationRowModel(id: "2", startupName: "Name2"),
          PresentationRowModel(id: "3", startupName: "Name3"),
          PresentationRowModel(id: "4", startupName: "Name4"),
          PresentationRowModel(id: "5", startupName: "Name5"),
        ],
        selectedName: testString,
        isWaiting: true,
        listLength: 20,
        startOffset: 0,
        selectedOrdinal: 1))); // checking conversion
    emit(NamePickerUseCaseOutput.presentModel(PresentationModel( //view in middle of list
        pageSubset: [
          PresentationRowModel(id: "1", startupName: "Name1"),
          PresentationRowModel(id: "2", startupName: "Name2"),
          PresentationRowModel(id: "3", startupName: "Name3"),
          PresentationRowModel(id: "4", startupName: "Name4"),
          PresentationRowModel(id: "5", startupName: "Name5"),
        ],
        selectedName: null,
        isWaiting: true,
        listLength: 20,
        startOffset: 5,
        selectedOrdinal: 7))); // checking conversion
    emit(NamePickerUseCaseOutput.presentModel(PresentationModel( //view at end of list
        pageSubset: [
          PresentationRowModel(id: "1", startupName: "Name1"),
          PresentationRowModel(id: "2", startupName: "Name2"),
          PresentationRowModel(id: "3", startupName: "Name3"),
          PresentationRowModel(id: "4", startupName: "Name4"),
          PresentationRowModel(id: "5", startupName: "Name5"),
        ],
        selectedName: null,
        isWaiting: true,
        listLength: 20,
        startOffset: 15,
        selectedOrdinal: 17))); // checking conversion
  }
}

class MockAppState extends AppState {}
