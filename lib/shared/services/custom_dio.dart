import 'package:dio/native_imp.dart';

import 'interceptors/followers_interceptor.dart';
import 'interceptors/log_interceptor.dart';
import 'interceptors/post_interceptor.dart';

class CustomDio extends DioForNative {
  CustomDio() {
    options.baseUrl = "https://jsonplaceholder.typicode.com";
    interceptors.add(LogInterceptor());
    interceptors.add(PostInterceptor());
    interceptors.add(FollowersInterceptor());
  }
}