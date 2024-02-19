// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteOrder {
  OrderType get orderType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType orderType) title,
    required TResult Function(OrderType orderType) date,
    required TResult Function(OrderType orderType) color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType orderType)? title,
    TResult? Function(OrderType orderType)? date,
    TResult? Function(OrderType orderType)? color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? date,
    TResult Function(OrderType orderType)? color,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteOrderTitle value) title,
    required TResult Function(NoteOrderDate value) date,
    required TResult Function(NoteOrderColor value) color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteOrderTitle value)? title,
    TResult? Function(NoteOrderDate value)? date,
    TResult? Function(NoteOrderColor value)? color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteOrderTitle value)? title,
    TResult Function(NoteOrderDate value)? date,
    TResult Function(NoteOrderColor value)? color,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteOrderCopyWith<NoteOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteOrderCopyWith<$Res> {
  factory $NoteOrderCopyWith(NoteOrder value, $Res Function(NoteOrder) then) =
      _$NoteOrderCopyWithImpl<$Res, NoteOrder>;
  @useResult
  $Res call({OrderType orderType});

  $OrderTypeCopyWith<$Res> get orderType;
}

/// @nodoc
class _$NoteOrderCopyWithImpl<$Res, $Val extends NoteOrder>
    implements $NoteOrderCopyWith<$Res> {
  _$NoteOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = null,
  }) {
    return _then(_value.copyWith(
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderTypeCopyWith<$Res> get orderType {
    return $OrderTypeCopyWith<$Res>(_value.orderType, (value) {
      return _then(_value.copyWith(orderType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoteOrderTitleImplCopyWith<$Res>
    implements $NoteOrderCopyWith<$Res> {
  factory _$$NoteOrderTitleImplCopyWith(_$NoteOrderTitleImpl value,
          $Res Function(_$NoteOrderTitleImpl) then) =
      __$$NoteOrderTitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderType orderType});

  @override
  $OrderTypeCopyWith<$Res> get orderType;
}

/// @nodoc
class __$$NoteOrderTitleImplCopyWithImpl<$Res>
    extends _$NoteOrderCopyWithImpl<$Res, _$NoteOrderTitleImpl>
    implements _$$NoteOrderTitleImplCopyWith<$Res> {
  __$$NoteOrderTitleImplCopyWithImpl(
      _$NoteOrderTitleImpl _value, $Res Function(_$NoteOrderTitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = null,
  }) {
    return _then(_$NoteOrderTitleImpl(
      null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType,
    ));
  }
}

/// @nodoc

class _$NoteOrderTitleImpl implements NoteOrderTitle {
  const _$NoteOrderTitleImpl(this.orderType);

  @override
  final OrderType orderType;

  @override
  String toString() {
    return 'NoteOrder.title(orderType: $orderType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteOrderTitleImpl &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteOrderTitleImplCopyWith<_$NoteOrderTitleImpl> get copyWith =>
      __$$NoteOrderTitleImplCopyWithImpl<_$NoteOrderTitleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType orderType) title,
    required TResult Function(OrderType orderType) date,
    required TResult Function(OrderType orderType) color,
  }) {
    return title(orderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType orderType)? title,
    TResult? Function(OrderType orderType)? date,
    TResult? Function(OrderType orderType)? color,
  }) {
    return title?.call(orderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? date,
    TResult Function(OrderType orderType)? color,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteOrderTitle value) title,
    required TResult Function(NoteOrderDate value) date,
    required TResult Function(NoteOrderColor value) color,
  }) {
    return title(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteOrderTitle value)? title,
    TResult? Function(NoteOrderDate value)? date,
    TResult? Function(NoteOrderColor value)? color,
  }) {
    return title?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteOrderTitle value)? title,
    TResult Function(NoteOrderDate value)? date,
    TResult Function(NoteOrderColor value)? color,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(this);
    }
    return orElse();
  }
}

abstract class NoteOrderTitle implements NoteOrder {
  const factory NoteOrderTitle(final OrderType orderType) =
      _$NoteOrderTitleImpl;

  @override
  OrderType get orderType;
  @override
  @JsonKey(ignore: true)
  _$$NoteOrderTitleImplCopyWith<_$NoteOrderTitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteOrderDateImplCopyWith<$Res>
    implements $NoteOrderCopyWith<$Res> {
  factory _$$NoteOrderDateImplCopyWith(
          _$NoteOrderDateImpl value, $Res Function(_$NoteOrderDateImpl) then) =
      __$$NoteOrderDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderType orderType});

  @override
  $OrderTypeCopyWith<$Res> get orderType;
}

/// @nodoc
class __$$NoteOrderDateImplCopyWithImpl<$Res>
    extends _$NoteOrderCopyWithImpl<$Res, _$NoteOrderDateImpl>
    implements _$$NoteOrderDateImplCopyWith<$Res> {
  __$$NoteOrderDateImplCopyWithImpl(
      _$NoteOrderDateImpl _value, $Res Function(_$NoteOrderDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = null,
  }) {
    return _then(_$NoteOrderDateImpl(
      null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType,
    ));
  }
}

/// @nodoc

class _$NoteOrderDateImpl implements NoteOrderDate {
  const _$NoteOrderDateImpl(this.orderType);

  @override
  final OrderType orderType;

  @override
  String toString() {
    return 'NoteOrder.date(orderType: $orderType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteOrderDateImpl &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteOrderDateImplCopyWith<_$NoteOrderDateImpl> get copyWith =>
      __$$NoteOrderDateImplCopyWithImpl<_$NoteOrderDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType orderType) title,
    required TResult Function(OrderType orderType) date,
    required TResult Function(OrderType orderType) color,
  }) {
    return date(orderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType orderType)? title,
    TResult? Function(OrderType orderType)? date,
    TResult? Function(OrderType orderType)? color,
  }) {
    return date?.call(orderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? date,
    TResult Function(OrderType orderType)? color,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteOrderTitle value) title,
    required TResult Function(NoteOrderDate value) date,
    required TResult Function(NoteOrderColor value) color,
  }) {
    return date(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteOrderTitle value)? title,
    TResult? Function(NoteOrderDate value)? date,
    TResult? Function(NoteOrderColor value)? color,
  }) {
    return date?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteOrderTitle value)? title,
    TResult Function(NoteOrderDate value)? date,
    TResult Function(NoteOrderColor value)? color,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this);
    }
    return orElse();
  }
}

abstract class NoteOrderDate implements NoteOrder {
  const factory NoteOrderDate(final OrderType orderType) = _$NoteOrderDateImpl;

  @override
  OrderType get orderType;
  @override
  @JsonKey(ignore: true)
  _$$NoteOrderDateImplCopyWith<_$NoteOrderDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoteOrderColorImplCopyWith<$Res>
    implements $NoteOrderCopyWith<$Res> {
  factory _$$NoteOrderColorImplCopyWith(_$NoteOrderColorImpl value,
          $Res Function(_$NoteOrderColorImpl) then) =
      __$$NoteOrderColorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderType orderType});

  @override
  $OrderTypeCopyWith<$Res> get orderType;
}

/// @nodoc
class __$$NoteOrderColorImplCopyWithImpl<$Res>
    extends _$NoteOrderCopyWithImpl<$Res, _$NoteOrderColorImpl>
    implements _$$NoteOrderColorImplCopyWith<$Res> {
  __$$NoteOrderColorImplCopyWithImpl(
      _$NoteOrderColorImpl _value, $Res Function(_$NoteOrderColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = null,
  }) {
    return _then(_$NoteOrderColorImpl(
      null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType,
    ));
  }
}

/// @nodoc

class _$NoteOrderColorImpl implements NoteOrderColor {
  const _$NoteOrderColorImpl(this.orderType);

  @override
  final OrderType orderType;

  @override
  String toString() {
    return 'NoteOrder.color(orderType: $orderType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteOrderColorImpl &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteOrderColorImplCopyWith<_$NoteOrderColorImpl> get copyWith =>
      __$$NoteOrderColorImplCopyWithImpl<_$NoteOrderColorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType orderType) title,
    required TResult Function(OrderType orderType) date,
    required TResult Function(OrderType orderType) color,
  }) {
    return color(orderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderType orderType)? title,
    TResult? Function(OrderType orderType)? date,
    TResult? Function(OrderType orderType)? color,
  }) {
    return color?.call(orderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? date,
    TResult Function(OrderType orderType)? color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteOrderTitle value) title,
    required TResult Function(NoteOrderDate value) date,
    required TResult Function(NoteOrderColor value) color,
  }) {
    return color(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoteOrderTitle value)? title,
    TResult? Function(NoteOrderDate value)? date,
    TResult? Function(NoteOrderColor value)? color,
  }) {
    return color?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteOrderTitle value)? title,
    TResult Function(NoteOrderDate value)? date,
    TResult Function(NoteOrderColor value)? color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(this);
    }
    return orElse();
  }
}

abstract class NoteOrderColor implements NoteOrder {
  const factory NoteOrderColor(final OrderType orderType) =
      _$NoteOrderColorImpl;

  @override
  OrderType get orderType;
  @override
  @JsonKey(ignore: true)
  _$$NoteOrderColorImplCopyWith<_$NoteOrderColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
