import 'package:equatable/equatable.dart';

abstract class PostEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class PostFetched extends PostEvent {}

//Since our PostFetched event is a type of PostEvent
