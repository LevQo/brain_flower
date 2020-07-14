// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'math_memory_game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MathMemoryGameStateTearOff {
  const _$MathMemoryGameStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  GeneratedMathCards generatedMathCards(
      {@required MathGameCardModel currentNumber,
      @required MathGameCardModel nextNumber,
      int correctNumber,
      int scores,
      bool isCorrectAnswer}) {
    return GeneratedMathCards(
      currentNumber: currentNumber,
      nextNumber: nextNumber,
      correctNumber: correctNumber,
      scores: scores,
      isCorrectAnswer: isCorrectAnswer,
    );
  }
}

// ignore: unused_element
const $MathMemoryGameState = _$MathMemoryGameStateTearOff();

mixin _$MathMemoryGameState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result generatedMathCards(
            MathGameCardModel currentNumber,
            MathGameCardModel nextNumber,
            int correctNumber,
            int scores,
            bool isCorrectAnswer),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generatedMathCards(
        MathGameCardModel currentNumber,
        MathGameCardModel nextNumber,
        int correctNumber,
        int scores,
        bool isCorrectAnswer),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result generatedMathCards(GeneratedMathCards value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result generatedMathCards(GeneratedMathCards value),
    @required Result orElse(),
  });
}

abstract class $MathMemoryGameStateCopyWith<$Res> {
  factory $MathMemoryGameStateCopyWith(
          MathMemoryGameState value, $Res Function(MathMemoryGameState) then) =
      _$MathMemoryGameStateCopyWithImpl<$Res>;
}

class _$MathMemoryGameStateCopyWithImpl<$Res>
    implements $MathMemoryGameStateCopyWith<$Res> {
  _$MathMemoryGameStateCopyWithImpl(this._value, this._then);

  final MathMemoryGameState _value;
  // ignore: unused_field
  final $Res Function(MathMemoryGameState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$MathMemoryGameStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MathMemoryGameState.initial()';
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
        Result generatedMathCards(
            MathGameCardModel currentNumber,
            MathGameCardModel nextNumber,
            int correctNumber,
            int scores,
            bool isCorrectAnswer),
  }) {
    assert(initial != null);
    assert(generatedMathCards != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generatedMathCards(
        MathGameCardModel currentNumber,
        MathGameCardModel nextNumber,
        int correctNumber,
        int scores,
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
    @required Result generatedMathCards(GeneratedMathCards value),
  }) {
    assert(initial != null);
    assert(generatedMathCards != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result generatedMathCards(GeneratedMathCards value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MathMemoryGameState {
  const factory _Initial() = _$_Initial;
}

abstract class $GeneratedMathCardsCopyWith<$Res> {
  factory $GeneratedMathCardsCopyWith(
          GeneratedMathCards value, $Res Function(GeneratedMathCards) then) =
      _$GeneratedMathCardsCopyWithImpl<$Res>;
  $Res call(
      {MathGameCardModel currentNumber,
      MathGameCardModel nextNumber,
      int correctNumber,
      int scores,
      bool isCorrectAnswer});
}

class _$GeneratedMathCardsCopyWithImpl<$Res>
    extends _$MathMemoryGameStateCopyWithImpl<$Res>
    implements $GeneratedMathCardsCopyWith<$Res> {
  _$GeneratedMathCardsCopyWithImpl(
      GeneratedMathCards _value, $Res Function(GeneratedMathCards) _then)
      : super(_value, (v) => _then(v as GeneratedMathCards));

  @override
  GeneratedMathCards get _value => super._value as GeneratedMathCards;

  @override
  $Res call({
    Object currentNumber = freezed,
    Object nextNumber = freezed,
    Object correctNumber = freezed,
    Object scores = freezed,
    Object isCorrectAnswer = freezed,
  }) {
    return _then(GeneratedMathCards(
      currentNumber: currentNumber == freezed
          ? _value.currentNumber
          : currentNumber as MathGameCardModel,
      nextNumber: nextNumber == freezed
          ? _value.nextNumber
          : nextNumber as MathGameCardModel,
      correctNumber: correctNumber == freezed
          ? _value.correctNumber
          : correctNumber as int,
      scores: scores == freezed ? _value.scores : scores as int,
      isCorrectAnswer: isCorrectAnswer == freezed
          ? _value.isCorrectAnswer
          : isCorrectAnswer as bool,
    ));
  }
}

class _$GeneratedMathCards implements GeneratedMathCards {
  const _$GeneratedMathCards(
      {@required this.currentNumber,
      @required this.nextNumber,
      this.correctNumber,
      this.scores,
      this.isCorrectAnswer})
      : assert(currentNumber != null),
        assert(nextNumber != null);

  @override
  final MathGameCardModel currentNumber;
  @override
  final MathGameCardModel nextNumber;
  @override
  final int correctNumber;
  @override
  final int scores;
  @override
  final bool isCorrectAnswer;

  @override
  String toString() {
    return 'MathMemoryGameState.generatedMathCards(currentNumber: $currentNumber, nextNumber: $nextNumber, correctNumber: $correctNumber, scores: $scores, isCorrectAnswer: $isCorrectAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeneratedMathCards &&
            (identical(other.currentNumber, currentNumber) ||
                const DeepCollectionEquality()
                    .equals(other.currentNumber, currentNumber)) &&
            (identical(other.nextNumber, nextNumber) ||
                const DeepCollectionEquality()
                    .equals(other.nextNumber, nextNumber)) &&
            (identical(other.correctNumber, correctNumber) ||
                const DeepCollectionEquality()
                    .equals(other.correctNumber, correctNumber)) &&
            (identical(other.scores, scores) ||
                const DeepCollectionEquality().equals(other.scores, scores)) &&
            (identical(other.isCorrectAnswer, isCorrectAnswer) ||
                const DeepCollectionEquality()
                    .equals(other.isCorrectAnswer, isCorrectAnswer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentNumber) ^
      const DeepCollectionEquality().hash(nextNumber) ^
      const DeepCollectionEquality().hash(correctNumber) ^
      const DeepCollectionEquality().hash(scores) ^
      const DeepCollectionEquality().hash(isCorrectAnswer);

  @override
  $GeneratedMathCardsCopyWith<GeneratedMathCards> get copyWith =>
      _$GeneratedMathCardsCopyWithImpl<GeneratedMathCards>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result generatedMathCards(
            MathGameCardModel currentNumber,
            MathGameCardModel nextNumber,
            int correctNumber,
            int scores,
            bool isCorrectAnswer),
  }) {
    assert(initial != null);
    assert(generatedMathCards != null);
    return generatedMathCards(
        currentNumber, nextNumber, correctNumber, scores, isCorrectAnswer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generatedMathCards(
        MathGameCardModel currentNumber,
        MathGameCardModel nextNumber,
        int correctNumber,
        int scores,
        bool isCorrectAnswer),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generatedMathCards != null) {
      return generatedMathCards(
          currentNumber, nextNumber, correctNumber, scores, isCorrectAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result generatedMathCards(GeneratedMathCards value),
  }) {
    assert(initial != null);
    assert(generatedMathCards != null);
    return generatedMathCards(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result generatedMathCards(GeneratedMathCards value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generatedMathCards != null) {
      return generatedMathCards(this);
    }
    return orElse();
  }
}

abstract class GeneratedMathCards implements MathMemoryGameState {
  const factory GeneratedMathCards(
      {@required MathGameCardModel currentNumber,
      @required MathGameCardModel nextNumber,
      int correctNumber,
      int scores,
      bool isCorrectAnswer}) = _$GeneratedMathCards;

  MathGameCardModel get currentNumber;
  MathGameCardModel get nextNumber;
  int get correctNumber;
  int get scores;
  bool get isCorrectAnswer;
  $GeneratedMathCardsCopyWith<GeneratedMathCards> get copyWith;
}
