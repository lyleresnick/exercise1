// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'name_picker_presentation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PresentationRowModelTearOff {
  const _$PresentationRowModelTearOff();

  _PresentationRowModel call(
      {required String id, required String startupName}) {
    return _PresentationRowModel(
      id: id,
      startupName: startupName,
    );
  }
}

/// @nodoc
const $PresentationRowModel = _$PresentationRowModelTearOff();

/// @nodoc
mixin _$PresentationRowModel {
  String get id => throw _privateConstructorUsedError;
  String get startupName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PresentationRowModelCopyWith<PresentationRowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentationRowModelCopyWith<$Res> {
  factory $PresentationRowModelCopyWith(PresentationRowModel value,
          $Res Function(PresentationRowModel) then) =
      _$PresentationRowModelCopyWithImpl<$Res>;
  $Res call({String id, String startupName});
}

/// @nodoc
class _$PresentationRowModelCopyWithImpl<$Res>
    implements $PresentationRowModelCopyWith<$Res> {
  _$PresentationRowModelCopyWithImpl(this._value, this._then);

  final PresentationRowModel _value;
  // ignore: unused_field
  final $Res Function(PresentationRowModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? startupName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startupName: startupName == freezed
          ? _value.startupName
          : startupName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PresentationRowModelCopyWith<$Res>
    implements $PresentationRowModelCopyWith<$Res> {
  factory _$PresentationRowModelCopyWith(_PresentationRowModel value,
          $Res Function(_PresentationRowModel) then) =
      __$PresentationRowModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String startupName});
}

/// @nodoc
class __$PresentationRowModelCopyWithImpl<$Res>
    extends _$PresentationRowModelCopyWithImpl<$Res>
    implements _$PresentationRowModelCopyWith<$Res> {
  __$PresentationRowModelCopyWithImpl(
      _PresentationRowModel _value, $Res Function(_PresentationRowModel) _then)
      : super(_value, (v) => _then(v as _PresentationRowModel));

  @override
  _PresentationRowModel get _value => super._value as _PresentationRowModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? startupName = freezed,
  }) {
    return _then(_PresentationRowModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startupName: startupName == freezed
          ? _value.startupName
          : startupName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PresentationRowModel implements _PresentationRowModel {
  _$_PresentationRowModel({required this.id, required this.startupName});

  @override
  final String id;
  @override
  final String startupName;

  @override
  String toString() {
    return 'PresentationRowModel(id: $id, startupName: $startupName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PresentationRowModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.startupName, startupName) ||
                const DeepCollectionEquality()
                    .equals(other.startupName, startupName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(startupName);

  @JsonKey(ignore: true)
  @override
  _$PresentationRowModelCopyWith<_PresentationRowModel> get copyWith =>
      __$PresentationRowModelCopyWithImpl<_PresentationRowModel>(
          this, _$identity);
}

abstract class _PresentationRowModel implements PresentationRowModel {
  factory _PresentationRowModel(
      {required String id,
      required String startupName}) = _$_PresentationRowModel;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get startupName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PresentationRowModelCopyWith<_PresentationRowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PresentationModelTearOff {
  const _$PresentationModelTearOff();

  _PresentationModel call(
      {required int startOffset,
      required List<PresentationRowModel> pageSubset,
      required int listLength,
      bool isWaiting = false,
      int? selectedOrdinal,
      String? selectedName}) {
    return _PresentationModel(
      startOffset: startOffset,
      pageSubset: pageSubset,
      listLength: listLength,
      isWaiting: isWaiting,
      selectedOrdinal: selectedOrdinal,
      selectedName: selectedName,
    );
  }
}

/// @nodoc
const $PresentationModel = _$PresentationModelTearOff();

/// @nodoc
mixin _$PresentationModel {
  int get startOffset => throw _privateConstructorUsedError;
  List<PresentationRowModel> get pageSubset =>
      throw _privateConstructorUsedError;
  int get listLength => throw _privateConstructorUsedError;
  bool get isWaiting => throw _privateConstructorUsedError;
  int? get selectedOrdinal => throw _privateConstructorUsedError;
  String? get selectedName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PresentationModelCopyWith<PresentationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentationModelCopyWith<$Res> {
  factory $PresentationModelCopyWith(
          PresentationModel value, $Res Function(PresentationModel) then) =
      _$PresentationModelCopyWithImpl<$Res>;
  $Res call(
      {int startOffset,
      List<PresentationRowModel> pageSubset,
      int listLength,
      bool isWaiting,
      int? selectedOrdinal,
      String? selectedName});
}

/// @nodoc
class _$PresentationModelCopyWithImpl<$Res>
    implements $PresentationModelCopyWith<$Res> {
  _$PresentationModelCopyWithImpl(this._value, this._then);

  final PresentationModel _value;
  // ignore: unused_field
  final $Res Function(PresentationModel) _then;

  @override
  $Res call({
    Object? startOffset = freezed,
    Object? pageSubset = freezed,
    Object? listLength = freezed,
    Object? isWaiting = freezed,
    Object? selectedOrdinal = freezed,
    Object? selectedName = freezed,
  }) {
    return _then(_value.copyWith(
      startOffset: startOffset == freezed
          ? _value.startOffset
          : startOffset // ignore: cast_nullable_to_non_nullable
              as int,
      pageSubset: pageSubset == freezed
          ? _value.pageSubset
          : pageSubset // ignore: cast_nullable_to_non_nullable
              as List<PresentationRowModel>,
      listLength: listLength == freezed
          ? _value.listLength
          : listLength // ignore: cast_nullable_to_non_nullable
              as int,
      isWaiting: isWaiting == freezed
          ? _value.isWaiting
          : isWaiting // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedOrdinal: selectedOrdinal == freezed
          ? _value.selectedOrdinal
          : selectedOrdinal // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedName: selectedName == freezed
          ? _value.selectedName
          : selectedName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PresentationModelCopyWith<$Res>
    implements $PresentationModelCopyWith<$Res> {
  factory _$PresentationModelCopyWith(
          _PresentationModel value, $Res Function(_PresentationModel) then) =
      __$PresentationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int startOffset,
      List<PresentationRowModel> pageSubset,
      int listLength,
      bool isWaiting,
      int? selectedOrdinal,
      String? selectedName});
}

/// @nodoc
class __$PresentationModelCopyWithImpl<$Res>
    extends _$PresentationModelCopyWithImpl<$Res>
    implements _$PresentationModelCopyWith<$Res> {
  __$PresentationModelCopyWithImpl(
      _PresentationModel _value, $Res Function(_PresentationModel) _then)
      : super(_value, (v) => _then(v as _PresentationModel));

  @override
  _PresentationModel get _value => super._value as _PresentationModel;

  @override
  $Res call({
    Object? startOffset = freezed,
    Object? pageSubset = freezed,
    Object? listLength = freezed,
    Object? isWaiting = freezed,
    Object? selectedOrdinal = freezed,
    Object? selectedName = freezed,
  }) {
    return _then(_PresentationModel(
      startOffset: startOffset == freezed
          ? _value.startOffset
          : startOffset // ignore: cast_nullable_to_non_nullable
              as int,
      pageSubset: pageSubset == freezed
          ? _value.pageSubset
          : pageSubset // ignore: cast_nullable_to_non_nullable
              as List<PresentationRowModel>,
      listLength: listLength == freezed
          ? _value.listLength
          : listLength // ignore: cast_nullable_to_non_nullable
              as int,
      isWaiting: isWaiting == freezed
          ? _value.isWaiting
          : isWaiting // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedOrdinal: selectedOrdinal == freezed
          ? _value.selectedOrdinal
          : selectedOrdinal // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedName: selectedName == freezed
          ? _value.selectedName
          : selectedName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PresentationModel implements _PresentationModel {
  _$_PresentationModel(
      {required this.startOffset,
      required this.pageSubset,
      required this.listLength,
      this.isWaiting = false,
      this.selectedOrdinal,
      this.selectedName});

  @override
  final int startOffset;
  @override
  final List<PresentationRowModel> pageSubset;
  @override
  final int listLength;
  @JsonKey(defaultValue: false)
  @override
  final bool isWaiting;
  @override
  final int? selectedOrdinal;
  @override
  final String? selectedName;

  @override
  String toString() {
    return 'PresentationModel(startOffset: $startOffset, pageSubset: $pageSubset, listLength: $listLength, isWaiting: $isWaiting, selectedOrdinal: $selectedOrdinal, selectedName: $selectedName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PresentationModel &&
            (identical(other.startOffset, startOffset) ||
                const DeepCollectionEquality()
                    .equals(other.startOffset, startOffset)) &&
            (identical(other.pageSubset, pageSubset) ||
                const DeepCollectionEquality()
                    .equals(other.pageSubset, pageSubset)) &&
            (identical(other.listLength, listLength) ||
                const DeepCollectionEquality()
                    .equals(other.listLength, listLength)) &&
            (identical(other.isWaiting, isWaiting) ||
                const DeepCollectionEquality()
                    .equals(other.isWaiting, isWaiting)) &&
            (identical(other.selectedOrdinal, selectedOrdinal) ||
                const DeepCollectionEquality()
                    .equals(other.selectedOrdinal, selectedOrdinal)) &&
            (identical(other.selectedName, selectedName) ||
                const DeepCollectionEquality()
                    .equals(other.selectedName, selectedName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(startOffset) ^
      const DeepCollectionEquality().hash(pageSubset) ^
      const DeepCollectionEquality().hash(listLength) ^
      const DeepCollectionEquality().hash(isWaiting) ^
      const DeepCollectionEquality().hash(selectedOrdinal) ^
      const DeepCollectionEquality().hash(selectedName);

  @JsonKey(ignore: true)
  @override
  _$PresentationModelCopyWith<_PresentationModel> get copyWith =>
      __$PresentationModelCopyWithImpl<_PresentationModel>(this, _$identity);
}

abstract class _PresentationModel implements PresentationModel {
  factory _PresentationModel(
      {required int startOffset,
      required List<PresentationRowModel> pageSubset,
      required int listLength,
      bool isWaiting,
      int? selectedOrdinal,
      String? selectedName}) = _$_PresentationModel;

  @override
  int get startOffset => throw _privateConstructorUsedError;
  @override
  List<PresentationRowModel> get pageSubset =>
      throw _privateConstructorUsedError;
  @override
  int get listLength => throw _privateConstructorUsedError;
  @override
  bool get isWaiting => throw _privateConstructorUsedError;
  @override
  int? get selectedOrdinal => throw _privateConstructorUsedError;
  @override
  String? get selectedName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PresentationModelCopyWith<_PresentationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
