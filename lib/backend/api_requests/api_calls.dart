import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SteamAPISteamProfileCall {
  static Future<ApiCallResponse> call({
    String? steamId = '76561198157834627',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Steam API  Steam Profile',
      apiUrl:
          'http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "E2C8D2FED881F7A445076708CF2BF1E9",
        'steamids': steamId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic profilUrl(dynamic response) => getJsonField(
        response,
        r'''$.response.players[:].avatarmedium''',
      );
  static dynamic nickSteam(dynamic response) => getJsonField(
        response,
        r'''$.response.players[:].personaname''',
      );
}

class SteamUserOwnedGameCall {
  static Future<ApiCallResponse> call({
    String? steamid = '76561198157834627',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Steam User Owned Game',
      apiUrl: 'http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "E2C8D2FED881F7A445076708CF2BF1E9",
        'steamid': steamid,
        'format': "json",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic appId(dynamic response) => getJsonField(
        response,
        r'''$.response.games[:].appid''',
        true,
      );
  static dynamic count(dynamic response) => getJsonField(
        response,
        r'''$.response.game_count''',
      );
  static dynamic lastTime(dynamic response) => getJsonField(
        response,
        r'''$.response.games[:].rtime_last_played''',
        true,
      );
}

class GetGameInfoFromAppIdCall {
  static Future<ApiCallResponse> call({
    String? appId = '570',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getGame Info from AppId',
      apiUrl: 'http://store.steampowered.com/api/appdetails?appids=${appId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$..data.name''',
      );
  static dynamic isFree(dynamic response) => getJsonField(
        response,
        r'''$..data.is_free''',
      );
  static dynamic isWindows(dynamic response) => getJsonField(
        response,
        r'''$..data.platforms.windows''',
      );
  static dynamic isMac(dynamic response) => getJsonField(
        response,
        r'''$..data.platforms.mac''',
      );
  static dynamic isLinux(dynamic response) => getJsonField(
        response,
        r'''$..data.platforms.linux''',
      );
  static dynamic dateRelease(dynamic response) => getJsonField(
        response,
        r'''$..data.release_date.date''',
      );
  static dynamic bgImage(dynamic response) => getJsonField(
        response,
        r'''$..data.header_image''',
      );
  static dynamic shortDesc(dynamic response) => getJsonField(
        response,
        r'''$..data.short_description''',
      );
  static dynamic developer(dynamic response) => getJsonField(
        response,
        r'''$..data.developers''',
        true,
      );
  static dynamic publisher(dynamic response) => getJsonField(
        response,
        r'''$..data.publishers''',
        true,
      );
  static dynamic genreList(dynamic response) => getJsonField(
        response,
        r'''$..data.genres[:].description''',
        true,
      );
  static dynamic listSS(dynamic response) => getJsonField(
        response,
        r'''$..data.screenshots[:].path_full''',
        true,
      );
  static dynamic videoMaxUrl(dynamic response) => getJsonField(
        response,
        r'''$..data.movies[:].mp4.max''',
        true,
      );
  static dynamic website(dynamic response) => getJsonField(
        response,
        r'''$..data.support_info.url''',
      );
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
