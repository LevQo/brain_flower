import 'package:brain_flower/features/games/all_games/find_object/data/models/find_object_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class FindObjectGameEvent extends Equatable {
  const FindObjectGameEvent();

  @override
  List<Object> get props => [];
}

class InitStartScreenFindObject extends FindObjectGameEvent {
  @override
  List<Object> get props => super.props;
}

class SelectObjectEvent extends FindObjectGameEvent {
  final FindObjectModel object;

  SelectObjectEvent({this.object});

  @override
  List<Object> get props => [this.object];
}
