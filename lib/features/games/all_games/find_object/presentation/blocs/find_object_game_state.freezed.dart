// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'find_object_game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FindObjectGameStateTearOff {
  const _$FindObjectGameStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  GeneratedObjects generatedObjects(
      {@required FindObjectModel objectToSearch,
      @required FindObjectGameTypes typeOfSearch,
      @required List<FindObjectModel> objects,
      @required String colorText,
      int scores,
      bool isCorrectAnswer}) {
    return GeneratedObjects(
      objectToSearch: objectToSearch,
      typeOfSearch: typeOfSearch,
      objects: objects,
      colorText: colorText,
      scores: scores,
      isCorrectAnswer: isCorrectAnswer,
    );
  }
}

// ignore: unused_element
const $FindObjectGameState = _$FindObjectGameStateTearOff();

mixin _$FindObjectGameState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result generatedObjects(
            FindObjectModel objectToSearch,
            FindObjectGameTypes typeOfSearch,
            List<FindObjectModel> objects,
            String colorText,
            int scores,
            bool isCorrectAnswer),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generatedObjects(
        FindObjectModel objectToSearch,
        FindObjectGameTypes typeOfSearch,
        List<FindObjectModel> objects,
        String colorText,
        int scores,
        bool isCorrectAnswer),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result generatedObjects(GeneratedObjects value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result generatedObjects(GeneratedObjects value),
    @required Result orElse(),
  });
}

abstract class $FindObjectGameStateCopyWith<$Res> {
  factory $FindObjectGameStateCopyWith(
          FindObjectGameState value, $Res Function(FindObjectGameState) then) =
      _$FindObjectGameStateCopyWithImpl<$Res>;
}

class _$FindObjectGameStateCopyWithImpl<$Res>
    implements $FindObjectGameStateCopyWith<$Res> {
  _$FindObjectGameStateCopyWithImpl(this._value, this._then);

  final FindObjectGameState _value;
  // ignore: unused_field
  final $Res Function(FindObjectGameState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$FindObjectGameStateCopyWithImpl<$Res>
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
    return 'FindObjectGameState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'FindObjectGameState.initial'));
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
        Result generatedObjects(
            FindObjectModel objectToSearch,
            FindObjectGameTypes typeOfSearch,
            List<FindObjectModel> objects,
            String colorText,
            int scores,
            bool isCorrectAnswer),
  }) {
    assert(initial != null);
    assert(generatedObjects != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generatedObjects(
        FindObjectModel objectToSearch,
        FindObjectGameTypes typeOfSearch,
        List<FindObjectModel> objects,
        String colorText,
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
    @required Result generatedObjects(GeneratedObjects value),
  }) {
    assert(initial != null);
    assert(generatedObjects != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result generatedObjects(GeneratedObjects value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FindObjectGameState {
  const factory _Initial() = _$_Initial;
}

abstract class $GeneratedObjectsCopyWith<$Res> {
  factory $GeneratedObjectsCopyWith(
          GeneratedObjects value, $Res Function(GeneratedObjects) then) =
      _$GeneratedObjectsCopyWithImpl<$Res>;
  $Res call(
      {FindObjectModel objectToSearch,
      FindObjectGameTypes typeOfSearch,
      List<FindObjectModel> objects,
      String colorText,
      int scores,
      bool isCorrectAnswer});
}

class _$GeneratedObjectsCopyWithImpl<$Res>
    extends _$FindObjectGameStateCopyWithImpl<$Res>
    implements $GeneratedObjectsCopyWith<$Res> {
  _$GeneratedObjectsCopyWithImpl(
      GeneratedObjects _value, $Res Function(GeneratedObjects) _then)
      : super(_value, (v) => _then(v as GeneratedObjects));

  @override
  GeneratedObjects get _value => super._value as GeneratedObjects;

  @override
  $Res call({
    Object objectToSearch = freezed,
    Object typeOfSearch = freezed,
    Object objects = freezed,
    Object colorText = freezed,
    Object scores = freezed,
    Object isCorrectAnswer = freezed,
  }) {
    return _then(GeneratedObjects(
      objectToSearch: objectToSearch == freezed
          ? _value.objectToSearch
          : objectToSearch as FindObjectModel,
      typeOfSearch: typeOfSearch == freezed
          ? _value.typeOfSearch
          : typeOfSearch as FindObjectGameTypes,
      objects: objects == freezed
          ? _value.objects
          : objects as List<FindObjectModel>,
      colorText: colorText == freezed ? _value.colorText : colorText as String,
      scores: scores == freezed ? _value.scores : scores as int,
      isCorrectAnswer: isCorrectAnswer == freezed
          ? _value.isCorrectAnswer
          : isCorrectAnswer as bool,
    ));
  }
}

class _$GeneratedObjects
    with DiagnosticableTreeMixin
    implements GeneratedObjects {
  const _$GeneratedObjects(
      {@required this.objectToSearch,
      @required this.typeOfSearch,
      @required this.objects,
      @required this.colorText,
      this.scores,
      this.isCorrectAnswer})
      : assert(objectToSearch != null),
        assert(typeOfSearch != null),
        assert(objects != null),
        assert(colorText != null);

  @override
  final FindObjectModel objectToSearch;
  @override
  final FindObjectGameTypes typeOfSearch;
  @override
  final List<FindObjectModel> objects;
  @override
  final String colorText;
  @override
  final int scores;
  @override
  final bool isCorrectAnswer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindObjectGameState.generatedObjects(objectToSearch: $objectToSearch, typeOfSearch: $typeOfSearch, objects: $objects, colorText: $colorText, scores: $scores, isCorrectAnswer: $isCorrectAnswer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindObjectGameState.generatedObjects'))
      ..add(DiagnosticsProperty('objectToSearch', objectToSearch))
      ..add(DiagnosticsProperty('typeOfSearch', typeOfSearch))
      ..add(DiagnosticsProperty('objects', objects))
      ..add(DiagnosticsProperty('colorText', colorText))
      ..add(DiagnosticsProperty('scores', scores))
      ..add(DiagnosticsProperty('isCorrectAnswer', isCorrectAnswer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeneratedObjects &&
            (identical(other.objectToSearch, objectToSearch) ||
                const DeepCollectionEquality()
                    .equals(other.objectToSearch, objectToSearch)) &&
            (identical(other.typeOfSearch, typeOfSearch) ||
                const DeepCollectionEquality()
                    .equals(other.typeOfSearch, typeOfSearch)) &&
            (identical(other.objects, objects) ||
                const DeepCollectionEquality()
                    .equals(other.objects, objects)) &&
            (identical(other.colorText, colorText) ||
                const DeepCollectionEquality()
                    .equals(other.colorText, colorText)) &&
            (identical(other.scores, scores) ||
                const DeepCollectionEquality().equals(other.scores, scores)) &&
            (identical(other.isCorrectAnswer, isCorrectAnswer) ||
                const DeepCollectionEquality()
                    .equals(other.isCorrectAnswer, isCorrectAnswer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(objectToSearch) ^
      const DeepCollectionEquality().hash(typeOfSearch) ^
      const DeepCollectionEquality().hash(objects) ^
      const DeepCollectionEquality().hash(colorText) ^
      const DeepCollectionEquality().hash(scores) ^
      const DeepCollectionEquality().hash(isCorrectAnswer);

  @override
  $GeneratedObjectsCopyWith<GeneratedObjects> get copyWith =>
      _$GeneratedObjectsCopyWithImpl<GeneratedObjects>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result generatedObjects(
            FindObjectModel objectToSearch,
            FindObjectGameTypes typeOfSearch,
            List<FindObjectModel> objects,
            String colorText,
            int scores,
            bool isCorrectAnswer),
  }) {
    assert(initial != null);
    assert(generatedObjects != null);
    return generatedObjects(objectToSearch, typeOfSearch, objects, colorText,
        scores, isCorrectAnswer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result generatedObjects(
        FindObjectModel objectToSearch,
        FindObjectGameTypes typeOfSearch,
        List<FindObjectModel> objects,
        String colorText,
        int scores,
        bool isCorrectAnswer),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generatedObjects != null) {
      return generatedObjects(objectToSearch, typeOfSearch, objects, colorText,
          scores, isCorrectAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result generatedObjects(GeneratedObjects value),
  }) {
    assert(initial != null);
    assert(generatedObjects != null);
    return generatedObjects(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result generatedObjects(GeneratedObjects value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (generatedObjects != null) {
      return generatedObjects(this);
    }
    return orElse();
  }
}

abstract class GeneratedObjects implements FindObjectGameState {
  const factory GeneratedObjects(
      {@required FindObjectModel objectToSearch,
      @required FindObjectGameTypes typeOfSearch,
      @required List<FindObjectModel> objects,
      @required String colorText,
      int scores,
      bool isCorrectAnswer}) = _$GeneratedObjects;

  FindObjectModel get objectToSearch;
  FindObjectGameTypes get typeOfSearch;
  List<FindObjectModel> get objects;
  String get colorText;
  int get scores;
  bool get isCorrectAnswer;
  $GeneratedObjectsCopyWith<GeneratedObjects> get copyWith;
}
