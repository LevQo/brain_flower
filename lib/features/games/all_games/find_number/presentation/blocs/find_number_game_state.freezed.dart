// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'find_number_game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FindNumberGameStateTearOff {
  const _$FindNumberGameStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  GeneratedNumbers generatedNumbers(
      {@required int numberToSearch,
      @required List<FindNumberModel> numbers,
      int scores,
      bool isCorrectAnswer}) {
    return GeneratedNumbers(
      numberToSearch: numberToSearch,
      numbers: numbers,
      scores: scores,
      isCorrectAnswer: isCorrectAnswer,
    );
  }
}

// ignore: unused_element
const $FindNumberGameState = _$FindNumberGameStateTearOff();

mixin _$FindNumberGameState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result generatedNumbers(int numberToSearch,
            List<FindNumberModel> numbers, int scores, bool isCorrectAnswer),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generatedNumbers(int numberToSearch, List<FindNumberModel> numbers,
        int scores, bool isCorrectAnswer),
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

abstract class $FindNumberGameStateCopyWith<$Res> {
  factory $FindNumberGameStateCopyWith(
          FindNumberGameState value, $Res Function(FindNumberGameState) then) =
      _$FindNumberGameStateCopyWithImpl<$Res>;
}

class _$FindNumberGameStateCopyWithImpl<$Res>
    implements $FindNumberGameStateCopyWith<$Res> {
  _$FindNumberGameStateCopyWithImpl(this._value, this._then);

  final FindNumberGameState _value;
  // ignore: unused_field
  final $Res Function(FindNumberGameState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$FindNumberGameStateCopyWithImpl<$Res>
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
    return 'FindNumberGameState.initial()';
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
        Result generatedNumbers(int numberToSearch,
            List<FindNumberModel> numbers, int scores, bool isCorrectAnswer),
  }) {
    assert(initial != null);
    assert(generatedNumbers != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generatedNumbers(int numberToSearch, List<FindNumberModel> numbers,
        int scores, bool isCorrectAnswer),
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

abstract class _Initial implements FindNumberGameState {
  const factory _Initial() = _$_Initial;
}

abstract class $GeneratedNumbersCopyWith<$Res> {
  factory $GeneratedNumbersCopyWith(
          GeneratedNumbers value, $Res Function(GeneratedNumbers) then) =
      _$GeneratedNumbersCopyWithImpl<$Res>;
  $Res call(
      {int numberToSearch,
      List<FindNumberModel> numbers,
      int scores,
      bool isCorrectAnswer});
}

class _$GeneratedNumbersCopyWithImpl<$Res>
    extends _$FindNumberGameStateCopyWithImpl<$Res>
    implements $GeneratedNumbersCopyWith<$Res> {
  _$GeneratedNumbersCopyWithImpl(
      GeneratedNumbers _value, $Res Function(GeneratedNumbers) _then)
      : super(_value, (v) => _then(v as GeneratedNumbers));

  @override
  GeneratedNumbers get _value => super._value as GeneratedNumbers;

  @override
  $Res call({
    Object numberToSearch = freezed,
    Object numbers = freezed,
    Object scores = freezed,
    Object isCorrectAnswer = freezed,
  }) {
    return _then(GeneratedNumbers(
      numberToSearch: numberToSearch == freezed
          ? _value.numberToSearch
          : numberToSearch as int,
      numbers: numbers == freezed
          ? _value.numbers
          : numbers as List<FindNumberModel>,
      scores: scores == freezed ? _value.scores : scores as int,
      isCorrectAnswer: isCorrectAnswer == freezed
          ? _value.isCorrectAnswer
          : isCorrectAnswer as bool,
    ));
  }
}

class _$GeneratedNumbers implements GeneratedNumbers {
  const _$GeneratedNumbers(
      {@required this.numberToSearch,
      @required this.numbers,
      this.scores,
      this.isCorrectAnswer})
      : assert(numberToSearch != null),
        assert(numbers != null);

  @override
  final int numberToSearch;
  @override
  final List<FindNumberModel> numbers;
  @override
  final int scores;
  @override
  final bool isCorrectAnswer;

  @override
  String toString() {
    return 'FindNumberGameState.generatedNumbers(numberToSearch: $numberToSearch, numbers: $numbers, scores: $scores, isCorrectAnswer: $isCorrectAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeneratedNumbers &&
            (identical(other.numberToSearch, numberToSearch) ||
                const DeepCollectionEquality()
                    .equals(other.numberToSearch, numberToSearch)) &&
            (identical(other.numbers, numbers) ||
                const DeepCollectionEquality()
                    .equals(other.numbers, numbers)) &&
            (identical(other.scores, scores) ||
                const DeepCollectionEquality().equals(other.scores, scores)) &&
            (identical(other.isCorrectAnswer, isCorrectAnswer) ||
                const DeepCollectionEquality()
                    .equals(other.isCorrectAnswer, isCorrectAnswer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(numberToSearch) ^
      const DeepCollectionEquality().hash(numbers) ^
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
        Result generatedNumbers(int numberToSearch,
            List<FindNumberModel> numbers, int scores, bool isCorrectAnswer),
  }) {
    assert(initial != null);
    assert(generatedNumbers != null);
    return generatedNumbers(numberToSearch, numbers, scores, isCorrectAnswer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generatedNumbers(int numberToSearch, List<FindNumberModel> numbers,
        int scores, bool isCorrectAnswer),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generatedNumbers != null) {
      return generatedNumbers(numberToSearch, numbers, scores, isCorrectAnswer);
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

abstract class GeneratedNumbers implements FindNumberGameState {
  const factory GeneratedNumbers(
      {@required int numberToSearch,
      @required List<FindNumberModel> numbers,
      int scores,
      bool isCorrectAnswer}) = _$GeneratedNumbers;

  int get numberToSearch;
  List<FindNumberModel> get numbers;
  int get scores;
  bool get isCorrectAnswer;
  $GeneratedNumbersCopyWith<GeneratedNumbers> get copyWith;
}
