// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'ufo_shapes_game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UfoShapesGameStateTearOff {
  const _$UfoShapesGameStateTearOff();

  AddNewShape addNewShape({@required List<Widget> shapes}) {
    return AddNewShape(
      shapes: shapes,
    );
  }
}

// ignore: unused_element
const $UfoShapesGameState = _$UfoShapesGameStateTearOff();

mixin _$UfoShapesGameState {
  List<Widget> get shapes;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addNewShape(List<Widget> shapes),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addNewShape(List<Widget> shapes),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addNewShape(AddNewShape value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addNewShape(AddNewShape value),
    @required Result orElse(),
  });

  $UfoShapesGameStateCopyWith<UfoShapesGameState> get copyWith;
}

abstract class $UfoShapesGameStateCopyWith<$Res> {
  factory $UfoShapesGameStateCopyWith(
          UfoShapesGameState value, $Res Function(UfoShapesGameState) then) =
      _$UfoShapesGameStateCopyWithImpl<$Res>;
  $Res call({List<Widget> shapes});
}

class _$UfoShapesGameStateCopyWithImpl<$Res>
    implements $UfoShapesGameStateCopyWith<$Res> {
  _$UfoShapesGameStateCopyWithImpl(this._value, this._then);

  final UfoShapesGameState _value;
  // ignore: unused_field
  final $Res Function(UfoShapesGameState) _then;

  @override
  $Res call({
    Object shapes = freezed,
  }) {
    return _then(_value.copyWith(
      shapes: shapes == freezed ? _value.shapes : shapes as List<Widget>,
    ));
  }
}

abstract class $AddNewShapeCopyWith<$Res>
    implements $UfoShapesGameStateCopyWith<$Res> {
  factory $AddNewShapeCopyWith(
          AddNewShape value, $Res Function(AddNewShape) then) =
      _$AddNewShapeCopyWithImpl<$Res>;
  @override
  $Res call({List<Widget> shapes});
}

class _$AddNewShapeCopyWithImpl<$Res>
    extends _$UfoShapesGameStateCopyWithImpl<$Res>
    implements $AddNewShapeCopyWith<$Res> {
  _$AddNewShapeCopyWithImpl(
      AddNewShape _value, $Res Function(AddNewShape) _then)
      : super(_value, (v) => _then(v as AddNewShape));

  @override
  AddNewShape get _value => super._value as AddNewShape;

  @override
  $Res call({
    Object shapes = freezed,
  }) {
    return _then(AddNewShape(
      shapes: shapes == freezed ? _value.shapes : shapes as List<Widget>,
    ));
  }
}

class _$AddNewShape with DiagnosticableTreeMixin implements AddNewShape {
  const _$AddNewShape({@required this.shapes}) : assert(shapes != null);

  @override
  final List<Widget> shapes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UfoShapesGameState.addNewShape(shapes: $shapes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UfoShapesGameState.addNewShape'))
      ..add(DiagnosticsProperty('shapes', shapes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddNewShape &&
            (identical(other.shapes, shapes) ||
                const DeepCollectionEquality().equals(other.shapes, shapes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shapes);

  @override
  $AddNewShapeCopyWith<AddNewShape> get copyWith =>
      _$AddNewShapeCopyWithImpl<AddNewShape>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addNewShape(List<Widget> shapes),
  }) {
    assert(addNewShape != null);
    return addNewShape(shapes);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addNewShape(List<Widget> shapes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addNewShape != null) {
      return addNewShape(shapes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addNewShape(AddNewShape value),
  }) {
    assert(addNewShape != null);
    return addNewShape(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addNewShape(AddNewShape value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addNewShape != null) {
      return addNewShape(this);
    }
    return orElse();
  }
}

abstract class AddNewShape implements UfoShapesGameState {
  const factory AddNewShape({@required List<Widget> shapes}) = _$AddNewShape;

  @override
  List<Widget> get shapes;
  @override
  $AddNewShapeCopyWith<AddNewShape> get copyWith;
}
