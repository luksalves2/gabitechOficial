import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Test APIs Group Code

class TestAPIsGroup {
  static String getBaseUrl() => 'https://google.com';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
  };
}

/// End Test APIs Group Code

/// Start Contacts Group Code

class ContactsGroup {
  static String getBaseUrl({
    String? instanceId = '3DF23FAF0A4FA081DA1332C54B267657',
    String? instanceToken = '8D5DEA6580CC23C984D24A2E',
    String? clientToken = 'Fe73c27882d0542948fb97a59abe2176eS',
  }) =>
      'https://api.z-api.io/instances/${instanceId}/token/${instanceToken}';
  static Map<String, String> headers = {
    'Client-Token': '[Client-Token]',
  };
  static PegarImagemDoContatoCall pegarImagemDoContatoCall =
      PegarImagemDoContatoCall();
}

class PegarImagemDoContatoCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? instanceId = '3DF23FAF0A4FA081DA1332C54B267657',
    String? instanceToken = '8D5DEA6580CC23C984D24A2E',
    String? clientToken = 'Fe73c27882d0542948fb97a59abe2176eS',
  }) async {
    final baseUrl = ContactsGroup.getBaseUrl(
      instanceId: instanceId,
      instanceToken: instanceToken,
      clientToken: clientToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Pegar imagem do contato',
      apiUrl: '${baseUrl}/profile-picture?phone=${phone}',
      callType: ApiCallType.GET,
      headers: {
        'Client-Token': '${clientToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? linkImagem(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.link''',
      ));
}

/// End Contacts Group Code

/// Start Mensagens Group Code

class MensagensGroup {
  static String getBaseUrl() =>
      'https://xwwzsqjgksomniwkvznc.supabase.co/functions/v1';
  static Map<String, String> headers = {};
  static EnviarMensagensCall enviarMensagensCall = EnviarMensagensCall();
}

class EnviarMensagensCall {
  Future<ApiCallResponse> call({
    String? phone = '',
    String? message = '',
    String? messageType = '',
    String? gabineteId = '',
  }) async {
    final baseUrl = MensagensGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "phone": "${escapeStringForJson(phone)}",
  "message": "${escapeStringForJson(message)}",
  "audio": "<audio>",
  "video": "<video>",
  "image": "<image>",
  "document": "<document>",
  "delayMessage": 15,
  "message_type": "${escapeStringForJson(messageType)}",
  "gabinete_id": "${escapeStringForJson(gabineteId)}",
  "contactName": "<contactName>"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'enviar Mensagens',
      apiUrl: '${baseUrl}/swift-service',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? messageid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message_id''',
      ));
  dynamic? zapiresponse(dynamic response) => getJsonField(
        response,
        r'''$.zapi_response''',
      );
}

/// End Mensagens Group Code

/// Start busca Solicitacoes Group Code

class BuscaSolicitacoesGroup {
  static String getBaseUrl() =>
      'https://xwwzsqjgksomniwkvznc.supabase.co/rest/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
    'Range': '0-19',
  };
  static BuscaAnaliseCall buscaAnaliseCall = BuscaAnaliseCall();
  static BuscaEmAtendimentoCall buscaEmAtendimentoCall =
      BuscaEmAtendimentoCall();
  static BuscaConcluidosCall buscaConcluidosCall = BuscaConcluidosCall();
  static BuscaEmAtrasoCall buscaEmAtrasoCall = BuscaEmAtrasoCall();
}

class BuscaAnaliseCall {
  Future<ApiCallResponse> call({
    String? nome = '',
    String? gabineteId = '',
    String? categoriaId = '',
  }) async {
    final baseUrl = BuscaSolicitacoesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'busca analise',
      apiUrl:
          '${baseUrl}/solicitacoes?select=*&nome=ilike.*${nome}*&status_atendimento=eq.1&gabinete_id=eq.${gabineteId}&categoria_id=${categoriaId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Range': '0-19',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? solidid(dynamic response) => (getJsonField(
        response,
        r'''$[:].solid_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? createdat(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? cidadaoid(dynamic response) => (getJsonField(
        response,
        r'''$[:].cidadao_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? descricao(dynamic response) => (getJsonField(
        response,
        r'''$[:].descricao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? userid(dynamic response) => (getJsonField(
        response,
        r'''$[:].user_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? datacriacao(dynamic response) => (getJsonField(
        response,
        r'''$[:].data_criacao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? responssaveluser(dynamic response) => (getJsonField(
        response,
        r'''$[:].responssavel_user''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? dataalteracao(dynamic response) => (getJsonField(
        response,
        r'''$[:].data_alteracao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? categoriaid(dynamic response) => (getJsonField(
        response,
        r'''$[:].categoria_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? statusAtendimento(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_atendimento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? gabineteid(dynamic response) => (getJsonField(
        response,
        r'''$[:].gabinete_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? resumoConversa(dynamic response) => (getJsonField(
        response,
        r'''$[:].resumo_conversa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? tagPrioridade(dynamic response) => (getJsonField(
        response,
        r'''$[:].tag_prioridade''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? atividadeAtual(dynamic response) => getJsonField(
        response,
        r'''$[:].atividade_atual''',
        true,
      ) as List?;
  List<String>? dtInicialAtendimento(dynamic response) => (getJsonField(
        response,
        r'''$[:].dt_inicial_atendimento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? dtfimAtendimento(dynamic response) => getJsonField(
        response,
        r'''$[:].dt_fim_atendimento''',
        true,
      ) as List?;
  List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? dataFimAtendimento(dynamic response) => (getJsonField(
        response,
        r'''$[:].data_fim_atendimento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BuscaEmAtendimentoCall {
  Future<ApiCallResponse> call({
    String? gabineteId = '',
    String? categoriaId = '',
    String? nome = '',
  }) async {
    final baseUrl = BuscaSolicitacoesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'busca em atendimento',
      apiUrl:
          '${baseUrl}/solicitacoes?select=*&nome=ilike.*${nome}*&status_atendimento=eq.2&gabinete_id=eq.${gabineteId}&categoria_id=${categoriaId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Range': '0-19',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? solidid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].solid_id''',
      ));
  String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
  String? cidadaoid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cidadao_id''',
      ));
  String? descricao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].descricao''',
      ));
  String? dataalteracao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_alteracao''',
      ));
  String? responssaveluser(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].responssavel_user''',
      ));
  String? datacriacao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_criacao''',
      ));
  String? userid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_id''',
      ));
  String? categoriaid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].categoria_id''',
      ));
  int? statusatendimento(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].status_atendimento''',
      ));
  String? gabineteid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].gabinete_id''',
      ));
  String? resumoconversa(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].resumo_conversa''',
      ));
  int? tagprioridade(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].tag_prioridade''',
      ));
  String? dtinicialatendimento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].dt_inicial_atendimento''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
  String? datafimatendimento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].data_fim_atendimento''',
      ));
  String? datainicioatendimento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].data_inicio_atendimento''',
      ));
  String? categorianome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].categoria_nome''',
      ));
}

class BuscaConcluidosCall {
  Future<ApiCallResponse> call({
    String? gabineteId = '',
    String? categoriaId = '',
    String? nome = '',
  }) async {
    final baseUrl = BuscaSolicitacoesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'busca concluidos',
      apiUrl:
          '${baseUrl}/solicitacoes?select=*&nome=ilike.*${nome}*&status_atendimento=eq.3&gabinete_id=eq.${gabineteId}&categoria_id=${categoriaId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Range': '0-19',
      },
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

class BuscaEmAtrasoCall {
  Future<ApiCallResponse> call({
    String? gabineteId = '',
    String? categoriaId = '',
    String? nome = '',
  }) async {
    final baseUrl = BuscaSolicitacoesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'busca em atraso',
      apiUrl:
          '${baseUrl}/solicitacoes?select=*&nome=ilike.*${nome}*&status_atendimento=eq.4&gabinete_id=eq.${gabineteId}&categoria_id=${categoriaId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Range': '0-19',
      },
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

/// End busca Solicitacoes Group Code

/// Start  tabelas por api  Group Code

class TabelasPorApiGroup {
  static String getBaseUrl() =>
      'https://xwwzsqjgksomniwkvznc.supabase.co/rest/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
    'Range': '0-20',
  };
  static ListaHomeCall listaHomeCall = ListaHomeCall();
  static CidadaosCall cidadaosCall = CidadaosCall();
}

class ListaHomeCall {
  Future<ApiCallResponse> call({
    String? gabineteId = '',
  }) async {
    final baseUrl = TabelasPorApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'lista home',
      apiUrl:
          '${baseUrl}/dashboard_numeros_contados_lista?select=*&gabinete_id=eq.${gabineteId}&limit=10',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Range': '0-20',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? gabineteid(dynamic response) => (getJsonField(
        response,
        r'''$[:].gabinete_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? valor(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class CidadaosCall {
  Future<ApiCallResponse> call({
    int? limit,
    int? skip,
    String? gabineteId = '',
    String? nome = '',
  }) async {
    final baseUrl = TabelasPorApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Cidadaos',
      apiUrl:
          '${baseUrl}/cidadaos?select=*&nome=ilike.*${nome}*&gabinete_id=eq.${gabineteId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Range': '0-20',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? cidadaoid(dynamic response) => (getJsonField(
        response,
        r'''$[:].cidadao_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? email(dynamic response) => getJsonField(
        response,
        r'''$[:].email''',
        true,
      ) as List?;
  List<String>? phone(dynamic response) => (getJsonField(
        response,
        r'''$[:].phone''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? dtnascimento(dynamic response) => getJsonField(
        response,
        r'''$[:].dt_nascimento''',
        true,
      ) as List?;
  List? logradouro(dynamic response) => getJsonField(
        response,
        r'''$[:].logradouro''',
        true,
      ) as List?;
  List? bairro(dynamic response) => getJsonField(
        response,
        r'''$[:].bairro''',
        true,
      ) as List?;
  List? cidade(dynamic response) => getJsonField(
        response,
        r'''$[:].cidade''',
        true,
      ) as List?;
  List? uf(dynamic response) => getJsonField(
        response,
        r'''$[:].uf''',
        true,
      ) as List?;
  List? cep(dynamic response) => getJsonField(
        response,
        r'''$[:].cep''',
        true,
      ) as List?;
  List? numero(dynamic response) => getJsonField(
        response,
        r'''$[:].numero''',
        true,
      ) as List?;
  List? categoriaid(dynamic response) => getJsonField(
        response,
        r'''$[:].categoria_id''',
        true,
      ) as List?;
  List<String>? gabineteid(dynamic response) => (getJsonField(
        response,
        r'''$[:].gabinete_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? statusid(dynamic response) => getJsonField(
        response,
        r'''$[:].status_id''',
        true,
      ) as List?;
  List? avatarurl(dynamic response) => getJsonField(
        response,
        r'''$[:].avatar_url''',
        true,
      ) as List?;
  List<bool>? contatogrupo(dynamic response) => (getJsonField(
        response,
        r'''$[:].contato_grupo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? resumoconversa(dynamic response) => getJsonField(
        response,
        r'''$[:].resumo_conversa''',
        true,
      ) as List?;
  List? datanascimentos(dynamic response) => getJsonField(
        response,
        r'''$[:].data_nascimento_s''',
        true,
      ) as List?;
  List? complemento(dynamic response) => getJsonField(
        response,
        r'''$[:].complemento''',
        true,
      ) as List?;
  List<bool>? conversafinalizada(dynamic response) => (getJsonField(
        response,
        r'''$[:].conversa_finalizada''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? conversaatendida(dynamic response) => (getJsonField(
        response,
        r'''$[:].conversa_atendida''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? genero(dynamic response) => getJsonField(
        response,
        r'''$[:].genero''',
        true,
      ) as List?;
  List? idade(dynamic response) => getJsonField(
        response,
        r'''$[:].idade''',
        true,
      ) as List?;
  List<bool>? isgroup(dynamic response) => (getJsonField(
        response,
        r'''$[:].is_group''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? tagtipo(dynamic response) => getJsonField(
        response,
        r'''$[:].tag_tipo''',
        true,
      ) as List?;
}

/// End  tabelas por api  Group Code

class APIEnviarTextoSimplesCall {
  static Future<ApiCallResponse> call({
    String? clientToken = '',
    String? instanceId = '',
    String? instanceToken = '',
    String? phone = '',
    String? message = '',
  }) async {
    final ffApiRequestBody = '''
{
    "phone": "${escapeStringForJson(phone)}",
    "message": "${escapeStringForJson(message)}",
    "delayMessage": 15
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'API Enviar texto simples',
      apiUrl:
          'https://api.z-api.io/instances/${instanceId}/token/${instanceToken}/send-text',
      callType: ApiCallType.POST,
      headers: {
        'Client-Token': '${clientToken}',
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

  static String? messageId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.messageId''',
      ));
}

class APIPegarChatsCall {
  static Future<ApiCallResponse> call({
    String? clientToken = '',
    String? instanceId = '',
    String? instanceToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'API Pegar chats',
      apiUrl:
          'https://api.z-api.io/instances/${instanceId}/token/${instanceToken}/chats?page=1&pageSize=20',
      callType: ApiCallType.GET,
      headers: {
        'Client-Token': '${clientToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[*].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? phone(dynamic response) => (getJsonField(
        response,
        r'''$[*].phone''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? lastMessageTime(dynamic response) => (getJsonField(
        response,
        r'''$[*].lastMessageTime''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? isGroupAnnouncement(dynamic response) => (getJsonField(
        response,
        r'''$[:].isGroupAnnouncement''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
}

class PegarImagemContatosViaSupabaseCall {
  static Future<ApiCallResponse> call({
    String? phone = '',
    String? connectPhone = '',
    String? cidadaoId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "phone": "${escapeStringForJson(phone)}",
  "connectedPhone": "${escapeStringForJson(connectPhone)}",
  "cidadaoId": "${escapeStringForJson(cidadaoId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'pegar imagem contatos via supabase',
      apiUrl:
          'https://xwwzsqjgksomniwkvznc.supabase.co/functions/v1/smart-service',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  static String? avatarurl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.avatar_url''',
      ));
  static String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
}

class ListaAtividadesVinculadasENaoVinculadasACategoriaCall {
  static Future<ApiCallResponse> call({
    String? categoriaId = '',
    String? gabineteId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "categoria_id": "${escapeStringForJson(categoriaId)}",
  "gabinete_id": "${escapeStringForJson(gabineteId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Lista Atividades vinculadas e nao vinculadas a categoria',
      apiUrl:
          'https://xwwzsqjgksomniwkvznc.supabase.co/functions/v1/hyper-function',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  static List<String>? atvid(dynamic response) => (getJsonField(
        response,
        r'''$[:].atv__id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? descricao(dynamic response) => (getJsonField(
        response,
        r'''$[:].descricao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? gabineteid(dynamic response) => (getJsonField(
        response,
        r'''$[:].gabinete_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? vinculada(dynamic response) => (getJsonField(
        response,
        r'''$[:].vinculada''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
}

class PegarChatsAPICall {
  static Future<ApiCallResponse> call({
    String? gabineteId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "gabinete_id": "${escapeStringForJson(gabineteId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Pegar chats API ',
      apiUrl:
          'https://xwwzsqjgksomniwkvznc.supabase.co/functions/v1/quick-processor',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

class BuscarDadosCEPCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Buscar dados CEP',
      apiUrl: 'viacep.com.br/ws/${cep}/json/',
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

  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
  static String? logradouro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? localidade(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.estado''',
      ));
}

class BuscaCidadaoCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? gabineteId = '',
    String? genero = '',
    String? bairro = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Busca cidadao',
      apiUrl:
          'https://xwwzsqjgksomniwkvznc.supabase.co/rest/v1/cidadaos?select=*&nome=ilike.*${nome}*&gabinete_id=eq.${gabineteId}&bairro=ilike.*${bairro}*&genero=ilike.*${genero}*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Range': '0-49',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? cidadaoid(dynamic response) => (getJsonField(
        response,
        r'''$[:].cidadao_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? createdat(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? email(dynamic response) => getJsonField(
        response,
        r'''$[:].email''',
        true,
      ) as List?;
  static List<String>? phone(dynamic response) => (getJsonField(
        response,
        r'''$[:].phone''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? dtnascimento(dynamic response) => getJsonField(
        response,
        r'''$[:].dt_nascimento''',
        true,
      ) as List?;
  static List? logradouro(dynamic response) => getJsonField(
        response,
        r'''$[:].logradouro''',
        true,
      ) as List?;
  static List? bairro(dynamic response) => getJsonField(
        response,
        r'''$[:].bairro''',
        true,
      ) as List?;
  static List? cidade(dynamic response) => getJsonField(
        response,
        r'''$[:].cidade''',
        true,
      ) as List?;
  static List? uf(dynamic response) => getJsonField(
        response,
        r'''$[:].uf''',
        true,
      ) as List?;
  static List? cep(dynamic response) => getJsonField(
        response,
        r'''$[:].cep''',
        true,
      ) as List?;
  static List? numero(dynamic response) => getJsonField(
        response,
        r'''$[:].numero''',
        true,
      ) as List?;
  static List? categoriaid(dynamic response) => getJsonField(
        response,
        r'''$[:].categoria_id''',
        true,
      ) as List?;
  static List<String>? gabineteid(dynamic response) => (getJsonField(
        response,
        r'''$[:].gabinete_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? statusid(dynamic response) => getJsonField(
        response,
        r'''$[:].status_id''',
        true,
      ) as List?;
  static List? avatarurl(dynamic response) => getJsonField(
        response,
        r'''$[:].avatar_url''',
        true,
      ) as List?;
  static List<bool>? contatogrupo(dynamic response) => (getJsonField(
        response,
        r'''$[:].contato_grupo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List? resumoconversa(dynamic response) => getJsonField(
        response,
        r'''$[:].resumo_conversa''',
        true,
      ) as List?;
  static List? updateat(dynamic response) => getJsonField(
        response,
        r'''$[:].update_at''',
        true,
      ) as List?;
  static List? longitudeg(dynamic response) => getJsonField(
        response,
        r'''$[:].longitude_g''',
        true,
      ) as List?;
  static List? latitudeg(dynamic response) => getJsonField(
        response,
        r'''$[:].latitude_g''',
        true,
      ) as List?;
  static List<String>? connectedphone(dynamic response) => (getJsonField(
        response,
        r'''$[:].connected_phone''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? datanascimentos(dynamic response) => getJsonField(
        response,
        r'''$[:].data_nascimento_s''',
        true,
      ) as List?;
  static List? complemento(dynamic response) => getJsonField(
        response,
        r'''$[:].complemento''',
        true,
      ) as List?;
  static List<bool>? conversafinalizada(dynamic response) => (getJsonField(
        response,
        r'''$[:].conversa_finalizada''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<bool>? conversaatendida(dynamic response) => (getJsonField(
        response,
        r'''$[:].conversa_atendida''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List? genero(dynamic response) => getJsonField(
        response,
        r'''$[:].genero''',
        true,
      ) as List?;
  static List? idade(dynamic response) => getJsonField(
        response,
        r'''$[:].idade''',
        true,
      ) as List?;
}

class LerChatsCall {
  static Future<ApiCallResponse> call({
    String? gabineteId = '',
    String? phone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "gabinete_id": "${escapeStringForJson(gabineteId)}",
  "phone": "${escapeStringForJson(phone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Ler chats',
      apiUrl:
          'https://xwwzsqjgksomniwkvznc.supabase.co/functions/v1/lerChats-function',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  static bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  static dynamic? zapiresponse(dynamic response) => getJsonField(
        response,
        r'''$.zapi_response''',
      );
  static bool? value(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.zapi_response.value''',
      ));
}

class ChatsWhatsAppCall {
  static Future<ApiCallResponse> call({
    String? lidosEnaoLidos = '',
    String? gabineteId = '',
    String? nome = '',
    String? group = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Chats WhatsApp',
      apiUrl:
          'https://xwwzsqjgksomniwkvznc.supabase.co/rest/v1/chats_whatsapp?select=*&name=ilike.*${nome}*&gabinete_id=eq.${gabineteId}&lido=${lidosEnaoLidos}&is_group=${group}&order=updated_at.desc',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].phone''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
  static bool? isgroup(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].is_group''',
      ));
  static bool? ismuted(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].is_muted''',
      ));
  static bool? ismarkedspam(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].is_marked_spam''',
      ));
  static String? gabineteid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].gabinete_id''',
      ));
  static String? updatedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].updated_at''',
      ));
  static bool? lido(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].lido''',
      ));
  static String? cidadaoid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cidadao_id''',
      ));
}

class StatusConexoWhatsappCall {
  static Future<ApiCallResponse> call({
    String? gabineteId = '',
    String? phone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "gabinete_id": "${escapeStringForJson(gabineteId)}",
  "phone": "${escapeStringForJson(phone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'status conexo whatsapp',
      apiUrl:
          'https://xwwzsqjgksomniwkvznc.supabase.co/functions/v1/statusConexaoWhats',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  static bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  static dynamic? status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static bool? connected(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status.connected''',
      ));
  static bool? session(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status.session''',
      ));
  static int? created(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status.created''',
      ));
  static String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status.error''',
      ));
  static bool? smartphoneConnected(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.status.smartphoneConnected''',
      ));
}

class PegarQRCodeCall {
  static Future<ApiCallResponse> call({
    String? gabineteId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "gabinete_id": "${escapeStringForJson(gabineteId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Pegar QRCode',
      apiUrl:
          'https://xwwzsqjgksomniwkvznc.supabase.co/functions/v1/pegarQRCode',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  static bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  static dynamic? status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static String? qRCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status.value''',
      ));
  static bool? connected(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status.connected''',
      ));
}

class InserirUsuarioUsersCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? name = '',
    String? senha = '',
    String? gabineteId = '',
    bool? admin,
    bool? telaVisao,
    bool? telaMensagens,
    bool? telaSolicitacao,
    bool? telaCidadao,
    bool? telaAtividade,
    bool? telaAniversario,
    bool? telaMapas,
    bool? telaPerfil,
    String? telefone = '',
    bool? telaTransmissoes,
    bool? telaNotificacoes,
    bool? telatutoriais,
  }) async {
    final ffApiRequestBody = '''
{
  "gabinete_id": "${escapeStringForJson(gabineteId)}",
  "email": "${escapeStringForJson(email)}",
  "nome": "${escapeStringForJson(name)}",
  "senha": "${escapeStringForJson(senha)}",
  "admin": ${admin},
  "tela_visao_geral": ${telaVisao},
  "tela_mensagens": ${telaMensagens},
  "tela_solicitacoes": ${telaSolicitacao},
  "tela_cidadaos": ${telaCidadao},
  "tela_atividades": ${telaAtividade},
  "tela_aniversarios": ${telaAniversario},
  "tela_mapas": ${telaMapas},
  "tela_perfil": ${telaPerfil},
  "telefone": "${escapeStringForJson(telefone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'inserir usuario users',
      apiUrl:
          'https://xwwzsqjgksomniwkvznc.supabase.co/functions/v1/smooth-processor',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  static String? errorerrorcode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.error.error_code''',
      ));
  static String? errormsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.msg''',
      ));
  static dynamic? error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  static int? errorcode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.error.code''',
      ));
}

class ListaContagemMesCall {
  static Future<ApiCallResponse> call({
    String? gabineteId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'lista contagem mes',
      apiUrl:
          'https://xwwzsqjgksomniwkvznc.supabase.co/rest/v1/dashboard_grafico_solicitacoes_mes_expanded?select=*&gabinete_id=eq.${gabineteId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Ranger': '0-9',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? gabineteid(dynamic response) => (getJsonField(
        response,
        r'''$[:].gabinete_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? categoria(dynamic response) => (getJsonField(
        response,
        r'''$[:].categoria''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? valor(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class BuscaMensagensWhatsAppCall {
  static Future<ApiCallResponse> call({
    String? gabineteId = '',
    String? phone = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'busca mensagens whatsApp',
      apiUrl:
          'https://xwwzsqjgksomniwkvznc.supabase.co/rest/v1/mensagens_whatsapp?select=*&gabinete_id=eq.${gabineteId}&phone=eq.${phone}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
      },
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

class ImportCSVGoogleCall {
  static Future<ApiCallResponse> call({
    String? url = '',
    String? gabineteId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "url": "${escapeStringForJson(url)}",
  "gabinete_id": "${escapeStringForJson(gabineteId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'import CSV google',
      apiUrl:
          'https://xwwzsqjgksomniwkvznc.supabase.co/functions/v1/import_google_contacts_csv',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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
