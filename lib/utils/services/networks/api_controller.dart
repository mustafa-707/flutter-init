import 'dart:convert';
import 'dart:developer';
import 'package:wootasali/utils/services/networks/base_urls.dart';
import 'package:wootasali/utils/services/networks/headers.dart';
import 'package:http/http.dart' as http;

class APIController {
  APIController();

  static Future getData({
    String? endpointURL,
    List<String>? params,
    String? resource,
    HeadersTypes? headerType,
    String? headerToken,
  }) async {
    try {
      if (resource != null) {
        endpointURL = endpointURL! + resource;
      }

      if (params != null) {
        endpointURL = endpointURL! + "?" + params.join("&");
      }

      var url = Uri.parse(BaseUrls.url + '$endpointURL');

      var res = await http.get(
        url,
        headers: _headers(headerType ?? HeadersTypes.none, token: headerToken),
      );
      if (res.statusCode == 200) {
        Map<String, dynamic> body =
            (json.decode(res.body) as Map<String, dynamic>);
        body.addAll({'isSucsses': true});
        log("Get Success $body");
        return json.encode(body);
      } else if (res.statusCode == 401) {
        // _tokenExpiredRefresher();
      } else {
        throw Exception("getData ::: ${res.body}  -- ${res.statusCode}");
      }
    } catch (e) {
      throw Exception("getData ::: $endpointURL" + e.toString());
    }
  }

  static Future postData({
    String? endpointURL,
    List<String>? params,
    String? resource,
    HeadersTypes? headerType,
    String? body,
    String? headerToken,
  }) async {
    try {
      if (resource != null) {
        endpointURL = endpointURL! + resource;
      }

      if (params != null) {
        endpointURL = endpointURL! + "?" + params.join("&");
      }

      var url = Uri.parse(BaseUrls.url + '$endpointURL');

      var res = await http.post(
        url,
        body: body,
        headers: _headers(
          headerType ?? HeadersTypes.none,
          token: headerToken,
        ),
      );

      if (res.statusCode == 200) {
        Map<String, dynamic> body =
            (json.decode(res.body) as Map<String, dynamic>);
        body.addAll({'isSucsses': true});
        return json.encode(body);
      } else if (res.statusCode == 401) {
        //_tokenExpiredRefresher();
      } else {
        throw Exception(
            "postData ::: $endpointURL ${res.body}  -- ${res.statusCode}");
      }
    } catch (e) {
      throw Exception("postData ::: $endpointURL" + e.toString());
    }
  }

  static Future putData({
    String? endpointURL,
    List<String>? params,
    String? resource,
    HeadersTypes? headerType,
    Object? body,
    String? headerToken,
  }) async {
    try {
      if (resource != null) {
        endpointURL = endpointURL! + resource;
      }

      if (params != null) {
        endpointURL = endpointURL! + "?" + params.join("&");
      }

      var url = Uri.parse(BaseUrls.url + '$endpointURL');

      var res = await http.put(
        url,
        body: body,
        headers: _headers(
          headerType ?? HeadersTypes.none,
          token: headerToken,
        ),
      );

      if (res.statusCode == 200) {
        Map<String, dynamic> body =
            (json.decode(res.body) as Map<String, dynamic>);
        body.addAll({'isSucsses': true});
        return json.encode(body);
      } else if (res.statusCode == 401) {
        // _tokenExpiredRefresher();
      } else {
        throw Exception(
            "putData ::: $endpointURL ${res.body}  -- ${res.statusCode}");
      }
    } catch (e) {
      throw Exception("putData ::: $endpointURL" + e.toString());
    }
  }

  static Future deleteData({
    String? endpointURL,
    List<String>? params,
    String? resource,
    HeadersTypes? headerType,
    Object? body,
    String? headerToken,
  }) async {
    try {
      if (resource != null) {
        endpointURL = endpointURL! + resource;
      }

      if (params != null) {
        endpointURL = endpointURL! + "?" + params.join("&");
      }

      var url = Uri.parse(BaseUrls.url + '$endpointURL');

      var res = await http.delete(
        url,
        body: body,
        headers: _headers(
          headerType ?? HeadersTypes.none,
          token: headerToken,
        ),
      );

      if (res.statusCode == 200) {
        Map<String, dynamic> body =
            (json.decode(res.body) as Map<String, dynamic>);
        body.addAll({'isSucsses': true});
        return json.encode(body);
      } else if (res.statusCode == 401) {
        //_tokenExpiredRefresher();
      } else {
        throw Exception(
            "deleteData ::: $endpointURL ${res.body}  -- ${res.statusCode}");
      }
    } catch (e) {
      throw Exception("deleteData ::: $endpointURL" + e.toString());
    }
  }

  static Map<String, String> _headers(HeadersTypes? headerType,
      {String? token}) {
    switch (headerType) {
      case HeadersTypes.none:
        return APIsHeaders.getHeader;
      case HeadersTypes.normal:
        return APIsHeaders.normalHeader;
      case HeadersTypes.auth:
        return APIsHeaders.authHeader;
      case HeadersTypes.token:
        return APIsHeaders.tokenHeader(token!);
      default:
        return APIsHeaders.getHeader;
    }
  }
}

enum HeadersTypes {
  none,
  normal,
  auth,
  token,
}
