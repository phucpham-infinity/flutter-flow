import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flow_project/pages/post/posts_page.dart';
import 'package:flow_project/pages/post/single_post_page.dart';

const postRouter = AutoRoute(
    path: 'post',
    name: 'PostsRouter',
    page: EmptyRouterPage,
    children: [
      AutoRoute(
        path: '',
        page: PostsPage,
      ),
      AutoRoute(
        path: ':postId',
        page: SinglePostPage,
      ),
    ]);
