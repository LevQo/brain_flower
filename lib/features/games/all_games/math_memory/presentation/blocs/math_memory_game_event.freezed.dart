// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'math_memory_game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MathMemoryGameEventTearOff {
  const _$MathMemoryGameEventTearOff();

  _InitStartScreen initStartScreen() {
    return const _InitStartScreen();
  }

  _ToAnswer toAnswer({@required int number}) {
    return _ToAnswer(
      number: number,
    );
  }
}

// ignore: unused_element
const $MathMemoryGameEvent = _$MathMemoryGameEventTearOff();

mixin _$MathMemoryGameEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initStartScreen(),
    @required Result toAnswer(int number),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result toAnswer(int number),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initStartScreen(_InitStartScreen value),
    @required Result toAnswer(_ToAnswer value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result toAnswer(_ToAnswer value),
    @required Result orElse(),
  });
}

abstract class $MathMemoryGameEventCopyWith<$Res> {
  factory $MathMemoryGameEventCopyWith(
          MathMemoryGameEvent value, $Res Function(MathMemoryGameEvent) then) =
      _$MathMemoryGameEventCopyWithImpl<$Res>;
}

class _$MathMemoryGameEventCopyWithImpl<$Res>
    implements $MathMemoryGameEventCopyWith<$Res> {
  _$MathMemoryGameEventCopyWithImpl(this._value, this._then);

  final MathMemoryGameEvent _value;
  // ignore: unused_field
  final $Res Function(MathMemoryGameEvent) _then;
}

abstract class _$InitStartScreenCopyWith<$Res> {
  factory _$InitStartScreenCopyWith(
          _InitStartScreen value, $Res Function(_InitStartScreen) then) =
      __$InitStartScreenCopyWithImpl<$Res>;
}

class __$InitStartScreenCopyWithImpl<$Res>
    extends _$MathMemoryGameEventCopyWithImpl<$Res>
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
    return 'MathMemoryGameEvent.initStartScreen()';
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
    @required Result toAnswer(int number),
  }) {
    assert(initStartScreen != null);
    assert(toAnswer != null);
    return initStartScreen();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result toAnswer(int number),
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
    @required Result toAnswer(_ToAnswer value),
  }) {
    assert(initStartScreen != null);
    assert(toAnswer != null);
    return initStartScreen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result toAnswer(_ToAnswer value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initStartScreen != null) {
      return initStartScreen(this);
    }
    return orElse();
  }
}

abstract class _InitStartScreen implements MathMemoryGameEvent {
  const factory _InitStartScreen() = _$_InitStartScreen;
}

abstract class _$ToAnswerCopyWith<$Res> {
  factory _$ToAnswerCopyWith(_ToAnswer value, $Res Function(_ToAnswer) then) =
      __$ToAnswerCopyWithImpl<$Res>;
  $Res call({int number});
}

class __$ToAnswerCopyWithImpl<$Res>
    extends _$MathMemoryGameEventCopyWithImpl<$Res>
    implements _$ToAnswerCopyWith<$Res> {
  __$ToAnswerCopyWithImpl(_ToAnswer _value, $Res Function(_ToAnswer) _then)
      : super(_value, (v) => _then(v as _ToAnswer));

  @override
  _ToAnswer get _value => super._value as _ToAnswer;

  @override
  $Res call({
    Object number = freezed,
  }) {
    return _then(_ToAnswer(
      number: number == freezed ? _value.number : number as int,
    ));
  }
}

class _$_ToAnswer implements _ToAnswer {
  const _$_ToAnswer({@required this.number}) : assert(number != null);

  @override
  final int number;

  @override
  String toString() {
    return 'MathMemoryGameEvent.toAnswer(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToAnswer &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @override
  _$ToAnswerCopyWith<_ToAnswer> get copyWith =>
      __$ToAnswerCopyWithImpl<_ToAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initStartScreen(),
    @required Result toAnswer(int number),
  }) {
    assert(initStartScreen != null);
    assert(toAnswer != null);
    return toAnswer(number);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result toAnswer(int number),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toAnswer != null) {
      return toAnswer(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initStartScreen(_InitStartScreen value),
    @required Result toAnswer(_ToAnswer value),
  }) {
    assert(initStartScreen != null);
    assert(toAnswer != null);
    return toAnswer(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result toAnswer(_ToAnswer value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toAnswer != null) {
      return toAnswer(this);
    }
    return orElse();
  }
}

abstract class _ToAnswer implements MathMemoryGameEvent {
  const factory _ToAnswer({@required int number}) = _$_ToAnswer;

  int get number;
  _$ToAnswerCopyWith<_ToAnswer> get copyWith;
}
