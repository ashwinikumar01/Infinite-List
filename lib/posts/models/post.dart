import 'package:equatable/equatable.dart';

class Post extends Equatable {
  final int id;
  final String title;
  final String body;

  Post({this.id, this.body, this.title});

  @override
  List<Object> get props => [id, title, body];

  //We override the toString function in order to have a custom string representation of our Post for later.
  @override
  String toString() => 'Post{id: $id}';
}
