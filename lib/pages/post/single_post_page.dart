import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SinglePostPage extends StatelessWidget {
  final int postId;

  const SinglePostPage({Key? key, @PathParam() required this.postId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('This is single post page');
  }
}
