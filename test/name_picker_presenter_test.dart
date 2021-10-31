import 'dart:async';

import 'package:exercise1/ui/app_state/app_state.dart';
import 'package:exercise1/ui/common/starter_bloc.dart';
import 'package:exercise1/ui/name_picker/presenter/name_picker_presenter.dart';
import 'package:exercise1/ui/name_picker/presenter/name_picker_presenter_output.dart';
import 'package:exercise1/ui/name_picker/presenter/name_picker_view_model.dart';
import 'package:exercise1/ui/name_picker/use_case/name_picker_presentation_model.dart';
import 'package:exercise1/ui/name_picker/use_case/name_picker_use_case.dart';
import 'package:exercise1/ui/name_picker/use_case/name_picker_use_case_output.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

const testString = "abracadabra";

void main() {
  late NamePickerPresenter sut;
  late MockUseCase mockUseCase;

  setUp(() {
    mockUseCase = MockUseCase();
    sut = NamePickerPresenter(mockUseCase);
  });

  test('sut.eventReady calls useCase.eventReady', () async {
    when(() => mockUseCase.eventReady()).thenAnswer((_) async => Future<void>.value(null));
    verifyNever(() => mockUseCase.eventReady());
    sut.eventReady();
    verify(() => mockUseCase.eventReady()).called(1);
  });

  test('sut.eventGoDown calls useCase.eventGoDown', () async {
    when(() => mockUseCase.eventGoDown()).thenReturn(null);
    verifyNever(() => mockUseCase.eventGoDown());
    sut.eventGoDown();
    verify(() => mockUseCase.eventGoDown()).called(1);
  });

  test('sut.eventGoUp calls useCase.eventGoUp', () async {
    when(() => mockUseCase.eventGoUp()).thenReturn(null);
    verifyNever(() => mockUseCase.eventGoUp());
    sut.eventGoDown();
    verify(() => mockUseCase.eventGoDown()).called(1);
  });

  final _testOrdinal = 6;
  test('sut.eventNameSelected calls useCase.eventNameSelected and sets ordinal', () async {
    when(() => mockUseCase.eventNameSelected(_testOrdinal)).thenReturn(null);
    sut.eventNameSelected(_testOrdinal);
    final captured = verify(() => sut.eventNameSelected(captureAny())).captured;
    expect(captured.last, equals(_testOrdinal));
  });

  test('sut.eventShowName calls useCase.eventShowName', () async {
    when(() => mockUseCase.eventShowName()).thenReturn(null);
    sut.eventShowName();
    verify(() => mockUseCase.eventShowName()).called(1);
  });

  test('sut.eventMoreNames calls useCase.eventMoreNames', () async {
    when(() => mockUseCase.eventMoreNames()).thenAnswer((_) async => Future<void>.value(null));
    sut.eventMoreNames();
    verify(() => mockUseCase.eventMoreNames()).called(1);
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
    sut.dispose();
  });
}

class MockUseCase extends Mock with StarterBloc<NamePickerUseCaseOutput> implements NamePickerUseCase {

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
