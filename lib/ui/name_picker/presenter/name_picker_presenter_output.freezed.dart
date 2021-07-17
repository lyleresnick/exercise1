// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'name_picker_presenter_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NamePickerPresenterOutputTearOff {
  const _$NamePickerPresenterOutputTearOff();

  _Loading showLoading() {
    return const _Loading();
  }

  _PresentModel showModel(ViewModel model) {
    return _PresentModel(
      model,
    );
  }
}

/// @nodoc
const $NamePickerPresenterOutput = _$NamePickerPresenterOutputTearOff();

/// @nodoc
mixin _$NamePickerPresenterOutput {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoading,
    required TResult Function(ViewModel model) showModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showLoading,
    TResult Function(ViewModel model)? showModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoading,
    TResult Function(ViewModel model)? showModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) showLoading,
    required TResult Function(_PresentModel value) showModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? showLoading,
    TResult Function(_PresentModel value)? showModel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? showLoading,
    TResult Function(_PresentModel value)? showModel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamePickerPresenterOutputCopyWith<$Res> {
  factory $NamePickerPresenterOutputCopyWith(NamePickerPresenterOutput value,
          $Res Function(NamePickerPresenterOutput) then) =
      _$NamePickerPresenterOutputCopyWithImpl<$Res>;
}

/// @nodoc
class _$NamePickerPresenterOutputCopyWithImpl<$Res>
    implements $NamePickerPresenterOutputCopyWith<$Res> {
  _$NamePickerPresenterOutputCopyWithImpl(this._value, this._then);

  final NamePickerPresenterOutput _value;
  // ignore: unused_field
  final $Res Function(NamePickerPresenterOutput) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$NamePickerPresenterOutputCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'NamePickerPresenterOutput.showLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoading,
    required TResult Function(ViewModel model) showModel,
  }) {
    return showLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showLoading,
    TResult Function(ViewModel model)? showModel,
  }) {
    return showLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoading,
    TResult Function(ViewModel model)? showModel,
    required TResult orElse(),
  }) {
    if (showLoading != null) {
      return showLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) showLoading,
    required TResult Function(_PresentModel value) showModel,
  }) {
    return showLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? showLoading,
    TResult Function(_PresentModel value)? showModel,
  }) {
    return showLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? showLoading,
    TResult Function(_PresentModel value)? showModel,
    required TResult orElse(),
  }) {
    if (showLoading != null) {
      return showLoading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NamePickerPresenterOutput {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$PresentModelCopyWith<$Res> {
  factory _$PresentModelCopyWith(
          _PresentModel value, $Res Function(_PresentModel) then) =
      __$PresentModelCopyWithImpl<$Res>;
  $Res call({ViewModel model});
}

/// @nodoc
class __$PresentModelCopyWithImpl<$Res>
    extends _$NamePickerPresenterOutputCopyWithImpl<$Res>
    implements _$PresentModelCopyWith<$Res> {
  __$PresentModelCopyWithImpl(
      _PresentModel _value, $Res Function(_PresentModel) _then)
      : super(_value, (v) => _then(v as _PresentModel));

  @override
  _PresentModel get _value => super._value as _PresentModel;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_PresentModel(
      model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ViewModel,
    ));
  }
}

/// @nodoc

class _$_PresentModel implements _PresentModel {
  const _$_PresentModel(this.model);

  @override
  final ViewModel model;

  @override
  String toString() {
    return 'NamePickerPresenterOutput.showModel(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PresentModel &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(model);

  @JsonKey(ignore: true)
  @override
  _$PresentModelCopyWith<_PresentModel> get copyWith =>
      __$PresentModelCopyWithImpl<_PresentModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoading,
    required TResult Function(ViewModel model) showModel,
  }) {
    return showModel(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showLoading,
    TResult Function(ViewModel model)? showModel,
  }) {
    return showModel?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoading,
    TResult Function(ViewModel model)? showModel,
    required TResult orElse(),
  }) {
    if (showModel != null) {
      return showModel(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) showLoading,
    required TResult Function(_PresentModel value) showModel,
  }) {
    return showModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? showLoading,
    TResult Function(_PresentModel value)? showModel,
  }) {
    return showModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? showLoading,
    TResult Function(_PresentModel value)? showModel,
    required TResult orElse(),
  }) {
    if (showModel != null) {
      return showModel(this);
    }
    return orElse();
  }
}

abstract class _PresentModel implements NamePickerPresenterOutput {
  const factory _PresentModel(ViewModel model) = _$_PresentModel;

  ViewModel get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PresentModelCopyWith<_PresentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
