// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_highlight_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RemoteHighlightDataSource implements RemoteHighlightDataSource {
  _RemoteHighlightDataSource(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= Api;
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<List<HighlightModel>>> getHighlight(
    int limit,
    int offset,
  ) async {
    final SharedPreferencesHelper _prefsHelper = SharedPreferencesHelper();
    final token = await _prefsHelper.getToken();

    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'limit': limit,
      r'offset': offset,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<HttpResponse<List<HighlightModel>>>(Options(
      method: 'GET',
      headers: {..._headers, 'Authorization': 'Bearer $token'},
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/highlight',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    var value = _result.data!
        .map((dynamic i) => HighlightModel.fromJson(i as Map<String, dynamic>))
        .toList();
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<List<HighlightModel>>> getNonHighlight(
    int limit,
    int offset,
  ) async {
    final SharedPreferencesHelper _prefsHelper = SharedPreferencesHelper();
    final token = await _prefsHelper.getToken();

    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'limit': limit,
      r'offset': offset,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<HttpResponse<List<HighlightModel>>>(Options(
      method: 'GET',
      headers: {..._headers, 'Authorization': 'Bearer $token'},
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/highlight/non-highlighted',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    var value = _result.data!
        .map((dynamic i) => HighlightModel.fromJson(i as Map<String, dynamic>))
        .toList();
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<HighlightModel>> getHighlightById(int id) async {
    final SharedPreferencesHelper _prefsHelper = SharedPreferencesHelper();
    final token = await _prefsHelper.getToken();
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<HighlightModel>>(Options(
      method: 'GET',
      headers: {..._headers, 'Authorization': 'Bearer $token'},
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/highlight/${id}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = HighlightModel.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<void>> deleteHighlightById(int id) async {
    final SharedPreferencesHelper _prefsHelper = SharedPreferencesHelper();
    final token = await _prefsHelper.getToken();
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result =
        await _dio.fetch<void>(_setStreamType<HttpResponse<void>>(Options(
      method: 'DELETE',
      headers: {..._headers, 'Authorization': 'Bearer $token'},
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/highlight/remove/${id}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final httpResponse = HttpResponse(null, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<void>> addHighlight(int id) async {
    final SharedPreferencesHelper _prefsHelper = SharedPreferencesHelper();
    final token = await _prefsHelper.getToken();
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result =
        await _dio.fetch<void>(_setStreamType<HttpResponse<void>>(Options(
      method: 'POST',
      headers: {..._headers, 'Authorization': 'Bearer $token'},
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/highlight/add/${id}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    print(_result);
    final httpResponse = HttpResponse(null, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
