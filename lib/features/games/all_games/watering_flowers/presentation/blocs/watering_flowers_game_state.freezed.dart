// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'watering_flowers_game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WateringFlowersGameStateTearOff {
  const _$WateringFlowersGameStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  UpdatedFlower updatedFlower(
      {@required List<WateringFlowerModel> flowers,
      int scores,
      bool isCorrectAnswer}) {
    return UpdatedFlower(
      flowers: flowers,
      scores: scores,
      isCorrectAnswer: isCorrectAnswer,
    );
  }
}

// ignore: unused_element
const $WateringFlowersGameState = _$WateringFlowersGameStateTearOff();

mixin _$WateringFlowersGameState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result updatedFlower(List<WateringFlowerModel> flowers, int scores,
            bool isCorrectAnswer),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result updatedFlower(
        List<WateringFlowerModel> flowers, int scores, bool isCorrectAnswer),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result updatedFlower(UpdatedFlower value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result updatedFlower(UpdatedFlower value),
    @required Result orElse(),
  });
}

abstract class $WateringFlowersGameStateCopyWith<$Res> {
  factory $WateringFlowersGameStateCopyWith(WateringFlowersGameState value,
          $Res Function(WateringFlowersGameState) then) =
      _$WateringFlowersGameStateCopyWithImpl<$Res>;
}

class _$WateringFlowersGameStateCopyWithImpl<$Res>
    implements $WateringFlowersGameStateCopyWith<$Res> {
  _$WateringFlowersGameStateCopyWithImpl(this._value, this._then);

  final WateringFlowersGameState _value;
  // ignore: unused_field
  final $Res Function(WateringFlowersGameState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$WateringFlowersGameStateCopyWithImpl<$Res>
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
    return 'WateringFlowersGameState.initial()';
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
        Result updatedFlower(List<WateringFlowerModel> flowers, int scores,
            bool isCorrectAnswer),
  }) {
    assert(initial != null);
    assert(updatedFlower != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result updatedFlower(
        List<WateringFlowerModel> flowers, int scores, bool isCorrectAnswer),
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
    @required Result updatedFlower(UpdatedFlower value),
  }) {
    assert(initial != null);
    assert(updatedFlower != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result updatedFlower(UpdatedFlower value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WateringFlowersGameState {
  const factory _Initial() = _$_Initial;
}

abstract class $UpdatedFlowerCopyWith<$Res> {
  factory $UpdatedFlowerCopyWith(
          UpdatedFlower value, $Res Function(UpdatedFlower) then) =
      _$UpdatedFlowerCopyWithImpl<$Res>;
  $Res call(
      {List<WateringFlowerModel> flowers, int scores, bool isCorrectAnswer});
}

class _$UpdatedFlowerCopyWithImpl<$Res>
    extends _$WateringFlowersGameStateCopyWithImpl<$Res>
    implements $UpdatedFlowerCopyWith<$Res> {
  _$UpdatedFlowerCopyWithImpl(
      UpdatedFlower _value, $Res Function(UpdatedFlower) _then)
      : super(_value, (v) => _then(v as UpdatedFlower));

  @override
  UpdatedFlower get _value => super._value as UpdatedFlower;

  @override
  $Res call({
    Object flowers = freezed,
    Object scores = freezed,
    Object isCorrectAnswer = freezed,
  }) {
    return _then(UpdatedFlower(
      flowers: flowers == freezed
          ? _value.flowers
          : flowers as List<WateringFlowerModel>,
      scores: scores == freezed ? _value.scores : scores as int,
      isCorrectAnswer: isCorrectAnswer == freezed
          ? _value.isCorrectAnswer
          : isCorrectAnswer as bool,
    ));
  }
}

class _$UpdatedFlower implements UpdatedFlower {
  const _$UpdatedFlower(
      {@required this.flowers, this.scores, this.isCorrectAnswer})
      : assert(flowers != null);

  @override
  final List<WateringFlowerModel> flowers;
  @override
  final int scores;
  @override
  final bool isCorrectAnswer;

  @override
  String toString() {
    return 'WateringFlowersGameState.updatedFlower(flowers: $flowers, scores: $scores, isCorrectAnswer: $isCorrectAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other);
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flowers) ^
      const DeepCollectionEquality().hash(scores) ^
      const DeepCollectionEquality().hash(isCorrectAnswer);

  @override
  $UpdatedFlowerCopyWith<UpdatedFlower> get copyWith =>
      _$UpdatedFlowerCopyWithImpl<UpdatedFlower>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result updatedFlower(List<WateringFlowerModel> flowers, int scores,
            bool isCorrectAnswer),
  }) {
    assert(initial != null);
    assert(updatedFlower != null);
    return updatedFlower(flowers, scores, isCorrectAnswer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result updatedFlower(
        List<WateringFlowerModel> flowers, int scores, bool isCorrectAnswer),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updatedFlower != null) {
      return updatedFlower(flowers, scores, isCorrectAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result updatedFlower(UpdatedFlower value),
  }) {
    assert(initial != null);
    assert(updatedFlower != null);
    return updatedFlower(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result updatedFlower(UpdatedFlower value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updatedFlower != null) {
      return updatedFlower(this);
    }
    return orElse();
  }
}

abstract class UpdatedFlower implements WateringFlowersGameState {
  const factory UpdatedFlower(
      {@required List<WateringFlowerModel> flowers,
      int scores,
      bool isCorrectAnswer}) = _$UpdatedFlower;

  List<WateringFlowerModel> get flowers;
  int get scores;
  bool get isCorrectAnswer;
  $UpdatedFlowerCopyWith<UpdatedFlower> get copyWith;
}
