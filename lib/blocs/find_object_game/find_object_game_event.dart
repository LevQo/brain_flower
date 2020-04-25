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
  final Color color;
  final Icon icon;

  SelectObjectEvent({this.color, this.icon});

  @override
  List<Object> get props => [this.color, this.icon];
}
