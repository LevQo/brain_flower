// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'find_number_game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FindNumberGameEventTearOff {
  const _$FindNumberGameEventTearOff();

  _InitStartScreen initStartScreen() {
    return const _InitStartScreen();
  }

  _SelectNumber selectNumber({@required int number}) {
    return _SelectNumber(
      number: number,
    );
  }
}

// ignore: unused_element
const $FindNumberGameEvent = _$FindNumberGameEventTearOff();

mixin _$FindNumberGameEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initStartScreen(),
    @required Result selectNumber(int number),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result selectNumber(int number),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initStartScreen(_InitStartScreen value),
    @required Result selectNumber(_SelectNumber value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result selectNumber(_SelectNumber value),
    @required Result orElse(),
  });
}

abstract class $FindNumberGameEventCopyWith<$Res> {
  factory $FindNumberGameEventCopyWith(
          FindNumberGameEvent value, $Res Function(FindNumberGameEvent) then) =
      _$FindNumberGameEventCopyWithImpl<$Res>;
}

class _$FindNumberGameEventCopyWithImpl<$Res>
    implements $FindNumberGameEventCopyWith<$Res> {
  _$FindNumberGameEventCopyWithImpl(this._value, this._then);

  final FindNumberGameEvent _value;
  // ignore: unused_field
  final $Res Function(FindNumberGameEvent) _then;
}

abstract class _$InitStartScreenCopyWith<$Res> {
  factory _$InitStartScreenCopyWith(
          _InitStartScreen value, $Res Function(_InitStartScreen) then) =
      __$InitStartScreenCopyWithImpl<$Res>;
}

class __$InitStartScreenCopyWithImpl<$Res>
    extends _$FindNumberGameEventCopyWithImpl<$Res>
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
    return 'FindNumberGameEvent.initStartScreen()';
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
    @required Result selectNumber(int number),
  }) {
    assert(initStartScreen != null);
    assert(selectNumber != null);
    return initStartScreen();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result selectNumber(int number),
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
    @required Result selectNumber(_SelectNumber value),
  }) {
    assert(initStartScreen != null);
    assert(selectNumber != null);
    return initStartScreen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result selectNumber(_SelectNumber value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initStartScreen != null) {
      return initStartScreen(this);
    }
    return orElse();
  }
}

abstract class _InitStartScreen implements FindNumberGameEvent {
  const factory _InitStartScreen() = _$_InitStartScreen;
}

abstract class _$SelectNumberCopyWith<$Res> {
  factory _$SelectNumberCopyWith(
          _SelectNumber value, $Res Function(_SelectNumber) then) =
      __$SelectNumberCopyWithImpl<$Res>;
  $Res call({int number});
}

class __$SelectNumberCopyWithImpl<$Res>
    extends _$FindNumberGameEventCopyWithImpl<$Res>
    implements _$SelectNumberCopyWith<$Res> {
  __$SelectNumberCopyWithImpl(
      _SelectNumber _value, $Res Function(_SelectNumber) _then)
      : super(_value, (v) => _then(v as _SelectNumber));

  @override
  _SelectNumber get _value => super._value as _SelectNumber;

  @override
  $Res call({
    Object number = freezed,
  }) {
    return _then(_SelectNumber(
      number: number == freezed ? _value.number : number as int,
    ));
  }
}

class _$_SelectNumber implements _SelectNumber {
  const _$_SelectNumber({@required this.number}) : assert(number != null);

  @override
  final int number;

  @override
  String toString() {
    return 'FindNumberGameEvent.selectNumber(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectNumber &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @override
  _$SelectNumberCopyWith<_SelectNumber> get copyWith =>
      __$SelectNumberCopyWithImpl<_SelectNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initStartScreen(),
    @required Result selectNumber(int number),
  }) {
    assert(initStartScreen != null);
    assert(selectNumber != null);
    return selectNumber(number);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result selectNumber(int number),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectNumber != null) {
      return selectNumber(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initStartScreen(_InitStartScreen value),
    @required Result selectNumber(_SelectNumber value),
  }) {
    assert(initStartScreen != null);
    assert(selectNumber != null);
    return selectNumber(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result selectNumber(_SelectNumber value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectNumber != null) {
      return selectNumber(this);
    }
    return orElse();
  }
}

abstract class _SelectNumber implements FindNumberGameEvent {
  const factory _SelectNumber({@required int number}) = _$_SelectNumber;

  int get number;
  _$SelectNumberCopyWith<_SelectNumber> get copyWith;
}
