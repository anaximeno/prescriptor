import 'package:http/http.dart' as http;

class Api {
  final String hostAddress;
  final String apiRoute;

  Api({this.hostAddress = "localhost:8182", this.apiRoute = "/api"});

  Uri _url(String resource, {Map<String, dynamic>? params}) {
    return Uri.http(hostAddress, '$apiRoute/$resource', params);
  }

  Future<http.Response> post(String resource, {Map<String, dynamic>? body}) {
    return http.post(_url(resource), body: body);
  }

  Future<http.Response> put(String resource, {Map<String, dynamic>? body}) {
    return http.put(_url(resource), body: body);
  }

  Future<http.Response> get(String resource, {Map<String, dynamic>? params}) {
    return http.get(_url(resource, params: params));
  }

  Future<http.Response> delete(String resource) {
    return http.delete(_url(resource));
  }
}
