// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotes,
    required TResult Function(Note note) deleteNotes,
    required TResult Function() restoreNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNotes,
    TResult? Function(Note note)? deleteNotes,
    TResult? Function()? restoreNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNotes,
    TResult Function()? restoreNotes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNotes value) deleteNotes,
    required TResult Function(RestoreNotes value) restoreNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNotes value)? loadNotes,
    TResult? Function(DeleteNotes value)? deleteNotes,
    TResult? Function(RestoreNotes value)? restoreNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNotes value)? deleteNotes,
    TResult Function(RestoreNotes value)? restoreNotes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesEventCopyWith<$Res> {
  factory $NotesEventCopyWith(
          NotesEvent value, $Res Function(NotesEvent) then) =
      _$NotesEventCopyWithImpl<$Res, NotesEvent>;
}

/// @nodoc
class _$NotesEventCopyWithImpl<$Res, $Val extends NotesEvent>
    implements $NotesEventCopyWith<$Res> {
  _$NotesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadNotesImplCopyWith<$Res> {
  factory _$$LoadNotesImplCopyWith(
          _$LoadNotesImpl value, $Res Function(_$LoadNotesImpl) then) =
      __$$LoadNotesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadNotesImplCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$LoadNotesImpl>
    implements _$$LoadNotesImplCopyWith<$Res> {
  __$$LoadNotesImplCopyWithImpl(
      _$LoadNotesImpl _value, $Res Function(_$LoadNotesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadNotesImpl implements LoadNotes {
  const _$LoadNotesImpl();

  @override
  String toString() {
    return 'NotesEvent.loadNotes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadNotesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotes,
    required TResult Function(Note note) deleteNotes,
    required TResult Function() restoreNotes,
  }) {
    return loadNotes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNotes,
    TResult? Function(Note note)? deleteNotes,
    TResult? Function()? restoreNotes,
  }) {
    return loadNotes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNotes,
    TResult Function()? restoreNotes,
    required TResult orElse(),
  }) {
    if (loadNotes != null) {
      return loadNotes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNotes value) deleteNotes,
    required TResult Function(RestoreNotes value) restoreNotes,
  }) {
    return loadNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNotes value)? loadNotes,
    TResult? Function(DeleteNotes value)? deleteNotes,
    TResult? Function(RestoreNotes value)? restoreNotes,
  }) {
    return loadNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNotes value)? deleteNotes,
    TResult Function(RestoreNotes value)? restoreNotes,
    required TResult orElse(),
  }) {
    if (loadNotes != null) {
      return loadNotes(this);
    }
    return orElse();
  }
}

abstract class LoadNotes implements NotesEvent {
  const factory LoadNotes() = _$LoadNotesImpl;
}

/// @nodoc
abstract class _$$DeleteNotesImplCopyWith<$Res> {
  factory _$$DeleteNotesImplCopyWith(
          _$DeleteNotesImpl value, $Res Function(_$DeleteNotesImpl) then) =
      __$$DeleteNotesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$DeleteNotesImplCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$DeleteNotesImpl>
    implements _$$DeleteNotesImplCopyWith<$Res> {
  __$$DeleteNotesImplCopyWithImpl(
      _$DeleteNotesImpl _value, $Res Function(_$DeleteNotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$DeleteNotesImpl(
      null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$DeleteNotesImpl implements DeleteNotes {
  const _$DeleteNotesImpl(this.note);

  @override
  final Note note;

  @override
  String toString() {
    return 'NotesEvent.deleteNotes(note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNotesImpl &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNotesImplCopyWith<_$DeleteNotesImpl> get copyWith =>
      __$$DeleteNotesImplCopyWithImpl<_$DeleteNotesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotes,
    required TResult Function(Note note) deleteNotes,
    required TResult Function() restoreNotes,
  }) {
    return deleteNotes(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNotes,
    TResult? Function(Note note)? deleteNotes,
    TResult? Function()? restoreNotes,
  }) {
    return deleteNotes?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNotes,
    TResult Function()? restoreNotes,
    required TResult orElse(),
  }) {
    if (deleteNotes != null) {
      return deleteNotes(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNotes value) deleteNotes,
    required TResult Function(RestoreNotes value) restoreNotes,
  }) {
    return deleteNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNotes value)? loadNotes,
    TResult? Function(DeleteNotes value)? deleteNotes,
    TResult? Function(RestoreNotes value)? restoreNotes,
  }) {
    return deleteNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNotes value)? deleteNotes,
    TResult Function(RestoreNotes value)? restoreNotes,
    required TResult orElse(),
  }) {
    if (deleteNotes != null) {
      return deleteNotes(this);
    }
    return orElse();
  }
}

abstract class DeleteNotes implements NotesEvent {
  const factory DeleteNotes(final Note note) = _$DeleteNotesImpl;

  Note get note;
  @JsonKey(ignore: true)
  _$$DeleteNotesImplCopyWith<_$DeleteNotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestoreNotesImplCopyWith<$Res> {
  factory _$$RestoreNotesImplCopyWith(
          _$RestoreNotesImpl value, $Res Function(_$RestoreNotesImpl) then) =
      __$$RestoreNotesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestoreNotesImplCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$RestoreNotesImpl>
    implements _$$RestoreNotesImplCopyWith<$Res> {
  __$$RestoreNotesImplCopyWithImpl(
      _$RestoreNotesImpl _value, $Res Function(_$RestoreNotesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RestoreNotesImpl implements RestoreNotes {
  const _$RestoreNotesImpl();

  @override
  String toString() {
    return 'NotesEvent.restoreNotes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RestoreNotesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotes,
    required TResult Function(Note note) deleteNotes,
    required TResult Function() restoreNotes,
  }) {
    return restoreNotes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNotes,
    TResult? Function(Note note)? deleteNotes,
    TResult? Function()? restoreNotes,
  }) {
    return restoreNotes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNotes,
    TResult Function()? restoreNotes,
    required TResult orElse(),
  }) {
    if (restoreNotes != null) {
      return restoreNotes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNotes value) deleteNotes,
    required TResult Function(RestoreNotes value) restoreNotes,
  }) {
    return restoreNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNotes value)? loadNotes,
    TResult? Function(DeleteNotes value)? deleteNotes,
    TResult? Function(RestoreNotes value)? restoreNotes,
  }) {
    return restoreNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNotes value)? deleteNotes,
    TResult Function(RestoreNotes value)? restoreNotes,
    required TResult orElse(),
  }) {
    if (restoreNotes != null) {
      return restoreNotes(this);
    }
    return orElse();
  }
}

abstract class RestoreNotes implements NotesEvent {
  const factory RestoreNotes() = _$RestoreNotesImpl;
}
