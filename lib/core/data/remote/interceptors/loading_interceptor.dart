import 'package:custodia_movies/core/change_notifiers/loading_notifier.dart';
import 'package:dio/dio.dart';

import '../../../service_locator/service_locator.dart';

class LoadingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    sl<LoadingNotifier>().isLoading = true;
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    sl<LoadingNotifier>().isLoading = false;
    super.onResponse(response, handler);
  }
}
