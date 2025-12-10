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
    int? pagina,
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

/// Start Uazapi Group Code

class UazapiGroup {
  static String getBaseUrl() => 'https://gabitech.uazapi.com';
  static Map<String, String> headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
  };
  static CriarInstanciaCall criarInstanciaCall = CriarInstanciaCall();
  static ConectarInstanciaCall conectarInstanciaCall = ConectarInstanciaCall();
  static StatusInstanciaCall statusInstanciaCall = StatusInstanciaCall();
  static ChatsCall chatsCall = ChatsCall();
  static MensagensDeUmChatCall mensagensDeUmChatCall = MensagensDeUmChatCall();
  static DadosDoContatoCall dadosDoContatoCall = DadosDoContatoCall();
  static EnviarMensagemCall enviarMensagemCall = EnviarMensagemCall();
  static EnviarImagemCall enviarImagemCall = EnviarImagemCall();
  static EnviarVideoCall enviarVideoCall = EnviarVideoCall();
  static EnviarDocumentoCall enviarDocumentoCall = EnviarDocumentoCall();
  static EnviarAudioCall enviarAudioCall = EnviarAudioCall();
  static BaixarAudioCall baixarAudioCall = BaixarAudioCall();
  static BaixarImagemCall baixarImagemCall = BaixarImagemCall();
  static BaixarDocCall baixarDocCall = BaixarDocCall();
  static MensagensEmMassaTextoCall mensagensEmMassaTextoCall =
      MensagensEmMassaTextoCall();
  static MensagensEmMassaArquivosCall mensagensEmMassaArquivosCall =
      MensagensEmMassaArquivosCall();
  static MensagensEmMassaVideoCall mensagensEmMassaVideoCall =
      MensagensEmMassaVideoCall();
  static MensagensEmMassaDocumentoCall mensagensEmMassaDocumentoCall =
      MensagensEmMassaDocumentoCall();
  static ListarCampanhasCall listarCampanhasCall = ListarCampanhasCall();
  static DeletarCampanhaCall deletarCampanhaCall = DeletarCampanhaCall();
}

class CriarInstanciaCall {
  Future<ApiCallResponse> call({
    String? nome = '',
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(nome)}",
  "systemName": "apilocal"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Instancia',
      apiUrl: '${baseUrl}/instance/init',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
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

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance.token''',
      ));
}

class ConectarInstanciaCall {
  Future<ApiCallResponse> call({
    String? telefone = '',
    String? token = '',
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "phone": "${escapeStringForJson(telefone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Conectar Instancia',
      apiUrl: '${baseUrl}/instance/connect',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
        'token': '${token}',
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

  String? codigo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance.paircode''',
      ));
}

class StatusInstanciaCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Status Instancia',
      apiUrl: '${baseUrl}/instance/status',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
        'token': '${token}',
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

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance.status''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance.profileName''',
      ));
  String? foto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance.profilePicUrl''',
      ));
  String? telefone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance.owner''',
      ));
}

class ChatsCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? limite,
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "operator": "AND",
  "sort": "-wa_lastMsgTimestamp",
  "limit": ${limite},
  "offset": 0,
  "wa_isGroup": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Chats',
      apiUrl: '${baseUrl}/chat/find',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
        'token': '${token}',
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

  List? chats(dynamic response) => getJsonField(
        response,
        r'''$.chats''',
        true,
      ) as List?;
}

class MensagensDeUmChatCall {
  Future<ApiCallResponse> call({
    String? varToken = '',
    String? chatId = '',
    int? limit,
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "chatid": "${escapeStringForJson(chatId)}",
  "limit": ${limit}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Mensagens de um Chat',
      apiUrl: '${baseUrl}/message/find',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
        'token': '${varToken}',
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

  List? mensagens(dynamic response) => getJsonField(
        response,
        r'''$.messages''',
        true,
      ) as List?;
  List<String>? idMensagem(dynamic response) => (getJsonField(
        response,
        r'''$.messages[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  dynamic nomeArquivoPDF(dynamic response) => getJsonField(
        response,
        r'''$.messages[:].content.fileName''',
      );
  String? tipoMensagem(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.messages[:].messageType''',
      ));
  int? dataMensagem(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.messages[:].messageTimestamp''',
      ));
  String? mensagem(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.messages[:].text''',
      ));
}

class DadosDoContatoCall {
  Future<ApiCallResponse> call({
    String? telefone = '',
    String? token = '',
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "number": "${escapeStringForJson(telefone)}",
  "preview": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Dados do contato',
      apiUrl: '${baseUrl}/chat/details',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
        'token': '${token}',
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

  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? telefone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
}

class EnviarMensagemCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? mensagem = '',
    String? telefone = '',
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "number": "${escapeStringForJson(telefone)}",
  "text": "${escapeStringForJson(mensagem)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Enviar Mensagem',
      apiUrl: '${baseUrl}/send/text',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
        'token': '${token}',
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

class EnviarImagemCall {
  Future<ApiCallResponse> call({
    String? telefone = '',
    String? texto = '',
    String? imagem = '',
    String? token = '',
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "number": "${escapeStringForJson(telefone)}",
  "type": "image",
  "text": "${escapeStringForJson(texto)}",
  "file": "${escapeStringForJson(imagem)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Enviar Imagem',
      apiUrl: '${baseUrl}/send/media',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
        'token': '${token}',
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

class EnviarVideoCall {
  Future<ApiCallResponse> call({
    String? telefone = '',
    String? texto = '',
    String? video = '',
    String? token = '',
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "number": "${escapeStringForJson(telefone)}",
  "type": "media",
  "text": "${escapeStringForJson(texto)}",
  "file": "<imagem>"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Enviar Video',
      apiUrl: '${baseUrl}/send/media',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
        'token': '${token}',
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

class EnviarDocumentoCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? telefone = '',
    String? documento = '',
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "number": "${escapeStringForJson(telefone)}",
  "type": "document",
  "file": "${escapeStringForJson(documento)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Enviar Documento',
      apiUrl: '${baseUrl}/send/media',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
        'token': '${token}',
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

class EnviarAudioCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? telefone = '',
    String? audio = '',
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "number": "${escapeStringForJson(telefone)}",
  "type": "audio",
  "file": "${escapeStringForJson(audio)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Enviar Audio',
      apiUrl: '${baseUrl}/send/media',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
        'token': '${token}',
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

class BaixarAudioCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? idAudio = '',
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": "${escapeStringForJson(idAudio)}",
  "generate_mp3": true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Baixar Audio',
      apiUrl: '${baseUrl}/message/download',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
        'token': '${token}',
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

  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.fileURL''',
      ));
}

class BaixarImagemCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? idImagem = '',
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": "${escapeStringForJson(idImagem)}",
  "return_link": true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Baixar Imagem',
      apiUrl: '${baseUrl}/message/download',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
        'token': '${token}',
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

class BaixarDocCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? idDoc = '',
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": "${escapeStringForJson(idDoc)}",
  "return_link": true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Baixar Doc',
      apiUrl: '${baseUrl}/message/download',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
        'token': '${token}',
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

class MensagensEmMassaTextoCall {
  Future<ApiCallResponse> call({
    List<String>? telefonesList,
    String? token = '',
    String? mensagem = '',
    int? data,
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();
    final telefones = _serializeList(telefonesList);

    final ffApiRequestBody = '''
{
  "numbers": ${telefones},
  "type": "text",
  "delayMin": 0,
  "delayMax": 0,
  "scheduled_for": ${data},
  "delay": 0,
  "text": "${escapeStringForJson(mensagem)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Mensagens em Massa Texto',
      apiUrl: '${baseUrl}/sender/simple',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
        'token': '${token}',
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

  String? folderId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.folder_id''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class MensagensEmMassaArquivosCall {
  Future<ApiCallResponse> call({
    List<String>? telefonesList,
    String? token = '',
    String? mensagem = '',
    String? arquivo = '',
    String? tipo = '',
    int? data,
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();
    final telefones = _serializeList(telefonesList);

    final ffApiRequestBody = '''
{
  "numbers": ${telefones},
  "type": "${escapeStringForJson(tipo)}",
  "delayMin": 0,
  "delayMax": 0,
  "scheduled_for": ${data},
  "delay": 0,
  "text": "${escapeStringForJson(mensagem)}",
  "file": "${escapeStringForJson(arquivo)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Mensagens em Massa Arquivos',
      apiUrl: '${baseUrl}/sender/simple',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
        'token': '${token}',
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

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.folder_id''',
      ));
}

class MensagensEmMassaVideoCall {
  Future<ApiCallResponse> call({
    List<String>? telefonesList,
    String? token = '',
    String? mensagem = '',
    String? video = '',
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();
    final telefones = _serializeList(telefonesList);

    final ffApiRequestBody = '''
{
  "numbers": ${telefones},
  "type": "video",
  "delayMin": 0,
  "delayMax": 0,
  "scheduled_for": 0,
  "delay": 0,
  "text": "${escapeStringForJson(mensagem)}",
  "file": "${escapeStringForJson(video)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Mensagens em Massa Video',
      apiUrl: '${baseUrl}/sender/simple',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
        'token': '${token}',
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

class MensagensEmMassaDocumentoCall {
  Future<ApiCallResponse> call({
    List<String>? telefonesList,
    String? token = '',
    String? mensagem = '',
    String? documento = '',
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();
    final telefones = _serializeList(telefonesList);

    final ffApiRequestBody = '''
{
  "numbers": ${telefones},
  "type": "document",
  "delayMin": 0,
  "delayMax": 0,
  "scheduled_for": 0,
  "delay": 0,
  "text": "${escapeStringForJson(mensagem)}",
  "file": "${escapeStringForJson(documento)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Mensagens em Massa Documento',
      apiUrl: '${baseUrl}/sender/simple',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
        'token': '${token}',
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

class ListarCampanhasCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Listar Campanhas',
      apiUrl: '${baseUrl}/sender/listfolders',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
        'token': '${token}',
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

  List<int>? entregues(dynamic response) => (getJsonField(
        response,
        r'''$[:].log_delivered''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? falhas(dynamic response) => (getJsonField(
        response,
        r'''$[:].log_failed''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? totalReproduzido(dynamic response) => (getJsonField(
        response,
        r'''$[:].log_played''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? totalMensagemLida(dynamic response) => (getJsonField(
        response,
        r'''$[:].log_read''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? enviosSucessos(dynamic response) => (getJsonField(
        response,
        r'''$[:].log_sucess''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? totalTentativasDestinatarios(dynamic response) => (getJsonField(
        response,
        r'''$[:].log_total''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class DeletarCampanhaCall {
  Future<ApiCallResponse> call({
    String? idCampanha = '',
    String? acao = '',
    String? token = '',
  }) async {
    final baseUrl = UazapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "folder_id": "${escapeStringForJson(idCampanha)}",
  "action": "${escapeStringForJson(acao)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Deletar Campanha',
      apiUrl: '${baseUrl}/sender/edit',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'admintoken': 'FNTW4J6mq5Fiep7wJO4OY1QbXSyTBIOj9HXp3A40DK5caRUKuY',
        'token': '${token}',
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

/// End Uazapi Group Code

/// Start Supabase Group Code

class SupabaseGroup {
  static String getBaseUrl() => 'https://xwwzsqjgksomniwkvznc.supabase.co';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
    'Content-Type': 'application/json',
  };
  static AcessoresGabineteCall acessoresGabineteCall = AcessoresGabineteCall();
  static AcessoresGabineteVereadorCall acessoresGabineteVereadorCall =
      AcessoresGabineteVereadorCall();
  static AtividadesGabineteCall atividadesGabineteCall =
      AtividadesGabineteCall();
  static CadastrarAcessorCall cadastrarAcessorCall = CadastrarAcessorCall();
  static DetalhesDoUsuarioCall detalhesDoUsuarioCall = DetalhesDoUsuarioCall();
  static DashboardCall dashboardCall = DashboardCall();
  static GraficoDashboardCall graficoDashboardCall = GraficoDashboardCall();
  static AniversariantesCall aniversariantesCall = AniversariantesCall();
  static DashboardCidadaosCall dashboardCidadaosCall = DashboardCidadaosCall();
  static SolicitacoesGabineteCall solicitacoesGabineteCall =
      SolicitacoesGabineteCall();
  static DashCidadaosCall dashCidadaosCall = DashCidadaosCall();
  static TransmissoesCall transmissoesCall = TransmissoesCall();
  static DadosDasCampanhasCall dadosDasCampanhasCall = DadosDasCampanhasCall();
  static ListarBairrosCidadaosCall listarBairrosCidadaosCall =
      ListarBairrosCidadaosCall();
  static FiltrosCidadaosCampanhaCall filtrosCidadaosCampanhaCall =
      FiltrosCidadaosCampanhaCall();
  static InserirAcessorGabineteCall inserirAcessorGabineteCall =
      InserirAcessorGabineteCall();
  static CategoriasGabineteCall categoriasGabineteCall =
      CategoriasGabineteCall();
  static ExcuirTarefasECategoriasCall excuirTarefasECategoriasCall =
      ExcuirTarefasECategoriasCall();
  static ExcuirTarefasECategoriasCopyCall excuirTarefasECategoriasCopyCall =
      ExcuirTarefasECategoriasCopyCall();
  static ChatsAtendimentosCall chatsAtendimentosCall = ChatsAtendimentosCall();
  static AtualizarSenhaCall atualizarSenhaCall = AtualizarSenhaCall();
  static CidadaosMapaCall cidadaosMapaCall = CidadaosMapaCall();
}

class AcessoresGabineteCall {
  Future<ApiCallResponse> call({
    int? idGabinete,
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_gabinete_id": ${idGabinete}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Acessores Gabinete',
      apiUrl: '${baseUrl}/rest/v1/rpc/listar_acessores_gabinete',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

class AcessoresGabineteVereadorCall {
  Future<ApiCallResponse> call({
    int? idGabinete,
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_gabinete_id": ${idGabinete}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Acessores Gabinete Vereador',
      apiUrl: '${baseUrl}/rest/v1/rpc/detalhes_acessores_gabinete',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  int? totalAcessores(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total_acessores''',
      ));
  int? acessoresAtivos(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.acessores_ativos''',
      ));
  int? acessoresInativos(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.acessores_inativos''',
      ));
  List? acessoresLista(dynamic response) => getJsonField(
        response,
        r'''$.acessores''',
        true,
      ) as List?;
}

class AtividadesGabineteCall {
  Future<ApiCallResponse> call({
    int? idGabinete,
    String? varStatus = '',
    String? varCategoria = '',
    String? varTitulo = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_gabinete_id": ${idGabinete},
  "p_status": "${escapeStringForJson(varStatus)}",
  "p_categoria_nome": "${escapeStringForJson(varCategoria)}",
  "p_titulo": "${escapeStringForJson(varTitulo)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Atividades Gabinete',
      apiUrl: '${baseUrl}/rest/v1/rpc/dashboard_tarefas_gabinete',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  int? totalTarefas(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total_tarefas''',
      ));
  int? totalCategorias(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total_categorias''',
      ));
  int? totalTarefasPendentes(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total_tarefas_pendentes''',
      ));
  int? totalTarefasConcluidas(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total_tarefas_concluidas''',
      ));
  List? tarefas(dynamic response) => getJsonField(
        response,
        r'''$.tarefas''',
        true,
      ) as List?;
  List? categorias(dynamic response) => getJsonField(
        response,
        r'''$.categorias''',
        true,
      ) as List?;
}

class CadastrarAcessorCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? senha = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(senha)}",
  "email_confirm": true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cadastrar Acessor',
      apiUrl: '${baseUrl}/auth/v1/admin/users',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc0MTAyNjUxMiwiZXhwIjoyMDU2NjAyNTEyfQ.BKPG7LApWeYhSomFhRN1LO-1Rel7h3v2YVBC31w6cgw',
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

  String? uuid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class DetalhesDoUsuarioCall {
  Future<ApiCallResponse> call({
    int? idUsuario,
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_usuario_id": ${idUsuario}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Detalhes do Usuario',
      apiUrl: '${baseUrl}/rest/v1/rpc/detalhes_avatar_usuario',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  String? iniciais(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.iniciais''',
      ));
  bool? temFoto(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.tem_foto''',
      ));
  String? foto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.foto''',
      ));
}

class DashboardCall {
  Future<ApiCallResponse> call({
    int? idGabinete,
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_gabinete_id": ${idGabinete}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard',
      apiUrl: '${baseUrl}/rest/v1/rpc/dashboard_solicitacoes_gabinete',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  int? emAtendimento(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.em_atendimento''',
      ));
  int? novasSolicitacoes(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.novas_solicitacoes''',
      ));
  int? totalCidadaos(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.cidadaos_cadastrados''',
      ));
  int? atedimentosFinalizados(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.conversas_finalizadas''',
      ));
  int? solicitacoesSemanais(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.solicitacoes_semanais''',
      ));
  int? solicitacoesAtrasadas(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.solicitacoes_atrasadas''',
      ));
}

class GraficoDashboardCall {
  Future<ApiCallResponse> call({
    int? idGabinete,
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_gabinete_id": ${idGabinete}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Grafico Dashboard',
      apiUrl: '${baseUrl}/rest/v1/rpc/chart_solicitacoes_7_dias',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  List<String>? labels(dynamic response) => (getJsonField(
        response,
        r'''$.labels''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? values(dynamic response) => (getJsonField(
        response,
        r'''$.values''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class AniversariantesCall {
  Future<ApiCallResponse> call({
    int? idGabinete,
    String? varPeriodo = '',
    String? pesquisa = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_gabinete_id": ${idGabinete},
  "p_periodo": "${escapeStringForJson(varPeriodo)}",
  "p_pesquisa": "${escapeStringForJson(pesquisa)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Aniversariantes',
      apiUrl: '${baseUrl}/rest/v1/rpc/aniversariantes_cidadaos',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

class DashboardCidadaosCall {
  Future<ApiCallResponse> call({
    int? idGabinete,
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_gabinete_id": ${idGabinete}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard Cidadaos',
      apiUrl: '${baseUrl}/rest/v1/rpc/dashboard_cidadaos_gabinete',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  int? mediaIdade(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.media_idade''',
      ));
  int? totalCidadaos(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total_cidadaos''',
      ));
  List<String>? cidadaosGeneroLabels(dynamic response) => (getJsonField(
        response,
        r'''$.cidadaos_generos.labels''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? cidadaoGeneroValues(dynamic response) => (getJsonField(
        response,
        r'''$.cidadaos_generos.values''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? cidadaosFaixaEtariaLabels(dynamic response) => (getJsonField(
        response,
        r'''$.cidadaos_faixa_etaria.labels''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? totalPreCadastro(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total_pre_cadastro''',
      ));
  List<int>? cidadaosFaixaEtariaValues(dynamic response) => (getJsonField(
        response,
        r'''$.cidadaos_faixa_etaria.values''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? bairros(dynamic response) => getJsonField(
        response,
        r'''$.cidadaos_bairro''',
        true,
      ) as List?;
  dynamic? totalGeneros(dynamic response) => getJsonField(
        response,
        r'''$.total_generos''',
      );
  int? totalGenerosOutros(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total_generos.outros''',
      ));
  int? totalFeminino(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total_generos.feminino''',
      ));
  int? totalMasculino(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total_generos.masculino''',
      ));
}

class SolicitacoesGabineteCall {
  Future<ApiCallResponse> call({
    int? idGabinete,
    int? limite,
    String? pesquisar = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_gabinete_id": ${idGabinete},
  "p_limite": ${limite},
  "p_pesquisa": "${escapeStringForJson(pesquisar)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Solicitacoes Gabinete',
      apiUrl: '${baseUrl}/rest/v1/rpc/listar_solicitacoes_gabinete',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  List<String>? listaStatus(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class DashCidadaosCall {
  Future<ApiCallResponse> call({
    String? idGabinete = '',
    int? limite,
    String? varStatus = '',
    String? pesquisar = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Dash Cidadaos',
      apiUrl: '${baseUrl}/rest/v1/cidadaos',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Content-Type': 'application/json',
      },
      params: {
        'gabinete': idGabinete,
        'limit': limite,
        'status': varStatus,
        'nome': pesquisar,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? listaIds(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class TransmissoesCall {
  Future<ApiCallResponse> call({
    String? idGabinete = '',
    String? varStatus = '',
    int? varLimite,
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Transmissoes',
      apiUrl: '${baseUrl}/rest/v1/transmissoes',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Content-Type': 'application/json',
      },
      params: {
        'gabinete': idGabinete,
        'status': varStatus,
        'limit': varLimite,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DadosDasCampanhasCall {
  Future<ApiCallResponse> call({
    dynamic? jsonJson,
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final json = _serializeJson(jsonJson, true);
    final ffApiRequestBody = '''
{
  "campanhas": ${json}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Dados Das Campanhas',
      apiUrl: '${baseUrl}/rest/v1/rpc/calcular_resumo_campanhas',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  int? total(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total''',
      ));
  int? enviando(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.enviando''',
      ));
  int? agendados(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.agendados''',
      ));
  int? alcancados(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.alcancados''',
      ));
  int? finalizados(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.finalizados''',
      ));
}

class ListarBairrosCidadaosCall {
  Future<ApiCallResponse> call({
    int? idGabinete,
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_gabinete_id": ${idGabinete}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Listar Bairros Cidadaos',
      apiUrl: '${baseUrl}/rest/v1/rpc/listar_filtros_cidadaos_gabinete',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  List<String>? bairros(dynamic response) => (getJsonField(
        response,
        r'''$.bairros''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? perfis(dynamic response) => (getJsonField(
        response,
        r'''$.perfis''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class FiltrosCidadaosCampanhaCall {
  Future<ApiCallResponse> call({
    int? idGabinete,
    List<String>? bairrosList,
    List<String>? perfisList,
    String? genero = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();
    final bairros = _serializeList(bairrosList);
    final perfis = _serializeList(perfisList);

    final ffApiRequestBody = '''
{
  "p_gabinete_id": ${idGabinete},
  "p_bairros": ${bairros},
  "p_perfis": ${perfis},
  "p_genero": "${escapeStringForJson(genero)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Filtros Cidadaos Campanha',
      apiUrl: '${baseUrl}/rest/v1/rpc/listar_telefones_cidadaos_filtro',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  List<String>? telefones(dynamic response) => (getJsonField(
        response,
        r'''$.telefones''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class InserirAcessorGabineteCall {
  Future<ApiCallResponse> call({
    int? idGabinete,
    String? acessor = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_gabinete_id": ${idGabinete},
  "p_acessor": "${escapeStringForJson(acessor)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Inserir Acessor Gabinete',
      apiUrl: '${baseUrl}/rest/v1/rpc/inserir_acessor_gabinete',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

class CategoriasGabineteCall {
  Future<ApiCallResponse> call({
    int? idGabinete,
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_gabinete_id": ${idGabinete}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Categorias Gabinete',
      apiUrl: '${baseUrl}/rest/v1/rpc/listar_categorias_gabinete',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  List<String>? categoriasItens(dynamic response) => (getJsonField(
        response,
        r'''$.categorias''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ExcuirTarefasECategoriasCall {
  Future<ApiCallResponse> call({
    int? idCategoria,
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_categoria_id": ${idCategoria}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Excuir Tarefas e Categorias',
      apiUrl: '${baseUrl}/rest/v1/rpc/excluir_tarefas_por_categoria',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  List<String>? categoriasItens(dynamic response) => (getJsonField(
        response,
        r'''$.categorias''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ExcuirTarefasECategoriasCopyCall {
  Future<ApiCallResponse> call({
    int? idCategoria,
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_categoria_id": ${idCategoria}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Excuir Tarefas e Categorias Copy',
      apiUrl: '${baseUrl}/rest/v1/rpc/excluir_categoria_com_tarefas',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  List<String>? categoriasItens(dynamic response) => (getJsonField(
        response,
        r'''$.categorias''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ChatsAtendimentosCall {
  Future<ApiCallResponse> call({
    int? idGabinete,
    int? varLimit,
    String? uuid = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_gabinete": ${idGabinete},
  "p_usuario_uuid": "${escapeStringForJson(uuid)}",
  "p_limit": ${varLimit}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Chats Atendimentos',
      apiUrl: '${baseUrl}/rest/v1/rpc/listar_atendimentos_gabinete',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

class AtualizarSenhaCall {
  Future<ApiCallResponse> call({
    String? novaSenha = '',
    String? token = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "password": "${escapeStringForJson(novaSenha)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Atualizar Senha',
      apiUrl: '${baseUrl}/auth/v1/user',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
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

class CidadaosMapaCall {
  Future<ApiCallResponse> call({
    int? gabinete,
    String? pesquisa = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_gabinete": ${gabinete},
  "p_pesquisa": "${escapeStringForJson(pesquisa)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cidadaos Mapa',
      apiUrl: '${baseUrl}/rest/v1/rpc/listar_cidadaos_mapa',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh3d3pzcWpna3NvbW5pd2t2em5jIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMjY1MTIsImV4cCI6MjA1NjYwMjUxMn0.wgqz5pmNzEjZJnhpA6qiWoMKTuIKe2FN3EZHnGwT6Go',
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

  List? enderecos(dynamic response) => getJsonField(
        response,
        r'''$.enderecos''',
        true,
      ) as List?;
}

/// End Supabase Group Code

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
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
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

class ObterLatitudeLongitudeCall {
  static Future<ApiCallResponse> call({
    String? endereco = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Obter Latitude Longitude',
      apiUrl: 'https://maps.googleapis.com/maps/api/geocode/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'address': endereco,
        'key': "AIzaSyAe_c1JUnPBn1Mtn_wHOB7rHEuRLTGCDaY",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? latitude(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.results[:].geometry.location.lat''',
      ));
  static double? longitude(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.results[:].geometry.location.lng''',
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
