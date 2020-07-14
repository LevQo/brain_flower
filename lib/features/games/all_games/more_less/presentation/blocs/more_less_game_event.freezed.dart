// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'more_less_game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MoreLessGameEventTearOff {
  const _$MoreLessGameEventTearOff();

  _InitStartScreen initStartScreen() {
    return const _InitStartScreen();
  }

  _SelectAnswer selectAnswer({@required AnswerTypesMoreLess answerType}) {
    return _SelectAnswer(
      answerType: answerType,
    );
  }
}

// ignore: unused_element
const $MoreLessGameEvent = _$MoreLessGameEventTearOff();

mixin _$MoreLessGameEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initStartScreen(),
    @required Result selectAnswer(AnswerTypesMoreLess answerType),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result selectAnswer(AnswerTypesMoreLess answerType),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initStartScreen(_InitStartScreen value),
    @required Result selectAnswer(_SelectAnswer value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result selectAnswer(_SelectAnswer value),
    @required Result orElse(),
  });
}

abstract class $MoreLessGameEventCopyWith<$Res> {
  factory $MoreLessGameEventCopyWith(
          MoreLessGameEvent value, $Res Function(MoreLessGameEvent) then) =
      _$MoreLessGameEventCopyWithImpl<$Res>;
}

class _$MoreLessGameEventCopyWithImpl<$Res>
    implements $MoreLessGameEventCopyWith<$Res> {
  _$MoreLessGameEventCopyWithImpl(this._value, this._then);

  final MoreLessGameEvent _value;
  // ignore: unused_field
  final $Res Function(MoreLessGameEvent) _then;
}

abstract class _$InitStartScreenCopyWith<$Res> {
  factory _$InitStartScreenCopyWith(
          _InitStartScreen value, $Res Function(_InitStartScreen) then) =
      __$InitStartScreenCopyWithImpl<$Res>;
}

class __$InitStartScreenCopyWithImpl<$Res>
    extends _$MoreLessGameEventCopyWithImpl<$Res>
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
    return 'MoreLessGameEvent.initStartScreen()';
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
    @required Result selectAnswer(AnswerTypesMoreLess answerType),
  }) {
    assert(initStartScreen != null);
    assert(selectAnswer != null);
    return initStartScreen();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result selectAnswer(AnswerTypesMoreLess answerType),
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
    @required Result selectAnswer(_SelectAnswer value),
  }) {
    assert(initStartScreen != null);
    assert(selectAnswer != null);
    return initStartScreen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result selectAnswer(_SelectAnswer value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initStartScreen != null) {
      return initStartScreen(this);
    }
    return orElse();
  }
}

abstract class _InitStartScreen implements MoreLessGameEvent {
  const factory _InitStartScreen() = _$_InitStartScreen;
}

abstract class _$SelectAnswerCopyWith<$Res> {
  factory _$SelectAnswerCopyWith(
          _SelectAnswer value, $Res Function(_SelectAnswer) then) =
      __$SelectAnswerCopyWithImpl<$Res>;
  $Res call({AnswerTypesMoreLess answerType});
}

class __$SelectAnswerCopyWithImpl<$Res>
    extends _$MoreLessGameEventCopyWithImpl<$Res>
    implements _$SelectAnswerCopyWith<$Res> {
  __$SelectAnswerCopyWithImpl(
      _SelectAnswer _value, $Res Function(_SelectAnswer) _then)
      : super(_value, (v) => _then(v as _SelectAnswer));

  @override
  _SelectAnswer get _value => super._value as _SelectAnswer;

  @override
  $Res call({
    Object answerType = freezed,
  }) {
    return _then(_SelectAnswer(
      answerType: answerType == freezed
          ? _value.answerType
          : answerType as AnswerTypesMoreLess,
    ));
  }
}

class _$_SelectAnswer implements _SelectAnswer {
  const _$_SelectAnswer({@required this.answerType})
      : assert(answerType != null);

  @override
  final AnswerTypesMoreLess answerType;

  @override
  String toString() {
    return 'MoreLessGameEvent.selectAnswer(answerType: $answerType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectAnswer &&
            (identical(other.answerType, answerType) ||
                const DeepCollectionEquality()
                    .equals(other.answerType, answerType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(answerType);

  @override
  _$SelectAnswerCopyWith<_SelectAnswer> get copyWith =>
      __$SelectAnswerCopyWithImpl<_SelectAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initStartScreen(),
    @required Result selectAnswer(AnswerTypesMoreLess answerType),
  }) {
    assert(initStartScreen != null);
    assert(selectAnswer != null);
    return selectAnswer(answerType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result selectAnswer(AnswerTypesMoreLess answerType),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectAnswer != null) {
      return selectAnswer(answerType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initStartScreen(_InitStartScreen value),
    @required Result selectAnswer(_SelectAnswer value),
  }) {
    assert(initStartScreen != null);
    assert(selectAnswer != null);
    return selectAnswer(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result selectAnswer(_SelectAnswer value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectAnswer != null) {
      return selectAnswer(this);
    }
    return orElse();
  }
}

abstract class _SelectAnswer implements MoreLessGameEvent {
  const factory _SelectAnswer({@required AnswerTypesMoreLess answerType}) =
      _$_SelectAnswer;

  AnswerTypesMoreLess get answerType;
  _$SelectAnswerCopyWith<_SelectAnswer> get copyWith;
}
