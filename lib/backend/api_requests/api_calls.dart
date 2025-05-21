import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start RestAPiPohonAsuh Group Code

class RestAPiPohonAsuhGroup {
  static String getBaseUrl() => 'https://rest.pohonasuh.org/api/';
  static Map<String, String> headers = {};
  static LoginuserCall loginuserCall = LoginuserCall();
  static RegisterCall registerCall = RegisterCall();
  static GetProfilCall getProfilCall = GetProfilCall();
  static BlogCall blogCall = BlogCall();
  static BlogFirstCall blogFirstCall = BlogFirstCall();
  static BlogByfilterCall blogByfilterCall = BlogByfilterCall();
  static PohonheightlightCall pohonheightlightCall = PohonheightlightCall();
  static SliderCall sliderCall = SliderCall();
  static PohonCall pohonCall = PohonCall();
  static ImagepohonCall imagepohonCall = ImagepohonCall();
  static TobasketCall tobasketCall = TobasketCall();
  static GettrollyCall gettrollyCall = GettrollyCall();
  static GetPesankuCall getPesankuCall = GetPesankuCall();
  static ListPesankuCall listPesankuCall = ListPesankuCall();
  static MypesanupdateCall mypesanupdateCall = MypesanupdateCall();
  static MypesandeleteCall mypesandeleteCall = MypesandeleteCall();
}

class LoginuserCall {
  Future<ApiCallResponse> call({
    String? emaile = '',
    String? passe = '',
  }) async {
    final baseUrl = RestAPiPohonAsuhGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "emaile": "${escapeStringForJson(emaile)}",
  "passe": "${escapeStringForJson(passe)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'loginuser',
      apiUrl: '${baseUrl}loginuser',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': '*/*',
        'User-Agent': 'FlutterFlow/1.0',
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

  String? value(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.value''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  int? admin(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.admin''',
      ));
}

class RegisterCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? emaile = '',
    String? hp = '',
    String? passe = '',
  }) async {
    final baseUrl = RestAPiPohonAsuhGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'register',
      apiUrl: '${baseUrl}register',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'name': name,
        'emaile': emaile,
        'hp': hp,
        'passe': passe,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? value(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.value''',
      ));
}

class GetProfilCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = RestAPiPohonAsuhGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getProfil',
      apiUrl: '${baseUrl}getprofil',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BlogCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = RestAPiPohonAsuhGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'blog',
      apiUrl: '${baseUrl}blog',
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
}

class BlogFirstCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = RestAPiPohonAsuhGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'blogFirst',
      apiUrl: '${baseUrl}blogfirst',
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
}

class BlogByfilterCall {
  Future<ApiCallResponse> call({
    String? kategori = '',
  }) async {
    final baseUrl = RestAPiPohonAsuhGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'blogByfilter',
      apiUrl: '${baseUrl}blogbyfilter',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'kategori': kategori,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PohonheightlightCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = RestAPiPohonAsuhGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'pohonheightlight',
      apiUrl: '${baseUrl}pohonhighlight',
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
}

class SliderCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = RestAPiPohonAsuhGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'slider',
      apiUrl: '${baseUrl}slider',
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
}

class PohonCall {
  Future<ApiCallResponse> call({
    String? keyword = '',
  }) async {
    final baseUrl = RestAPiPohonAsuhGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'pohon',
      apiUrl: '${baseUrl}pohon',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'keyword': keyword,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ImagepohonCall {
  Future<ApiCallResponse> call({
    String? idpohon = '',
  }) async {
    final baseUrl = RestAPiPohonAsuhGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'imagepohon',
      apiUrl: '${baseUrl}pohonimage',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'idpohon': idpohon,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TobasketCall {
  Future<ApiCallResponse> call({
    String? idPohon = '',
    String? idMember = '',
    String? giftTo = '',
    String? pesan = '',
    String? nama = '',
    String? years = '1',
  }) async {
    final baseUrl = RestAPiPohonAsuhGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'tobasket',
      apiUrl: '${baseUrl}tobasket',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id_pohon': idPohon,
        'id_member': idMember,
        'gift_to': giftTo,
        'pesan': pesan,
        'nama': nama,
        'years': years,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GettrollyCall {
  Future<ApiCallResponse> call({
    String? idmember = '',
  }) async {
    final baseUrl = RestAPiPohonAsuhGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'gettrolly',
      apiUrl: '${baseUrl}gettroley',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'idmember': idmember,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPesankuCall {
  Future<ApiCallResponse> call({
    int? idmember,
  }) async {
    final baseUrl = RestAPiPohonAsuhGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getPesanku',
      apiUrl: '${baseUrl}getPesanku',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'idmember': idmember,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListPesankuCall {
  Future<ApiCallResponse> call({
    int? idmember,
  }) async {
    final baseUrl = RestAPiPohonAsuhGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'listPesanku',
      apiUrl: '${baseUrl}listPesanku',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'idmember': idmember,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MypesanupdateCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = RestAPiPohonAsuhGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'mypesanupdate',
      apiUrl: '${baseUrl}mypesanupdate',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MypesandeleteCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = RestAPiPohonAsuhGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'mypesandelete',
      apiUrl: '${baseUrl}mypesandelete',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End RestAPiPohonAsuh Group Code

/// Start Trolly Group Code

class TrollyGroup {
  static String getBaseUrl() => 'https://rest.pohonasuh.org/api';
  static Map<String, String> headers = {};
  static MytrolleyCall mytrolleyCall = MytrolleyCall();
  static DeletetrollyCall deletetrollyCall = DeletetrollyCall();
}

class MytrolleyCall {
  Future<ApiCallResponse> call({
    String? idmember = '',
  }) async {
    final baseUrl = TrollyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'mytrolley',
      apiUrl: '${baseUrl}/mytrolley',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'idmember': idmember,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletetrollyCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = TrollyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deletetrolly',
      apiUrl: '${baseUrl}/mytrolleydelete',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Trolly Group Code

/// Start payment Group Code

class PaymentGroup {
  static String getBaseUrl() => 'https://rest.pohonasuh.org/api';
  static Map<String, String> headers = {};
  static GetlistbankCall getlistbankCall = GetlistbankCall();
  static ConfirmationCall confirmationCall = ConfirmationCall();
  static GetconfirmasiCall getconfirmasiCall = GetconfirmasiCall();
  static UploadbuktitransferCall uploadbuktitransferCall =
      UploadbuktitransferCall();
  static VerivicationCall verivicationCall = VerivicationCall();
  static UpdateStatusProsesTagingCall updateStatusProsesTagingCall =
      UpdateStatusProsesTagingCall();
  static UpdateStatusComplateCall updateStatusComplateCall =
      UpdateStatusComplateCall();
}

class GetlistbankCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = PaymentGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getlistbank',
      apiUrl: '${baseUrl}/getrekening',
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
}

class ConfirmationCall {
  Future<ApiCallResponse> call({
    String? jmlPohon = '',
    String? price = '',
    String? methode = '',
    String? email = '',
    String? name = '',
    String? idMember = '',
  }) async {
    final baseUrl = PaymentGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'confirmation',
      apiUrl: '${baseUrl}/confirmasipembayaran',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id_member': idMember,
        'name': name,
        'email': email,
        'methode': methode,
        'price': price,
        'jml_pohon': jmlPohon,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetconfirmasiCall {
  Future<ApiCallResponse> call({
    int? idmember,
  }) async {
    final baseUrl = PaymentGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getconfirmasi',
      apiUrl: '${baseUrl}/getconfirmasi',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'idmember': idmember,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UploadbuktitransferCall {
  Future<ApiCallResponse> call({
    int? id,
    FFUploadedFile? image,
  }) async {
    final baseUrl = PaymentGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'uploadbuktitransfer',
      apiUrl: '${baseUrl}/uploadbuktitransfer',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
        'image': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VerivicationCall {
  Future<ApiCallResponse> call({
    int? id,
    int? iduser,
  }) async {
    final baseUrl = PaymentGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'verivication',
      apiUrl: '${baseUrl}/verivication',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
        'iduser': iduser,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateStatusProsesTagingCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PaymentGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'updateStatusProsesTaging',
      apiUrl: '${baseUrl}/updatestatusproses',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateStatusComplateCall {
  Future<ApiCallResponse> call({
    int? id,
    String? idpohon = '',
  }) async {
    final baseUrl = PaymentGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'updateStatusComplate',
      apiUrl: '${baseUrl}/updatestatuscomplate',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'id': id,
        'idpohon': idpohon,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End payment Group Code

/// Start Trees Group Code

class TreesGroup {
  static String getBaseUrl() => 'https://rest.pohonasuh.org/api';
  static Map<String, String> headers = {};
  static MytreesCall mytreesCall = MytreesCall();
  static OrdertreesCustomerCall ordertreesCustomerCall =
      OrdertreesCustomerCall();
  static MycertificateCall mycertificateCall = MycertificateCall();
  static GetdesaCall getdesaCall = GetdesaCall();
  static PohodesaCall pohodesaCall = PohodesaCall();
  static PohonmapCall pohonmapCall = PohonmapCall();
  static PohonmapallCall pohonmapallCall = PohonmapallCall();
  static PohonbypengurusCall pohonbypengurusCall = PohonbypengurusCall();
  static TambahFototagingCall tambahFototagingCall = TambahFototagingCall();
  static LihatfototagingCall lihatfototagingCall = LihatfototagingCall();
}

class MytreesCall {
  Future<ApiCallResponse> call({
    int? iduser,
  }) async {
    final baseUrl = TreesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'mytrees',
      apiUrl: '${baseUrl}/mytrees',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class OrdertreesCustomerCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TreesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ordertreesCustomer',
      apiUrl: '${baseUrl}/ordercustomer',
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
}

class MycertificateCall {
  Future<ApiCallResponse> call({
    int? idpengasuh,
  }) async {
    final baseUrl = TreesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'mycertificate',
      apiUrl: '${baseUrl}/mycertificate',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'idpengasuh': idpengasuh,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetdesaCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TreesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getdesa',
      apiUrl: '${baseUrl}/getdesa',
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
}

class PohodesaCall {
  Future<ApiCallResponse> call({
    String? desa = '',
  }) async {
    final baseUrl = TreesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'pohodesa',
      apiUrl: '${baseUrl}/pohonbydesa',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'desa': desa,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PohonmapCall {
  Future<ApiCallResponse> call({
    int? limit,
  }) async {
    final baseUrl = TreesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'pohonmap',
      apiUrl: '${baseUrl}/pohonmap',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'limit': limit,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? gpscode(dynamic response) => (getJsonField(
        response,
        r'''$[:].gpscode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latitude(dynamic response) => (getJsonField(
        response,
        r'''$[:].latitude''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? longitude(dynamic response) => (getJsonField(
        response,
        r'''$[:].longitude''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? desa(dynamic response) => (getJsonField(
        response,
        r'''$[:].desa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? idpohon(dynamic response) => (getJsonField(
        response,
        r'''$[:].idpohon''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? species(dynamic response) => (getJsonField(
        response,
        r'''$[:].species''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? lat(dynamic response) => (getJsonField(
        response,
        r'''$[:].location.latitude''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? lng(dynamic response) => (getJsonField(
        response,
        r'''$[:].location.longitude''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? localname(dynamic response) => (getJsonField(
        response,
        r'''$[:].localname''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? family(dynamic response) => (getJsonField(
        response,
        r'''$[:].family''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? adopted(dynamic response) => (getJsonField(
        response,
        r'''$[:].adopted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? dur(dynamic response) => (getJsonField(
        response,
        r'''$[:].dur''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? price(dynamic response) => (getJsonField(
        response,
        r'''$[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? qrcode(dynamic response) => (getJsonField(
        response,
        r'''$[:].qrcode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tglexp(dynamic response) => (getJsonField(
        response,
        r'''$[:].tgl_exp''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? fotoPohon(dynamic response) => (getJsonField(
        response,
        r'''$[:].foto_pohon''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? asl(dynamic response) => (getJsonField(
        response,
        r'''$[:].asl''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? harga(dynamic response) => (getJsonField(
        response,
        r'''$[:].harga''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? keterangan(dynamic response) => (getJsonField(
        response,
        r'''$[:].keterangan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? proses(dynamic response) => (getJsonField(
        response,
        r'''$[:].proses''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? admin(dynamic response) => (getJsonField(
        response,
        r'''$[:].admin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? catatan(dynamic response) => (getJsonField(
        response,
        r'''$[:].catatan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nama(dynamic response) => (getJsonField(
        response,
        r'''$[:].nama''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? gform(dynamic response) => (getJsonField(
        response,
        r'''$[:].gfrom''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? pengasuh(dynamic response) => (getJsonField(
        response,
        r'''$[:].pengasuh''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? methode(dynamic response) => (getJsonField(
        response,
        r'''$[:].methode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? cur(dynamic response) => (getJsonField(
        response,
        r'''$[:].cur''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tgladopt(dynamic response) => (getJsonField(
        response,
        r'''$[:].tgl_adopt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tglPesan(dynamic response) => (getJsonField(
        response,
        r'''$[:].tgl_pesan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? score(dynamic response) => (getJsonField(
        response,
        r'''$[:].score''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? beku(dynamic response) => (getJsonField(
        response,
        r'''$[:].beku''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? hit(dynamic response) => (getJsonField(
        response,
        r'''$[:].hit''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? dilihta(dynamic response) => (getJsonField(
        response,
        r'''$[:].dilihat''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? fotografer(dynamic response) => (getJsonField(
        response,
        r'''$[:].fotografer''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tglsurvey(dynamic response) => (getJsonField(
        response,
        r'''$[:].tgl_survey''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? surveyor(dynamic response) => (getJsonField(
        response,
        r'''$[:].surveyor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? soil(dynamic response) => (getJsonField(
        response,
        r'''$[:].soil''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? manfaat(dynamic response) => (getJsonField(
        response,
        r'''$[:].manfaat''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? slope(dynamic response) => (getJsonField(
        response,
        r'''$[:].slope''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? dpl(dynamic response) => (getJsonField(
        response,
        r'''$[:].dpl''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? keliling(dynamic response) => (getJsonField(
        response,
        r'''$[:].keliling''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? tinggi(dynamic response) => (getJsonField(
        response,
        r'''$[:].tinggi''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? diameter(dynamic response) => (getJsonField(
        response,
        r'''$[:].diameter''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? jenis(dynamic response) => (getJsonField(
        response,
        r'''$[:].jenis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? highlight(dynamic response) => getJsonField(
        response,
        r'''$[:].highlight''',
        true,
      ) as List?;
}

class PohonmapallCall {
  Future<ApiCallResponse> call({
    int? limit,
  }) async {
    final baseUrl = TreesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'pohonmapall',
      apiUrl: '${baseUrl}/pohonmapall',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? gpscode(dynamic response) => (getJsonField(
        response,
        r'''$[:].gpscode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? latitude(dynamic response) => (getJsonField(
        response,
        r'''$[:].latitude''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? longitude(dynamic response) => (getJsonField(
        response,
        r'''$[:].longitude''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? desa(dynamic response) => (getJsonField(
        response,
        r'''$[:].desa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? idpohon(dynamic response) => (getJsonField(
        response,
        r'''$[:].idpohon''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? species(dynamic response) => (getJsonField(
        response,
        r'''$[:].species''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? lat(dynamic response) => (getJsonField(
        response,
        r'''$[:].location.latitude''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? lng(dynamic response) => (getJsonField(
        response,
        r'''$[:].location.longitude''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? localname(dynamic response) => (getJsonField(
        response,
        r'''$[:].localname''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? family(dynamic response) => (getJsonField(
        response,
        r'''$[:].family''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? adopted(dynamic response) => (getJsonField(
        response,
        r'''$[:].adopted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? dur(dynamic response) => (getJsonField(
        response,
        r'''$[:].dur''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? price(dynamic response) => (getJsonField(
        response,
        r'''$[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? qrcode(dynamic response) => (getJsonField(
        response,
        r'''$[:].qrcode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tglexp(dynamic response) => (getJsonField(
        response,
        r'''$[:].tgl_exp''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? fotoPohon(dynamic response) => (getJsonField(
        response,
        r'''$[:].foto_pohon''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? asl(dynamic response) => (getJsonField(
        response,
        r'''$[:].asl''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? harga(dynamic response) => (getJsonField(
        response,
        r'''$[:].harga''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? keterangan(dynamic response) => (getJsonField(
        response,
        r'''$[:].keterangan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? proses(dynamic response) => (getJsonField(
        response,
        r'''$[:].proses''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? admin(dynamic response) => (getJsonField(
        response,
        r'''$[:].admin''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? catatan(dynamic response) => (getJsonField(
        response,
        r'''$[:].catatan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nama(dynamic response) => (getJsonField(
        response,
        r'''$[:].nama''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? gform(dynamic response) => (getJsonField(
        response,
        r'''$[:].gfrom''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? pengasuh(dynamic response) => (getJsonField(
        response,
        r'''$[:].pengasuh''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? methode(dynamic response) => (getJsonField(
        response,
        r'''$[:].methode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? cur(dynamic response) => (getJsonField(
        response,
        r'''$[:].cur''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tgladopt(dynamic response) => (getJsonField(
        response,
        r'''$[:].tgl_adopt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tglPesan(dynamic response) => (getJsonField(
        response,
        r'''$[:].tgl_pesan''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? score(dynamic response) => (getJsonField(
        response,
        r'''$[:].score''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? beku(dynamic response) => (getJsonField(
        response,
        r'''$[:].beku''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? hit(dynamic response) => (getJsonField(
        response,
        r'''$[:].hit''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? dilihta(dynamic response) => (getJsonField(
        response,
        r'''$[:].dilihat''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? fotografer(dynamic response) => (getJsonField(
        response,
        r'''$[:].fotografer''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tglsurvey(dynamic response) => (getJsonField(
        response,
        r'''$[:].tgl_survey''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? surveyor(dynamic response) => (getJsonField(
        response,
        r'''$[:].surveyor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? soil(dynamic response) => (getJsonField(
        response,
        r'''$[:].soil''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? manfaat(dynamic response) => (getJsonField(
        response,
        r'''$[:].manfaat''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? slope(dynamic response) => (getJsonField(
        response,
        r'''$[:].slope''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? dpl(dynamic response) => (getJsonField(
        response,
        r'''$[:].dpl''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? keliling(dynamic response) => (getJsonField(
        response,
        r'''$[:].keliling''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? tinggi(dynamic response) => (getJsonField(
        response,
        r'''$[:].tinggi''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? diameter(dynamic response) => (getJsonField(
        response,
        r'''$[:].diameter''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? jenis(dynamic response) => (getJsonField(
        response,
        r'''$[:].jenis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? highlight(dynamic response) => getJsonField(
        response,
        r'''$[:].highlight''',
        true,
      ) as List?;
}

class PohonbypengurusCall {
  Future<ApiCallResponse> call({
    String? iduser = '',
  }) async {
    final baseUrl = TreesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'pohonbypengurus',
      apiUrl: '${baseUrl}/ordercustomerbypengurus',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'iduser': iduser,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TambahFototagingCall {
  Future<ApiCallResponse> call({
    String? idpohon = '',
    int? idmember,
    int? idadopsi,
    String? tanggal = '',
    String? urlGambar = '',
  }) async {
    final baseUrl = TreesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'tambahFototaging',
      apiUrl: '${baseUrl}/addfototaging',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'idpohon': idpohon,
        'idmember': idmember,
        'idadopsi': idadopsi,
        'tanggal': tanggal,
        'urlGambar': urlGambar,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LihatfototagingCall {
  Future<ApiCallResponse> call({
    String? idpohon = '',
  }) async {
    final baseUrl = TreesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'lihatfototaging',
      apiUrl: '${baseUrl}/lihatfototaging',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'idpohon': idpohon,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Trees Group Code

class CekJarakPohonCall {
  static Future<ApiCallResponse> call({
    String? destination = '',
    String? origin = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CekJarakPohon',
      apiUrl:
          'https://maps.googleapis.com/maps/api/distancematrix/json?origins=${origin}&destinations=${destination}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "AIzaSyDsc1dFvcyeI0OiCBNjxVdSBkTx4xTtgns",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? jarak(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.rows[:].elements[:].distance.text''',
      ));
  static String? waktu(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.rows[:].elements[:].duration.text''',
      ));
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
