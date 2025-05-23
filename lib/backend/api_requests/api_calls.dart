import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetMascotasCall {
  static Future<ApiCallResponse> call({
    String? body = '--',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getMascotas',
      apiUrl: 'https://dog.ceo/api/breeds/image/random',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? getImg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class NeviarCorreoCall {
  static Future<ApiCallResponse> call({
    String? nombre = '',
    String? hora = '',
    String? mensaje = '',
    String? correo = '',
  }) async {
    final ffApiRequestBody = '''
{
  "service_id": "service_q76h4nl",
  "template_id": "template_8b0290k",
  "public_key": "ASFfy19YiDuf8bgRY",
  "template_params": {
    "title": "Cita registrada",
    "name": "{{nombre}}",
    "time": "{{hora}}",
    "message": "{{mensaje}}",
    "email": "{{correo}}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'neviarCorreo',
      apiUrl: 'https://api.emailjs.com/api/v1.0/email/send',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
