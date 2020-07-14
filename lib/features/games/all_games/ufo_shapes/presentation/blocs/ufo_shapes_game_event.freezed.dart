// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'ufo_shapes_game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UfoShapesGameEventTearOff {
  const _$UfoShapesGameEventTearOff();

  _InitStartScreen initStartScreen() {
    return const _InitStartScreen();
  }

  ShapeFinish shapeFinish(Widget shape) {
    return ShapeFinish(
      shape,
    );
  }
}

// ignore: unused_element
const $UfoShapesGameEvent = _$UfoShapesGameEventTearOff();

mixin _$UfoShapesGameEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initStartScreen(),
    @required Result shapeFinish(Widget shape),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result shapeFinish(Widget shape),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initStartScreen(_InitStartScreen value),
    @required Result shapeFinish(ShapeFinish value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result shapeFinish(ShapeFinish value),
    @required Result orElse(),
  });
}

abstract class $UfoShapesGameEventCopyWith<$Res> {
  factory $UfoShapesGameEventCopyWith(
          UfoShapesGameEvent value, $Res Function(UfoShapesGameEvent) then) =
      _$UfoShapesGameEventCopyWithImpl<$Res>;
}

class _$UfoShapesGameEventCopyWithImpl<$Res>
    implements $UfoShapesGameEventCopyWith<$Res> {
  _$UfoShapesGameEventCopyWithImpl(this._value, this._then);

  final UfoShapesGameEvent _value;
  // ignore: unused_field
  final $Res Function(UfoShapesGameEvent) _then;
}

abstract class _$InitStartScreenCopyWith<$Res> {
  factory _$InitStartScreenCopyWith(
          _InitStartScreen value, $Res Function(_InitStartScreen) then) =
      __$InitStartScreenCopyWithImpl<$Res>;
}

class __$InitStartScreenCopyWithImpl<$Res>
    extends _$UfoShapesGameEventCopyWithImpl<$Res>
    implements _$InitStartScreenCopyWith<$Res> {
  __$InitStartScreenCopyWithImpl(
      _InitStartScreen _value, $Res Function(_InitStartScreen) _then)
      : super(_value, (v) => _then(v as _InitStartScreen));

  @override
  _InitStartScreen get _value => super._value as _InitStartScreen;
}

class _$_InitStartScreen
    with DiagnosticableTreeMixin
    implements _InitStartScreen {
  const _$_InitStartScreen();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UfoShapesGameEvent.initStartScreen()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UfoShapesGameEvent.initStartScreen'));
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
    @required Result shapeFinish(Widget shape),
  }) {
    assert(initStartScreen != null);
    assert(shapeFinish != null);
    return initStartScreen();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result shapeFinish(Widget shape),
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
    @required Result shapeFinish(ShapeFinish value),
  }) {
    assert(initStartScreen != null);
    assert(shapeFinish != null);
    return initStartScreen(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result shapeFinish(ShapeFinish value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initStartScreen != null) {
      return initStartScreen(this);
    }
    return orElse();
  }
}

abstract class _InitStartScreen implements UfoShapesGameEvent {
  const factory _InitStartScreen() = _$_InitStartScreen;
}

abstract class $ShapeFinishCopyWith<$Res> {
  factory $ShapeFinishCopyWith(
          ShapeFinish value, $Res Function(ShapeFinish) then) =
      _$ShapeFinishCopyWithImpl<$Res>;
  $Res call({Widget shape});
}

class _$ShapeFinishCopyWithImpl<$Res>
    extends _$UfoShapesGameEventCopyWithImpl<$Res>
    implements $ShapeFinishCopyWith<$Res> {
  _$ShapeFinishCopyWithImpl(
      ShapeFinish _value, $Res Function(ShapeFinish) _then)
      : super(_value, (v) => _then(v as ShapeFinish));

  @override
  ShapeFinish get _value => super._value as ShapeFinish;

  @override
  $Res call({
    Object shape = freezed,
  }) {
    return _then(ShapeFinish(
      shape == freezed ? _value.shape : shape as Widget,
    ));
  }
}

class _$ShapeFinish with DiagnosticableTreeMixin implements ShapeFinish {
  const _$ShapeFinish(this.shape) : assert(shape != null);

  @override
  final Widget shape;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UfoShapesGameEvent.shapeFinish(shape: $shape)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UfoShapesGameEvent.shapeFinish'))
      ..add(DiagnosticsProperty('shape', shape));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShapeFinish &&
            (identical(other.shape, shape) ||
                const DeepCollectionEquality().equals(other.shape, shape)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shape);

  @override
  $ShapeFinishCopyWith<ShapeFinish> get copyWith =>
      _$ShapeFinishCopyWithImpl<ShapeFinish>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initStartScreen(),
    @required Result shapeFinish(Widget shape),
  }) {
    assert(initStartScreen != null);
    assert(shapeFinish != null);
    return shapeFinish(shape);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initStartScreen(),
    Result shapeFinish(Widget shape),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shapeFinish != null) {
      return shapeFinish(shape);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initStartScreen(_InitStartScreen value),
    @required Result shapeFinish(ShapeFinish value),
  }) {
    assert(initStartScreen != null);
    assert(shapeFinish != null);
    return shapeFinish(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initStartScreen(_InitStartScreen value),
    Result shapeFinish(ShapeFinish value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shapeFinish != null) {
      return shapeFinish(this);
    }
    return orElse();
  }
}

abstract class ShapeFinish implements UfoShapesGameEvent {
  const factory ShapeFinish(Widget shape) = _$ShapeFinish;

  Widget get shape;
  $ShapeFinishCopyWith<ShapeFinish> get copyWith;
}
