// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'watering_flowers_game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WateringFlowersGameEventTearOff {
  const _$WateringFlowersGameEventTearOff();

  _InitStartScreen initStartScreen() {
    return const _InitStartScreen();
  }

  _ToWaterFlower toWaterFlower({@required WateringFlowerModel flower}) {
    return _ToWaterFlower(
      flower: flower,
    );
  }

  _ToUpdateFlower toUpdateFlower({@required WateringFlowerModel flower}) {
    return _ToUpdateFlower(
      flower: flower,
    );
  }
}

// ignore: unused_element
const $WateringFlowersGameEvent = _$WateringFlowersGameEventTearOff();

mixin _$WateringFlowersGameEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initStartScreen(),
    @required Result toWaterFlower(WateringFlowerModel flower),
    @required Result toUpdateFlower(WateringFlowerModel flower),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result toWaterFlower(WateringFlowerModel flower),
    Result toUpdateFlower(WateringFlowerModel flower),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initStartScreen(_InitStartScreen value),
    @required Result toWaterFlower(_ToWaterFlower value),
    @required Result toUpdateFlower(_ToUpdateFlower value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result toWaterFlower(_ToWaterFlower value),
    Result toUpdateFlower(_ToUpdateFlower value),
    @required Result orElse(),
  });
}

abstract class $WateringFlowersGameEventCopyWith<$Res> {
  factory $WateringFlowersGameEventCopyWith(WateringFlowersGameEvent value,
          $Res Function(WateringFlowersGameEvent) then) =
      _$WateringFlowersGameEventCopyWithImpl<$Res>;
}

class _$WateringFlowersGameEventCopyWithImpl<$Res>
    implements $WateringFlowersGameEventCopyWith<$Res> {
  _$WateringFlowersGameEventCopyWithImpl(this._value, this._then);

  final WateringFlowersGameEvent _value;
  // ignore: unused_field
  final $Res Function(WateringFlowersGameEvent) _then;
}

abstract class _$InitStartScreenCopyWith<$Res> {
  factory _$InitStartScreenCopyWith(
          _InitStartScreen value, $Res Function(_InitStartScreen) then) =
      __$InitStartScreenCopyWithImpl<$Res>;
}

class __$InitStartScreenCopyWithImpl<$Res>
    extends _$WateringFlowersGameEventCopyWithImpl<$Res>
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
    return 'WateringFlowersGameEvent.initStartScreen()';
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
    @required Result toWaterFlower(WateringFlowerModel flower),
    @required Result toUpdateFlower(WateringFlowerModel flower),
  }) {
    assert(initStartScreen != null);
    assert(toWaterFlower != null);
    assert(toUpdateFlower != null);
    return initStartScreen();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result toWaterFlower(WateringFlowerModel flower),
    Result toUpdateFlower(WateringFlowerModel flower),
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
    @required Result toWaterFlower(_ToWaterFlower value),
    @required Result toUpdateFlower(_ToUpdateFlower value),
  }) {
    assert(initStartScreen != null);
    assert(toWaterFlower != null);
    assert(toUpdateFlower != null);
    return initStartScreen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result toWaterFlower(_ToWaterFlower value),
    Result toUpdateFlower(_ToUpdateFlower value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initStartScreen != null) {
      return initStartScreen(this);
    }
    return orElse();
  }
}

abstract class _InitStartScreen implements WateringFlowersGameEvent {
  const factory _InitStartScreen() = _$_InitStartScreen;
}

abstract class _$ToWaterFlowerCopyWith<$Res> {
  factory _$ToWaterFlowerCopyWith(
          _ToWaterFlower value, $Res Function(_ToWaterFlower) then) =
      __$ToWaterFlowerCopyWithImpl<$Res>;
  $Res call({WateringFlowerModel flower});
}

class __$ToWaterFlowerCopyWithImpl<$Res>
    extends _$WateringFlowersGameEventCopyWithImpl<$Res>
    implements _$ToWaterFlowerCopyWith<$Res> {
  __$ToWaterFlowerCopyWithImpl(
      _ToWaterFlower _value, $Res Function(_ToWaterFlower) _then)
      : super(_value, (v) => _then(v as _ToWaterFlower));

  @override
  _ToWaterFlower get _value => super._value as _ToWaterFlower;

  @override
  $Res call({
    Object flower = freezed,
  }) {
    return _then(_ToWaterFlower(
      flower: flower == freezed ? _value.flower : flower as WateringFlowerModel,
    ));
  }
}

class _$_ToWaterFlower implements _ToWaterFlower {
  const _$_ToWaterFlower({@required this.flower}) : assert(flower != null);

  @override
  final WateringFlowerModel flower;

  @override
  String toString() {
    return 'WateringFlowersGameEvent.toWaterFlower(flower: $flower)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToWaterFlower &&
            (identical(other.flower, flower) ||
                const DeepCollectionEquality().equals(other.flower, flower)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(flower);

  @override
  _$ToWaterFlowerCopyWith<_ToWaterFlower> get copyWith =>
      __$ToWaterFlowerCopyWithImpl<_ToWaterFlower>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initStartScreen(),
    @required Result toWaterFlower(WateringFlowerModel flower),
    @required Result toUpdateFlower(WateringFlowerModel flower),
  }) {
    assert(initStartScreen != null);
    assert(toWaterFlower != null);
    assert(toUpdateFlower != null);
    return toWaterFlower(flower);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result toWaterFlower(WateringFlowerModel flower),
    Result toUpdateFlower(WateringFlowerModel flower),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toWaterFlower != null) {
      return toWaterFlower(flower);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initStartScreen(_InitStartScreen value),
    @required Result toWaterFlower(_ToWaterFlower value),
    @required Result toUpdateFlower(_ToUpdateFlower value),
  }) {
    assert(initStartScreen != null);
    assert(toWaterFlower != null);
    assert(toUpdateFlower != null);
    return toWaterFlower(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result toWaterFlower(_ToWaterFlower value),
    Result toUpdateFlower(_ToUpdateFlower value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toWaterFlower != null) {
      return toWaterFlower(this);
    }
    return orElse();
  }
}

abstract class _ToWaterFlower implements WateringFlowersGameEvent {
  const factory _ToWaterFlower({@required WateringFlowerModel flower}) =
      _$_ToWaterFlower;

  WateringFlowerModel get flower;
  _$ToWaterFlowerCopyWith<_ToWaterFlower> get copyWith;
}

abstract class _$ToUpdateFlowerCopyWith<$Res> {
  factory _$ToUpdateFlowerCopyWith(
          _ToUpdateFlower value, $Res Function(_ToUpdateFlower) then) =
      __$ToUpdateFlowerCopyWithImpl<$Res>;
  $Res call({WateringFlowerModel flower});
}

class __$ToUpdateFlowerCopyWithImpl<$Res>
    extends _$WateringFlowersGameEventCopyWithImpl<$Res>
    implements _$ToUpdateFlowerCopyWith<$Res> {
  __$ToUpdateFlowerCopyWithImpl(
      _ToUpdateFlower _value, $Res Function(_ToUpdateFlower) _then)
      : super(_value, (v) => _then(v as _ToUpdateFlower));

  @override
  _ToUpdateFlower get _value => super._value as _ToUpdateFlower;

  @override
  $Res call({
    Object flower = freezed,
  }) {
    return _then(_ToUpdateFlower(
      flower: flower == freezed ? _value.flower : flower as WateringFlowerModel,
    ));
  }
}

class _$_ToUpdateFlower implements _ToUpdateFlower {
  const _$_ToUpdateFlower({@required this.flower}) : assert(flower != null);

  @override
  final WateringFlowerModel flower;

  @override
  String toString() {
    return 'WateringFlowersGameEvent.toUpdateFlower(flower: $flower)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToUpdateFlower &&
            (identical(other.flower, flower) ||
                const DeepCollectionEquality().equals(other.flower, flower)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(flower);

  @override
  _$ToUpdateFlowerCopyWith<_ToUpdateFlower> get copyWith =>
      __$ToUpdateFlowerCopyWithImpl<_ToUpdateFlower>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initStartScreen(),
    @required Result toWaterFlower(WateringFlowerModel flower),
    @required Result toUpdateFlower(WateringFlowerModel flower),
  }) {
    assert(initStartScreen != null);
    assert(toWaterFlower != null);
    assert(toUpdateFlower != null);
    return toUpdateFlower(flower);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result toWaterFlower(WateringFlowerModel flower),
    Result toUpdateFlower(WateringFlowerModel flower),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toUpdateFlower != null) {
      return toUpdateFlower(flower);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initStartScreen(_InitStartScreen value),
    @required Result toWaterFlower(_ToWaterFlower value),
    @required Result toUpdateFlower(_ToUpdateFlower value),
  }) {
    assert(initStartScreen != null);
    assert(toWaterFlower != null);
    assert(toUpdateFlower != null);
    return toUpdateFlower(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result toWaterFlower(_ToWaterFlower value),
    Result toUpdateFlower(_ToUpdateFlower value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toUpdateFlower != null) {
      return toUpdateFlower(this);
    }
    return orElse();
  }
}

abstract class _ToUpdateFlower implements WateringFlowersGameEvent {
  const factory _ToUpdateFlower({@required WateringFlowerModel flower}) =
      _$_ToUpdateFlower;

  WateringFlowerModel get flower;
  _$ToUpdateFlowerCopyWith<_ToUpdateFlower> get copyWith;
}
