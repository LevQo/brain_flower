// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'dominoes_game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DominoesGameStateTearOff {
  const _$DominoesGameStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  GeneratedDominoes generatedDominoes(
      {@required List<bool> firstDominoDots,
      @required List<bool> secondDominoDots,
      @required List<List<bool>> dominoesForAnswer,
      @required int correctAnswerPosition,
      int scores,
      bool isCorrectAnswer}) {
    return GeneratedDominoes(
      firstDominoDots: firstDominoDots,
      secondDominoDots: secondDominoDots,
      dominoesForAnswer: dominoesForAnswer,
      correctAnswerPosition: correctAnswerPosition,
      scores: scores,
      isCorrectAnswer: isCorrectAnswer,
    );
  }
}

// ignore: unused_element
const $DominoesGameState = _$DominoesGameStateTearOff();

mixin _$DominoesGameState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result generatedDominoes(
            List<bool> firstDominoDots,
            List<bool> secondDominoDots,
            List<List<bool>> dominoesForAnswer,
            int correctAnswerPosition,
            int scores,
            bool isCorrectAnswer),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generatedDominoes(
        List<bool> firstDominoDots,
        List<bool> secondDominoDots,
        List<List<bool>> dominoesForAnswer,
        int correctAnswerPosition,
        int scores,
        bool isCorrectAnswer),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result generatedDominoes(GeneratedDominoes value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result generatedDominoes(GeneratedDominoes value),
    @required Result orElse(),
  });
}

abstract class $DominoesGameStateCopyWith<$Res> {
  factory $DominoesGameStateCopyWith(
          DominoesGameState value, $Res Function(DominoesGameState) then) =
      _$DominoesGameStateCopyWithImpl<$Res>;
}

class _$DominoesGameStateCopyWithImpl<$Res>
    implements $DominoesGameStateCopyWith<$Res> {
  _$DominoesGameStateCopyWithImpl(this._value, this._then);

  final DominoesGameState _value;
  // ignore: unused_field
  final $Res Function(DominoesGameState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$DominoesGameStateCopyWithImpl<$Res>
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
    return 'DominoesGameState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DominoesGameState.initial'));
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
        Result generatedDominoes(
            List<bool> firstDominoDots,
            List<bool> secondDominoDots,
            List<List<bool>> dominoesForAnswer,
            int correctAnswerPosition,
            int scores,
            bool isCorrectAnswer),
  }) {
    assert(initial != null);
    assert(generatedDominoes != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generatedDominoes(
        List<bool> firstDominoDots,
        List<bool> secondDominoDots,
        List<List<bool>> dominoesForAnswer,
        int correctAnswerPosition,
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
    @required Result generatedDominoes(GeneratedDominoes value),
  }) {
    assert(initial != null);
    assert(generatedDominoes != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result generatedDominoes(GeneratedDominoes value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DominoesGameState {
  const factory _Initial() = _$_Initial;
}

abstract class $GeneratedDominoesCopyWith<$Res> {
  factory $GeneratedDominoesCopyWith(
          GeneratedDominoes value, $Res Function(GeneratedDominoes) then) =
      _$GeneratedDominoesCopyWithImpl<$Res>;
  $Res call(
      {List<bool> firstDominoDots,
      List<bool> secondDominoDots,
      List<List<bool>> dominoesForAnswer,
      int correctAnswerPosition,
      int scores,
      bool isCorrectAnswer});
}

class _$GeneratedDominoesCopyWithImpl<$Res>
    extends _$DominoesGameStateCopyWithImpl<$Res>
    implements $GeneratedDominoesCopyWith<$Res> {
  _$GeneratedDominoesCopyWithImpl(
      GeneratedDominoes _value, $Res Function(GeneratedDominoes) _then)
      : super(_value, (v) => _then(v as GeneratedDominoes));

  @override
  GeneratedDominoes get _value => super._value as GeneratedDominoes;

  @override
  $Res call({
    Object firstDominoDots = freezed,
    Object secondDominoDots = freezed,
    Object dominoesForAnswer = freezed,
    Object correctAnswerPosition = freezed,
    Object scores = freezed,
    Object isCorrectAnswer = freezed,
  }) {
    return _then(GeneratedDominoes(
      firstDominoDots: firstDominoDots == freezed
          ? _value.firstDominoDots
          : firstDominoDots as List<bool>,
      secondDominoDots: secondDominoDots == freezed
          ? _value.secondDominoDots
          : secondDominoDots as List<bool>,
      dominoesForAnswer: dominoesForAnswer == freezed
          ? _value.dominoesForAnswer
          : dominoesForAnswer as List<List<bool>>,
      correctAnswerPosition: correctAnswerPosition == freezed
          ? _value.correctAnswerPosition
          : correctAnswerPosition as int,
      scores: scores == freezed ? _value.scores : scores as int,
      isCorrectAnswer: isCorrectAnswer == freezed
          ? _value.isCorrectAnswer
          : isCorrectAnswer as bool,
    ));
  }
}

class _$GeneratedDominoes
    with DiagnosticableTreeMixin
    implements GeneratedDominoes {
  const _$GeneratedDominoes(
      {@required this.firstDominoDots,
      @required this.secondDominoDots,
      @required this.dominoesForAnswer,
      @required this.correctAnswerPosition,
      this.scores,
      this.isCorrectAnswer})
      : assert(firstDominoDots != null),
        assert(secondDominoDots != null),
        assert(dominoesForAnswer != null),
        assert(correctAnswerPosition != null);

  @override
  final List<bool> firstDominoDots;
  @override
  final List<bool> secondDominoDots;
  @override
  final List<List<bool>> dominoesForAnswer;
  @override
  final int correctAnswerPosition;
  @override
  final int scores;
  @override
  final bool isCorrectAnswer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DominoesGameState.generatedDominoes(firstDominoDots: $firstDominoDots, secondDominoDots: $secondDominoDots, dominoesForAnswer: $dominoesForAnswer, correctAnswerPosition: $correctAnswerPosition, scores: $scores, isCorrectAnswer: $isCorrectAnswer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DominoesGameState.generatedDominoes'))
      ..add(DiagnosticsProperty('firstDominoDots', firstDominoDots))
      ..add(DiagnosticsProperty('secondDominoDots', secondDominoDots))
      ..add(DiagnosticsProperty('dominoesForAnswer', dominoesForAnswer))
      ..add(DiagnosticsProperty('correctAnswerPosition', correctAnswerPosition))
      ..add(DiagnosticsProperty('scores', scores))
      ..add(DiagnosticsProperty('isCorrectAnswer', isCorrectAnswer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeneratedDominoes &&
            (identical(other.firstDominoDots, firstDominoDots) ||
                const DeepCollectionEquality()
                    .equals(other.firstDominoDots, firstDominoDots)) &&
            (identical(other.secondDominoDots, secondDominoDots) ||
                const DeepCollectionEquality()
                    .equals(other.secondDominoDots, secondDominoDots)) &&
            (identical(other.dominoesForAnswer, dominoesForAnswer) ||
                const DeepCollectionEquality()
                    .equals(other.dominoesForAnswer, dominoesForAnswer)) &&
            (identical(other.correctAnswerPosition, correctAnswerPosition) ||
                const DeepCollectionEquality().equals(
                    other.correctAnswerPosition, correctAnswerPosition)) &&
            (identical(other.scores, scores) ||
                const DeepCollectionEquality().equals(other.scores, scores)) &&
            (identical(other.isCorrectAnswer, isCorrectAnswer) ||
                const DeepCollectionEquality()
                    .equals(other.isCorrectAnswer, isCorrectAnswer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstDominoDots) ^
      const DeepCollectionEquality().hash(secondDominoDots) ^
      const DeepCollectionEquality().hash(dominoesForAnswer) ^
      const DeepCollectionEquality().hash(correctAnswerPosition) ^
      const DeepCollectionEquality().hash(scores) ^
      const DeepCollectionEquality().hash(isCorrectAnswer);

  @override
  $GeneratedDominoesCopyWith<GeneratedDominoes> get copyWith =>
      _$GeneratedDominoesCopyWithImpl<GeneratedDominoes>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result generatedDominoes(
            List<bool> firstDominoDots,
            List<bool> secondDominoDots,
            List<List<bool>> dominoesForAnswer,
            int correctAnswerPosition,
            int scores,
            bool isCorrectAnswer),
  }) {
    assert(initial != null);
    assert(generatedDominoes != null);
    return generatedDominoes(firstDominoDots, secondDominoDots,
        dominoesForAnswer, correctAnswerPosition, scores, isCorrectAnswer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generatedDominoes(
        List<bool> firstDominoDots,
        List<bool> secondDominoDots,
        List<List<bool>> dominoesForAnswer,
        int correctAnswerPosition,
        int scores,
        bool isCorrectAnswer),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generatedDominoes != null) {
      return generatedDominoes(firstDominoDots, secondDominoDots,
          dominoesForAnswer, correctAnswerPosition, scores, isCorrectAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result generatedDominoes(GeneratedDominoes value),
  }) {
    assert(initial != null);
    assert(generatedDominoes != null);
    return generatedDominoes(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result generatedDominoes(GeneratedDominoes value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generatedDominoes != null) {
      return generatedDominoes(this);
    }
    return orElse();
  }
}

abstract class GeneratedDominoes implements DominoesGameState {
  const factory GeneratedDominoes(
      {@required List<bool> firstDominoDots,
      @required List<bool> secondDominoDots,
      @required List<List<bool>> dominoesForAnswer,
      @required int correctAnswerPosition,
      int scores,
      bool isCorrectAnswer}) = _$GeneratedDominoes;

  List<bool> get firstDominoDots;
  List<bool> get secondDominoDots;
  List<List<bool>> get dominoesForAnswer;
  int get correctAnswerPosition;
  int get scores;
  bool get isCorrectAnswer;
  $GeneratedDominoesCopyWith<GeneratedDominoes> get copyWith;
}
