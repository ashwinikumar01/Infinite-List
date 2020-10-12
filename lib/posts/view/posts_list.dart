import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_infinite_list/posts/bloc/post_bloc.dart';
import 'package:flutter_infinite_list/posts/bloc/post_state.dart';


class PostsList extends StatefulWidget {
  @override
  _PostsListState createState() => _PostsListState();
}

class _PostsListState extends State<PostsList> {
  final _scrollController = ScrollController();
  final _scrollThreshold = 200.0,

  PostBloc _postbloc;

  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    _postbloc = BlocProvider.of<PostBloc>(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
      builder: (context, state) {
        if(state is PostInitial) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if(state is PostFailure) {
             return Center(
            child: Text('failed to fetch posts'),
          );
        }
        if(state is PostSuccess) {
          if(state.posts.isEmpty) {
               return Center(
              child: Text('no posts'),
            );
          }
        }
      },
    )
    ();
  }
}


void _onScroll() {

}