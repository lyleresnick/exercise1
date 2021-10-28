import 'package:exercise1/repo/startup_entity.dart';
import 'package:exercise1/ui/name_picker/use_case/name_picker_presentation_model.dart';
import 'package:exercise1/ui/name_picker/use_case/name_picker_use_case.dart';
import 'package:exercise1/ui/name_picker/use_case/name_picker_use_case_output.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_app_state.dart';
import 'test_utils.dart';
import 'unimplemented_repo.dart';

void main() {
  late NamePickerUseCase sut;
  late Stream<NamePickerUseCaseOutput> stream;
  final pageSize = 5;

  final mockRepository = FakeRepo();

  final testPresentationData = testData
      .map((entity) => PresentationRowModel.fromStartUpEntity(entity))
      .toList();
  final testPresentationDataAll = testPresentationData + testPresentationData;

  setUp(() {
    sut = NamePickerUseCase(mockRepository, TestAppState.instance);
    stream = sut.stream;
  });

  test('default model sets selectedOrdinal = null, isWaiting = false}',
      () async {
    expect(
        PresentationModel(
          pageSubset: [],
          listLength: 0,
          startOffset: 0,
        ),
        equals(PresentationModel(
            pageSubset: [],
            listLength: 0,
            startOffset: 0,
            selectedOrdinal: null,
            isWaiting: false)));
  });

  test('sut emits loading, then model with offset = 0, on eventReady',
      () async {
    executeStreamTest(stream: stream, expectedValues: [
      NamePickerUseCaseOutput.presentLoading(),
      NamePickerUseCaseOutput.presentModel(PresentationModel(
        pageSubset: testPresentationData.take(pageSize).toList(),
        listLength: testPresentationData.length,
        startOffset: 0,
      ))
    ]);
    await sut.eventReady();
  });

  test('sut emits loading, then model with offset = 1 on eventGoDown',
      () async {
    executeStreamTest(stream: stream, expectedValues: [
      NamePickerUseCaseOutput.presentLoading(),
      NamePickerUseCaseOutput.presentModel(PresentationModel(
        pageSubset: testPresentationData.take(pageSize).toList(),
        listLength: testPresentationData.length,
        startOffset: 0,
      )),
      NamePickerUseCaseOutput.presentModel(PresentationModel(
        pageSubset: testPresentationData.skip(1).take(pageSize).toList(),
        listLength: testPresentationData.length,
        startOffset: 1,
      ))
    ]);
    await sut.eventReady();
    sut.eventGoDown();
  });

  test('sut emits model with offset = 2 on 2nd eventGoDown', () async {
    executeStreamTest(stream: stream, expectedValues: [
      NamePickerUseCaseOutput.presentLoading(),
      NamePickerUseCaseOutput.presentModel(PresentationModel(
        pageSubset: testPresentationData.take(pageSize).toList(),
        listLength: testPresentationData.length,
        startOffset: 0,
      )),
      NamePickerUseCaseOutput.presentModel(PresentationModel(
        pageSubset: testPresentationData.skip(1).take(pageSize).toList(),
        listLength: testPresentationData.length,
        startOffset: 1,
      )),
      NamePickerUseCaseOutput.presentModel(PresentationModel(
        pageSubset: testPresentationData.skip(2).take(pageSize).toList(),
        listLength: testPresentationData.length,
        startOffset: 2,
      ))
    ]);
    await sut.eventReady();
    sut.eventGoDown();
    sut.eventGoDown();
  });

  test('sut emits model with offset = 15 on 15th eventGoDown', () async {
    executeStreamTest(stream: stream.skip(1 + 14), expectedValues: [
      NamePickerUseCaseOutput.presentModel(PresentationModel(
        pageSubset: testPresentationData.skip(14).take(pageSize).toList(),
        listLength: testPresentationData.length,
        startOffset: 14,
      )),
      NamePickerUseCaseOutput.presentModel(PresentationModel(
        pageSubset: testPresentationData.skip(15).take(pageSize).toList(),
        listLength: testPresentationData.length,
        startOffset: 15,
      ))
    ]);
    await sut.eventReady();
    int pressesLeft = 15;
    while (pressesLeft > 0) {
      sut.eventGoDown();
      pressesLeft--;
    }
  });

  test(
      'sut emits model with offset = 13 on 15 eventGoDowns and then 2 eventGoUps',
      () async {
    executeStreamTest(stream: stream.skip(1 + 17), expectedValues: [
      NamePickerUseCaseOutput.presentModel(PresentationModel(
        pageSubset: testPresentationData.skip(13).take(pageSize).toList(),
        listLength: testPresentationData.length,
        startOffset: 13,
      ))
    ]);
    await sut.eventReady();
    int pressesLeft = 15;
    while (pressesLeft > 0) {
      sut.eventGoDown();
      pressesLeft--;
    }
    sut.eventGoUp(); // 14
    sut.eventGoUp(); // 13
  });

  test(
      'sut emits model with offset = 13, selectedOrdinal = 14 on 15 eventGoDowns and then 2 eventGoUps, then select 13th',
      () async {
    executeStreamTest(stream: stream.skip(1 + 18), expectedValues: [
      NamePickerUseCaseOutput.presentModel(PresentationModel(
          pageSubset: testPresentationData.skip(13).take(pageSize).toList(),
          listLength: testPresentationData.length,
          startOffset: 13,
          selectedOrdinal: 14 // 2nd from the top in list
          ))
    ]);
    await sut.eventReady(); // 0
    int pressesLeft = 15;
    while (pressesLeft > 0) {
      sut.eventGoDown();
      pressesLeft--;
    }
    sut.eventGoUp(); // 14
    sut.eventGoUp(); // 13 // is at the top
    sut.eventNameSelected(1); // 2nd from the top in view
  });

  test(
      'sut emits model offset = 13, selectedOrdinal = 14, selectedName = "Name14" on 15 eventGoDowns and then 2 eventGoUps, then select 1 from top, then show selected',
      () async {
    executeStreamTest(stream: stream.skip(1 + 19), expectedValues: [
      NamePickerUseCaseOutput.presentModel(PresentationModel(
          pageSubset: testPresentationData.skip(13).take(pageSize).toList(),
          listLength: testPresentationData.length,
          startOffset: 13,
          selectedOrdinal: 14, // 2nd from the top in list
          selectedName: "Name14"))
    ]);
    await sut.eventReady(); // 0
    int pressesLeft = 15;
    while (pressesLeft > 0) {
      sut.eventGoDown();
      pressesLeft--;
    }
    sut.eventGoUp(); // 14
    sut.eventGoUp(); // 13 // is at the top
    sut.eventNameSelected(1); // 2nd from the top in view
    sut.eventShowName();
  });

  test(
      'sut emits model offset = 13, selectedOrdinal = 14, listLength = 40 on eventGetMoreNames',
      () async {
    executeStreamTest(stream: stream.skip(1 + 20), expectedValues: [
      NamePickerUseCaseOutput.presentModel(PresentationModel(
        pageSubset: testPresentationData.skip(13).take(pageSize).toList(),
        listLength: 20,
        startOffset: 13,
        selectedOrdinal: 14, // 2nd from the top in list
        isWaiting: true,
      )),
      NamePickerUseCaseOutput.presentModel(PresentationModel(
        pageSubset: testPresentationData.skip(13).take(pageSize).toList(),
        listLength: 40,
        startOffset: 13,
        selectedOrdinal: 14, // 2nd from the top in list
      ))
    ]);
    await sut.eventReady(); // 0
    int pressesLeft = 15;
    while (pressesLeft > 0) {
      sut.eventGoDown();
      pressesLeft--;
    }
    sut.eventGoUp(); // 14
    sut.eventGoUp(); // 13 // is at the top
    sut.eventNameSelected(1); // 2nd from the top in view
    sut.eventShowName();
    await sut.eventMoreNames();
  });

  test(
      'sut emits model offset = 26, selectedOrdinal = 14, listLength = 40 after eventGetMoreNames,  goUps and goDowns',
      () async {
    executeStreamTest(stream: stream.skip(1 + 38), expectedValues: [
      NamePickerUseCaseOutput.presentModel(PresentationModel(
        pageSubset: testPresentationDataAll.skip(26).take(pageSize).toList(),
        listLength: 40,
        startOffset: 26,
        selectedOrdinal: 14, // 2nd from the top in list
      ))
    ]);
    await sut.eventReady(); // 0
    int pressesLeft = 15;
    while (pressesLeft > 0) {
      sut.eventGoDown();
      pressesLeft--;
    }
    sut.eventGoUp(); // 14
    sut.eventGoUp(); // 13 // is at the top
    sut.eventNameSelected(1); // 2nd from the top in view
    sut.eventShowName();
    await sut.eventMoreNames();
    pressesLeft = 15;
    while (pressesLeft > 0) {
      sut.eventGoDown();
      pressesLeft--;
    }
    sut.eventGoUp(); // 14
    sut.eventGoUp(); // 13 // is at the top
  });
}

final testData = [
  StartupEntity(id: "0", startupName: "Name0"),
  StartupEntity(id: "1", startupName: "Name1"),
  StartupEntity(id: "2", startupName: "Name2"),
  StartupEntity(id: "3", startupName: "Name3"),
  StartupEntity(id: "4", startupName: "Name4"),
  StartupEntity(id: "5", startupName: "Name5"),
  StartupEntity(id: "6", startupName: "Name6"),
  StartupEntity(id: "7", startupName: "Name7"),
  StartupEntity(id: "8", startupName: "Name8"),
  StartupEntity(id: "9", startupName: "Name9"),
  StartupEntity(id: "10", startupName: "Name10"),
  StartupEntity(id: "11", startupName: "Name11"),
  StartupEntity(id: "12", startupName: "Name12"),
  StartupEntity(id: "13", startupName: "Name13"),
  StartupEntity(id: "14", startupName: "Name14"),
  StartupEntity(id: "15", startupName: "Name15"),
  StartupEntity(id: "16", startupName: "Name16"),
  StartupEntity(id: "17", startupName: "Name17"),
  StartupEntity(id: "18", startupName: "Name18"),
  StartupEntity(id: "19", startupName: "Name19"),
];

class FakeRepo extends UnimplementedRepo {
  @override
  Future<List<StartupEntity>> getMoreSuggestions() {
    return Future.value(testData);
  }
}
