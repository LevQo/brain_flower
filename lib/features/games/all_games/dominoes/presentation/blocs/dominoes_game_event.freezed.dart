// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'dominoes_game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DominoesGameEventTearOff {
  const _$DominoesGameEventTearOff();

  _InitStartScreen initStartScreen() {
    return const _InitStartScreen();
  }

  _SelectDomino selectDomino({@required bool isCorrectAnswer}) {
    return _SelectDomino(
      isCorrectAnswer: isCorrectAnswer,
    );
  }
}

// ignore: unused_element
const $DominoesGameEvent = _$DominoesGameEventTearOff();

mixin _$DominoesGameEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initStartScreen(),
    @required Result selectDomino(bool isCorrectAnswer),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result selectDomino(bool isCorrectAnswer),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initStartScreen(_InitStartScreen value),
    @required Result selectDomino(_SelectDomino value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result selectDomino(_SelectDomino value),
    @required Result orElse(),
  });
}

abstract class $DominoesGameEventCopyWith<$Res> {
  factory $DominoesGameEventCopyWith(
          DominoesGameEvent value, $Res Function(DominoesGameEvent) then) =
      _$DominoesGameEventCopyWithImpl<$Res>;
}

class _$DominoesGameEventCopyWithImpl<$Res>
    implements $DominoesGameEventCopyWith<$Res> {
  _$DominoesGameEventCopyWithImpl(this._value, this._then);

  final DominoesGameEvent _value;
  // ignore: unused_field
  final $Res Function(DominoesGameEvent) _then;
}

abstract class _$InitStartScreenCopyWith<$Res> {
  factory _$InitStartScreenCopyWith(
          _InitStartScreen value, $Res Function(_InitStartScreen) then) =
      __$InitStartScreenCopyWithImpl<$Res>;
}

class __$InitStartScreenCopyWithImpl<$Res>
    extends _$DominoesGameEventCopyWithImpl<$Res>
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
    return 'DominoesGameEvent.initStartScreen()';
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
    @required Result selectDomino(bool isCorrectAnswer),
  }) {
    assert(initStartScreen != null);
    assert(selectDomino != null);
    return initStartScreen();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result selectDomino(bool isCorrectAnswer),
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
    @required Result selectDomino(_SelectDomino value),
  }) {
    assert(initStartScreen != null);
    assert(selectDomino != null);
    return initStartScreen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result selectDomino(_SelectDomino value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initStartScreen != null) {
      return initStartScreen(this);
    }
    return orElse();
  }
}

abstract class _InitStartScreen implements DominoesGameEvent {
  const factory _InitStartScreen() = _$_InitStartScreen;
}

abstract class _$SelectDominoCopyWith<$Res> {
  factory _$SelectDominoCopyWith(
          _SelectDomino value, $Res Function(_SelectDomino) then) =
      __$SelectDominoCopyWithImpl<$Res>;
  $Res call({bool isCorrectAnswer});
}

class __$SelectDominoCopyWithImpl<$Res>
    extends _$DominoesGameEventCopyWithImpl<$Res>
    implements _$SelectDominoCopyWith<$Res> {
  __$SelectDominoCopyWithImpl(
      _SelectDomino _value, $Res Function(_SelectDomino) _then)
      : super(_value, (v) => _then(v as _SelectDomino));

  @override
  _SelectDomino get _value => super._value as _SelectDomino;

  @override
  $Res call({
    Object isCorrectAnswer = freezed,
  }) {
    return _then(_SelectDomino(
      isCorrectAnswer: isCorrectAnswer == freezed
          ? _value.isCorrectAnswer
          : isCorrectAnswer as bool,
    ));
  }
}

class _$_SelectDomino implements _SelectDomino {
  const _$_SelectDomino({@required this.isCorrectAnswer})
      : assert(isCorrectAnswer != null);

  @override
  final bool isCorrectAnswer;

  @override
  String toString() {
    return 'DominoesGameEvent.selectDomino(isCorrectAnswer: $isCorrectAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectDomino &&
            (identical(other.isCorrectAnswer, isCorrectAnswer) ||
                const DeepCollectionEquality()
                    .equals(other.isCorrectAnswer, isCorrectAnswer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isCorrectAnswer);

  @override
  _$SelectDominoCopyWith<_SelectDomino> get copyWith =>
      __$SelectDominoCopyWithImpl<_SelectDomino>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initStartScreen(),
    @required Result selectDomino(bool isCorrectAnswer),
  }) {
    assert(initStartScreen != null);
    assert(selectDomino != null);
    return selectDomino(isCorrectAnswer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result selectDomino(bool isCorrectAnswer),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectDomino != null) {
      return selectDomino(isCorrectAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initStartScreen(_InitStartScreen value),
    @required Result selectDomino(_SelectDomino value),
  }) {
    assert(initStartScreen != null);
    assert(selectDomino != null);
    return selectDomino(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result selectDomino(_SelectDomino value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectDomino != null) {
      return selectDomino(this);
    }
    return orElse();
  }
}

abstract class _SelectDomino implements DominoesGameEvent {
  const factory _SelectDomino({@required bool isCorrectAnswer}) =
      _$_SelectDomino;

  bool get isCorrectAnswer;
  _$SelectDominoCopyWith<_SelectDomino> get copyWith;
}
