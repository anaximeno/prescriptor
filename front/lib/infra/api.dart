import 'package:http/http.dart' as http;

class Api {
  final String baseRoute;

  Api({this.baseRoute = "localhost:8182/api"});

  Uri _url(String route, {Map<String, dynamic>? params}) =>
      Uri.http(baseRoute, route, params);

  Future<http.Response> post(String route, {Map<String, dynamic>? body}) {
    return http.post(_url(route), body: body);
  }

  Future<http.Response> put(String route, {Map<String, dynamic>? body}) {
    return http.put(_url(route), body: body);
  }

  Future<http.Response> get(String route, {Map<String, dynamic>? params}) {
    return http.get(_url(route, params: params));
  }

  Future<http.Response> delete(String route) {
    return http.delete(_url(route));
  }
}
