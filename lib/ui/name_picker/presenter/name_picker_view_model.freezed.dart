// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'name_picker_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ViewRowModelTearOff {
  const _$ViewRowModelTearOff();

  _ViewRowModel call({required String startupName, required bool isSelected}) {
    return _ViewRowModel(
      startupName: startupName,
      isSelected: isSelected,
    );
  }
}

/// @nodoc
const $ViewRowModel = _$ViewRowModelTearOff();

/// @nodoc
mixin _$ViewRowModel {
  String get startupName => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewRowModelCopyWith<ViewRowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewRowModelCopyWith<$Res> {
  factory $ViewRowModelCopyWith(
          ViewRowModel value, $Res Function(ViewRowModel) then) =
      _$ViewRowModelCopyWithImpl<$Res>;
  $Res call({String startupName, bool isSelected});
}

/// @nodoc
class _$ViewRowModelCopyWithImpl<$Res> implements $ViewRowModelCopyWith<$Res> {
  _$ViewRowModelCopyWithImpl(this._value, this._then);

  final ViewRowModel _value;
  // ignore: unused_field
  final $Res Function(ViewRowModel) _then;

  @override
  $Res call({
    Object? startupName = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      startupName: startupName == freezed
          ? _value.startupName
          : startupName // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ViewRowModelCopyWith<$Res>
    implements $ViewRowModelCopyWith<$Res> {
  factory _$ViewRowModelCopyWith(
          _ViewRowModel value, $Res Function(_ViewRowModel) then) =
      __$ViewRowModelCopyWithImpl<$Res>;
  @override
  $Res call({String startupName, bool isSelected});
}

/// @nodoc
class __$ViewRowModelCopyWithImpl<$Res> extends _$ViewRowModelCopyWithImpl<$Res>
    implements _$ViewRowModelCopyWith<$Res> {
  __$ViewRowModelCopyWithImpl(
      _ViewRowModel _value, $Res Function(_ViewRowModel) _then)
      : super(_value, (v) => _then(v as _ViewRowModel));

  @override
  _ViewRowModel get _value => super._value as _ViewRowModel;

  @override
  $Res call({
    Object? startupName = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_ViewRowModel(
      startupName: startupName == freezed
          ? _value.startupName
          : startupName // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ViewRowModel implements _ViewRowModel {
  _$_ViewRowModel({required this.startupName, required this.isSelected});

  @override
  final String startupName;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'ViewRowModel(startupName: $startupName, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewRowModel &&
            (identical(other.startupName, startupName) ||
                const DeepCollectionEquality()
                    .equals(other.startupName, startupName)) &&
            (identical(other.isSelected, isSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isSelected, isSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(startupName) ^
      const DeepCollectionEquality().hash(isSelected);

  @JsonKey(ignore: true)
  @override
  _$ViewRowModelCopyWith<_ViewRowModel> get copyWith =>
      __$ViewRowModelCopyWithImpl<_ViewRowModel>(this, _$identity);
}

abstract class _ViewRowModel implements ViewRowModel {
  factory _ViewRowModel(
      {required String startupName,
      required bool isSelected}) = _$_ViewRowModel;

  @override
  String get startupName => throw _privateConstructorUsedError;
  @override
  bool get isSelected => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ViewRowModelCopyWith<_ViewRowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ViewModelTearOff {
  const _$ViewModelTearOff();

  _ViewModel call(
      {required bool canGoUp,
      required bool canGoDown,
      required List<ViewRowModel> pageSubset,
      required bool isNameSelected,
      bool isWaiting = false,
      String? selectedName}) {
    return _ViewModel(
      canGoUp: canGoUp,
      canGoDown: canGoDown,
      pageSubset: pageSubset,
      isNameSelected: isNameSelected,
      isWaiting: isWaiting,
      selectedName: selectedName,
    );
  }
}

/// @nodoc
const $ViewModel = _$ViewModelTearOff();

/// @nodoc
mixin _$ViewModel {
  bool get canGoUp => throw _privateConstructorUsedError;
  bool get canGoDown => throw _privateConstructorUsedError;
  List<ViewRowModel> get pageSubset => throw _privateConstructorUsedError;
  bool get isNameSelected => throw _privateConstructorUsedError;
  bool get isWaiting => throw _privateConstructorUsedError;
  String? get selectedName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewModelCopyWith<ViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewModelCopyWith<$Res> {
  factory $ViewModelCopyWith(ViewModel value, $Res Function(ViewModel) then) =
      _$ViewModelCopyWithImpl<$Res>;
  $Res call(
      {bool canGoUp,
      bool canGoDown,
      List<ViewRowModel> pageSubset,
      bool isNameSelected,
      bool isWaiting,
      String? selectedName});
}

/// @nodoc
class _$ViewModelCopyWithImpl<$Res> implements $ViewModelCopyWith<$Res> {
  _$ViewModelCopyWithImpl(this._value, this._then);

  final ViewModel _value;
  // ignore: unused_field
  final $Res Function(ViewModel) _then;

  @override
  $Res call({
    Object? canGoUp = freezed,
    Object? canGoDown = freezed,
    Object? pageSubset = freezed,
    Object? isNameSelected = freezed,
    Object? isWaiting = freezed,
    Object? selectedName = freezed,
  }) {
    return _then(_value.copyWith(
      canGoUp: canGoUp == freezed
          ? _value.canGoUp
          : canGoUp // ignore: cast_nullable_to_non_nullable
              as bool,
      canGoDown: canGoDown == freezed
          ? _value.canGoDown
          : canGoDown // ignore: cast_nullable_to_non_nullable
              as bool,
      pageSubset: pageSubset == freezed
          ? _value.pageSubset
          : pageSubset // ignore: cast_nullable_to_non_nullable
              as List<ViewRowModel>,
      isNameSelected: isNameSelected == freezed
          ? _value.isNameSelected
          : isNameSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isWaiting: isWaiting == freezed
          ? _value.isWaiting
          : isWaiting // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedName: selectedName == freezed
          ? _value.selectedName
          : selectedName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ViewModelCopyWith<$Res> implements $ViewModelCopyWith<$Res> {
  factory _$ViewModelCopyWith(
          _ViewModel value, $Res Function(_ViewModel) then) =
      __$ViewModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool canGoUp,
      bool canGoDown,
      List<ViewRowModel> pageSubset,
      bool isNameSelected,
      bool isWaiting,
      String? selectedName});
}

/// @nodoc
class __$ViewModelCopyWithImpl<$Res> extends _$ViewModelCopyWithImpl<$Res>
    implements _$ViewModelCopyWith<$Res> {
  __$ViewModelCopyWithImpl(_ViewModel _value, $Res Function(_ViewModel) _then)
      : super(_value, (v) => _then(v as _ViewModel));

  @override
  _ViewModel get _value => super._value as _ViewModel;

  @override
  $Res call({
    Object? canGoUp = freezed,
    Object? canGoDown = freezed,
    Object? pageSubset = freezed,
    Object? isNameSelected = freezed,
    Object? isWaiting = freezed,
    Object? selectedName = freezed,
  }) {
    return _then(_ViewModel(
      canGoUp: canGoUp == freezed
          ? _value.canGoUp
          : canGoUp // ignore: cast_nullable_to_non_nullable
              as bool,
      canGoDown: canGoDown == freezed
          ? _value.canGoDown
          : canGoDown // ignore: cast_nullable_to_non_nullable
              as bool,
      pageSubset: pageSubset == freezed
          ? _value.pageSubset
          : pageSubset // ignore: cast_nullable_to_non_nullable
              as List<ViewRowModel>,
      isNameSelected: isNameSelected == freezed
          ? _value.isNameSelected
          : isNameSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isWaiting: isWaiting == freezed
          ? _value.isWaiting
          : isWaiting // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedName: selectedName == freezed
          ? _value.selectedName
          : selectedName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ViewModel implements _ViewModel {
  _$_ViewModel(
      {required this.canGoUp,
      required this.canGoDown,
      required this.pageSubset,
      required this.isNameSelected,
      this.isWaiting = false,
      this.selectedName});

  @override
  final bool canGoUp;
  @override
  final bool canGoDown;
  @override
  final List<ViewRowModel> pageSubset;
  @override
  final bool isNameSelected;
  @JsonKey(defaultValue: false)
  @override
  final bool isWaiting;
  @override
  final String? selectedName;

  @override
  String toString() {
    return 'ViewModel(canGoUp: $canGoUp, canGoDown: $canGoDown, pageSubset: $pageSubset, isNameSelected: $isNameSelected, isWaiting: $isWaiting, selectedName: $selectedName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewModel &&
            (identical(other.canGoUp, canGoUp) ||
                const DeepCollectionEquality()
                    .equals(other.canGoUp, canGoUp)) &&
            (identical(other.canGoDown, canGoDown) ||
                const DeepCollectionEquality()
                    .equals(other.canGoDown, canGoDown)) &&
            (identical(other.pageSubset, pageSubset) ||
                const DeepCollectionEquality()
                    .equals(other.pageSubset, pageSubset)) &&
            (identical(other.isNameSelected, isNameSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isNameSelected, isNameSelected)) &&
            (identical(other.isWaiting, isWaiting) ||
                const DeepCollectionEquality()
                    .equals(other.isWaiting, isWaiting)) &&
            (identical(other.selectedName, selectedName) ||
                const DeepCollectionEquality()
                    .equals(other.selectedName, selectedName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(canGoUp) ^
      const DeepCollectionEquality().hash(canGoDown) ^
      const DeepCollectionEquality().hash(pageSubset) ^
      const DeepCollectionEquality().hash(isNameSelected) ^
      const DeepCollectionEquality().hash(isWaiting) ^
      const DeepCollectionEquality().hash(selectedName);

  @JsonKey(ignore: true)
  @override
  _$ViewModelCopyWith<_ViewModel> get copyWith =>
      __$ViewModelCopyWithImpl<_ViewModel>(this, _$identity);
}

abstract class _ViewModel implements ViewModel {
  factory _ViewModel(
      {required bool canGoUp,
      required bool canGoDown,
      required List<ViewRowModel> pageSubset,
      required bool isNameSelected,
      bool isWaiting,
      String? selectedName}) = _$_ViewModel;

  @override
  bool get canGoUp => throw _privateConstructorUsedError;
  @override
  bool get canGoDown => throw _privateConstructorUsedError;
  @override
  List<ViewRowModel> get pageSubset => throw _privateConstructorUsedError;
  @override
  bool get isNameSelected => throw _privateConstructorUsedError;
  @override
  bool get isWaiting => throw _privateConstructorUsedError;
  @override
  String? get selectedName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ViewModelCopyWith<_ViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
