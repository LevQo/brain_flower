// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'more_less_game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MoreLessGameStateTearOff {
  const _$MoreLessGameStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  GeneratedNumbers generatedNumbers(
      {@required String firstNumber,
      @required String secondNumber,
      int scores,
      bool isCorrectAnswer}) {
    return GeneratedNumbers(
      firstNumber: firstNumber,
      secondNumber: secondNumber,
      scores: scores,
      isCorrectAnswer: isCorrectAnswer,
    );
  }
}

// ignore: unused_element
const $MoreLessGameState = _$MoreLessGameStateTearOff();

mixin _$MoreLessGameState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result generatedNumbers(String firstNumber, String secondNumber,
            int scores, bool isCorrectAnswer),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generatedNumbers(String firstNumber, String secondNumber, int scores,
        bool isCorrectAnswer),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result generatedNumbers(GeneratedNumbers value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result generatedNumbers(GeneratedNumbers value),
    @required Result orElse(),
  });
}

abstract class $MoreLessGameStateCopyWith<$Res> {
  factory $MoreLessGameStateCopyWith(
          MoreLessGameState value, $Res Function(MoreLessGameState) then) =
      _$MoreLessGameStateCopyWithImpl<$Res>;
}

class _$MoreLessGameStateCopyWithImpl<$Res>
    implements $MoreLessGameStateCopyWith<$Res> {
  _$MoreLessGameStateCopyWithImpl(this._value, this._then);

  final MoreLessGameState _value;
  // ignore: unused_field
  final $Res Function(MoreLessGameState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$MoreLessGameStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoreLessGameState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MoreLessGameState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result generatedNumbers(String firstNumber, String secondNumber,
            int scores, bool isCorrectAnswer),
  }) {
    assert(initial != null);
    assert(generatedNumbers != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generatedNumbers(String firstNumber, String secondNumber, int scores,
        bool isCorrectAnswer),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result generatedNumbers(GeneratedNumbers value),
  }) {
    assert(initial != null);
    assert(generatedNumbers != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result generatedNumbers(GeneratedNumbers value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MoreLessGameState {
  const factory _Initial() = _$_Initial;
}

abstract class $GeneratedNumbersCopyWith<$Res> {
  factory $GeneratedNumbersCopyWith(
          GeneratedNumbers value, $Res Function(GeneratedNumbers) then) =
      _$GeneratedNumbersCopyWithImpl<$Res>;
  $Res call(
      {String firstNumber,
      String secondNumber,
      int scores,
      bool isCorrectAnswer});
}

class _$GeneratedNumbersCopyWithImpl<$Res>
    extends _$MoreLessGameStateCopyWithImpl<$Res>
    implements $GeneratedNumbersCopyWith<$Res> {
  _$GeneratedNumbersCopyWithImpl(
      GeneratedNumbers _value, $Res Function(GeneratedNumbers) _then)
      : super(_value, (v) => _then(v as GeneratedNumbers));

  @override
  GeneratedNumbers get _value => super._value as GeneratedNumbers;

  @override
  $Res call({
    Object firstNumber = freezed,
    Object secondNumber = freezed,
    Object scores = freezed,
    Object isCorrectAnswer = freezed,
  }) {
    return _then(GeneratedNumbers(
      firstNumber:
          firstNumber == freezed ? _value.firstNumber : firstNumber as String,
      secondNumber: secondNumber == freezed
          ? _value.secondNumber
          : secondNumber as String,
      scores: scores == freezed ? _value.scores : scores as int,
      isCorrectAnswer: isCorrectAnswer == freezed
          ? _value.isCorrectAnswer
          : isCorrectAnswer as bool,
    ));
  }
}

class _$GeneratedNumbers
    with DiagnosticableTreeMixin
    implements GeneratedNumbers {
  const _$GeneratedNumbers(
      {@required this.firstNumber,
      @required this.secondNumber,
      this.scores,
      this.isCorrectAnswer})
      : assert(firstNumber != null),
        assert(secondNumber != null);

  @override
  final String firstNumber;
  @override
  final String secondNumber;
  @override
  final int scores;
  @override
  final bool isCorrectAnswer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoreLessGameState.generatedNumbers(firstNumber: $firstNumber, secondNumber: $secondNumber, scores: $scores, isCorrectAnswer: $isCorrectAnswer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MoreLessGameState.generatedNumbers'))
      ..add(DiagnosticsProperty('firstNumber', firstNumber))
      ..add(DiagnosticsProperty('secondNumber', secondNumber))
      ..add(DiagnosticsProperty('scores', scores))
      ..add(DiagnosticsProperty('isCorrectAnswer', isCorrectAnswer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeneratedNumbers &&
            (identical(other.firstNumber, firstNumber) ||
                const DeepCollectionEquality()
                    .equals(other.firstNumber, firstNumber)) &&
            (identical(other.secondNumber, secondNumber) ||
                const DeepCollectionEquality()
                    .equals(other.secondNumber, secondNumber)) &&
            (identical(other.scores, scores) ||
                const DeepCollectionEquality().equals(other.scores, scores)) &&
            (identical(other.isCorrectAnswer, isCorrectAnswer) ||
                const DeepCollectionEquality()
                    .equals(other.isCorrectAnswer, isCorrectAnswer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstNumber) ^
      const DeepCollectionEquality().hash(secondNumber) ^
      const DeepCollectionEquality().hash(scores) ^
      const DeepCollectionEquality().hash(isCorrectAnswer);

  @override
  $GeneratedNumbersCopyWith<GeneratedNumbers> get copyWith =>
      _$GeneratedNumbersCopyWithImpl<GeneratedNumbers>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result generatedNumbers(String firstNumber, String secondNumber,
            int scores, bool isCorrectAnswer),
  }) {
    assert(initial != null);
    assert(generatedNumbers != null);
    return generatedNumbers(firstNumber, secondNumber, scores, isCorrectAnswer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generatedNumbers(String firstNumber, String secondNumber, int scores,
        bool isCorrectAnswer),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generatedNumbers != null) {
      return generatedNumbers(
          firstNumber, secondNumber, scores, isCorrectAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result generatedNumbers(GeneratedNumbers value),
  }) {
    assert(initial != null);
    assert(generatedNumbers != null);
    return generatedNumbers(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result generatedNumbers(GeneratedNumbers value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generatedNumbers != null) {
      return generatedNumbers(this);
    }
    return orElse();
  }
}

abstract class GeneratedNumbers implements MoreLessGameState {
  const factory GeneratedNumbers(
      {@required String firstNumber,
      @required String secondNumber,
      int scores,
      bool isCorrectAnswer}) = _$GeneratedNumbers;

  String get firstNumber;
  String get secondNumber;
  int get scores;
  bool get isCorrectAnswer;
  $GeneratedNumbersCopyWith<GeneratedNumbers> get copyWith;
}
