// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'find_object_game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FindObjectGameEventTearOff {
  const _$FindObjectGameEventTearOff();

  _InitStartScreen initStartScreen() {
    return const _InitStartScreen();
  }

  _SelectObject selectObject({@required FindObjectModel object}) {
    return _SelectObject(
      object: object,
    );
  }
}

// ignore: unused_element
const $FindObjectGameEvent = _$FindObjectGameEventTearOff();

mixin _$FindObjectGameEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initStartScreen(),
    @required Result selectObject(FindObjectModel object),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result selectObject(FindObjectModel object),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initStartScreen(_InitStartScreen value),
    @required Result selectObject(_SelectObject value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result selectObject(_SelectObject value),
    @required Result orElse(),
  });
}

abstract class $FindObjectGameEventCopyWith<$Res> {
  factory $FindObjectGameEventCopyWith(
          FindObjectGameEvent value, $Res Function(FindObjectGameEvent) then) =
      _$FindObjectGameEventCopyWithImpl<$Res>;
}

class _$FindObjectGameEventCopyWithImpl<$Res>
    implements $FindObjectGameEventCopyWith<$Res> {
  _$FindObjectGameEventCopyWithImpl(this._value, this._then);

  final FindObjectGameEvent _value;
  // ignore: unused_field
  final $Res Function(FindObjectGameEvent) _then;
}

abstract class _$InitStartScreenCopyWith<$Res> {
  factory _$InitStartScreenCopyWith(
          _InitStartScreen value, $Res Function(_InitStartScreen) then) =
      __$InitStartScreenCopyWithImpl<$Res>;
}

class __$InitStartScreenCopyWithImpl<$Res>
    extends _$FindObjectGameEventCopyWithImpl<$Res>
    implements _$InitStartScreenCopyWith<$Res> {
  __$InitStartScreenCopyWithImpl(
      _InitStartScreen _value, $Res Function(_InitStartScreen) _then)
      : super(_value, (v) => _then(v as _InitStartScreen));

  @override
  _InitStartScreen get _value => super._value as _InitStartScreen;
}

class _$_InitStartScreen implements _InitStartScreen {
  const _$_InitStartScreen();

  @override
  String toString() {
    return 'FindObjectGameEvent.initStartScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitStartScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initStartScreen(),
    @required Result selectObject(FindObjectModel object),
  }) {
    assert(initStartScreen != null);
    assert(selectObject != null);
    return initStartScreen();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result selectObject(FindObjectModel object),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initStartScreen != null) {
      return initStartScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initStartScreen(_InitStartScreen value),
    @required Result selectObject(_SelectObject value),
  }) {
    assert(initStartScreen != null);
    assert(selectObject != null);
    return initStartScreen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result selectObject(_SelectObject value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initStartScreen != null) {
      return initStartScreen(this);
    }
    return orElse();
  }
}

abstract class _InitStartScreen implements FindObjectGameEvent {
  const factory _InitStartScreen() = _$_InitStartScreen;
}

abstract class _$SelectObjectCopyWith<$Res> {
  factory _$SelectObjectCopyWith(
          _SelectObject value, $Res Function(_SelectObject) then) =
      __$SelectObjectCopyWithImpl<$Res>;
  $Res call({FindObjectModel object});
}

class __$SelectObjectCopyWithImpl<$Res>
    extends _$FindObjectGameEventCopyWithImpl<$Res>
    implements _$SelectObjectCopyWith<$Res> {
  __$SelectObjectCopyWithImpl(
      _SelectObject _value, $Res Function(_SelectObject) _then)
      : super(_value, (v) => _then(v as _SelectObject));

  @override
  _SelectObject get _value => super._value as _SelectObject;

  @override
  $Res call({
    Object object = freezed,
  }) {
    return _then(_SelectObject(
      object: object == freezed ? _value.object : object as FindObjectModel,
    ));
  }
}

class _$_SelectObject implements _SelectObject {
  const _$_SelectObject({@required this.object}) : assert(object != null);

  @override
  final FindObjectModel object;

  @override
  String toString() {
    return 'FindObjectGameEvent.selectObject(object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectObject &&
            (identical(other.object, object) ||
                const DeepCollectionEquality().equals(other.object, object)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(object);

  @override
  _$SelectObjectCopyWith<_SelectObject> get copyWith =>
      __$SelectObjectCopyWithImpl<_SelectObject>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initStartScreen(),
    @required Result selectObject(FindObjectModel object),
  }) {
    assert(initStartScreen != null);
    assert(selectObject != null);
    return selectObject(object);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result selectObject(FindObjectModel object),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectObject != null) {
      return selectObject(object);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initStartScreen(_InitStartScreen value),
    @required Result selectObject(_SelectObject value),
  }) {
    assert(initStartScreen != null);
    assert(selectObject != null);
    return selectObject(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result selectObject(_SelectObject value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectObject != null) {
      return selectObject(this);
    }
    return orElse();
  }
}

abstract class _SelectObject implements FindObjectGameEvent {
  const factory _SelectObject({@required FindObjectModel object}) =
      _$_SelectObject;

  FindObjectModel get object;
  _$SelectObjectCopyWith<_SelectObject> get copyWith;
}
