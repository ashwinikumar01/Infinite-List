import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_infinite_list/posts/bloc/post_bloc.dart';
import 'package:flutter_infinite_list/posts/bloc/post_event.dart';
import 'package:flutter_infinite_list/posts/view/posts_list.dart';
import 'package:http/http.dart' as http;

class PostPage extends StatelessWidget {
  const PostPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: BlocProvider(
        create: (context) =>
            PostBloc(httpClient: http.Client())..add(PostFetched()),
        child: PostsList(),
      ),
    );
  }
}
