import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

/// formato data json api
String? fncFormatoDataJSON(String? lastMessagteTime) {
  if (lastMessagteTime == null) return null;

  int timestamp = int.tryParse(lastMessagteTime) ?? 0;
  DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);

  // Dias da semana em português
  final diasSemana = ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb'];

  // Meses em português
  final meses = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro'
  ];

  String diaSemana = diasSemana[date.weekday % 7];
  String mes = meses[date.month - 1];
  int dia = date.day;
  String hora =
      '${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';

  return '$diaSemana. $mes ${dia}º - $hora';
}

String? verificarOuBuscarPhone(String? phone) {
  // função para formatar número de celular no Brasil com código internacional
  if (phone == null || phone.isEmpty) return null;

  // Remove todos os caracteres que não são dígitos
  String cleanedPhone = phone.replaceAll(RegExp(r'\D'), '');

  // Remove o código do país se presente (55 no início)
  if (cleanedPhone.startsWith('55')) {
    cleanedPhone = cleanedPhone.substring(2);
  }

  // Agora esperamos 11 dígitos: 2 de DDD + 9 dígitos do celular
  if (cleanedPhone.length == 11) {
    String ddd = cleanedPhone.substring(0, 2);
    String primeiroDigito = cleanedPhone.substring(2, 3);
    String parte1 = cleanedPhone.substring(3, 7);
    String parte2 = cleanedPhone.substring(7);

    return '+55 $ddd $primeiroDigito $parte1-$parte2';
  } else {
    return null; // Número inválido
  }
}

String primeirDiaMes(DateTime dataatual) {
  // criar uma função que recebe a data atual e devolve o primeiro dia do mes atual em formato string
  DateTime primeiroDia = DateTime(dataatual.year, dataatual.month, 1);
  return DateFormat('dd/MM/yyyy').format(primeiroDia);
}

String funcaoDataPrazo() {
  // gere uma função que pegue a data atual(hoje) e adiciona 21 dias e retorne um datatime
  final prazo = DateTime.now().add(Duration(days: 21));
  return prazo.toIso8601String();
}

String formataData(dynamic dtTime) {
  // funçção que recebe uma data "2025-05-14T14:42:00.536" e devolve no fomato  dd/MM/yyyy
  //
  final dateTime = DateTime.parse(dtTime);

  if (dtTime == null)
    return DateTime.now().toString(); // Return current date if input is null

  final dia = dateTime.day.toString().padLeft(2, '0');
  final mes = dateTime.month.toString().padLeft(2, '0');
  final ano = dateTime.year.toString();
  return '$dia/$mes/$ano'; // Return date with only year, month, and day
}

String? validaPrazoFinal(String datap) {
  // criei uma função para validar a data inserida(string), verifica se é uma data valida e nao pode ser menos que o dia atual e retorna as menssagem de erro pertinente
  try {
    DateTime inputDate = DateFormat('dd/MM/yyyy').parse(datap);
    DateTime currentDate = DateTime.now();

    // Zerar horas para comparar apenas a data
    DateTime inputDateOnly =
        DateTime(inputDate.year, inputDate.month, inputDate.day);
    DateTime currentDateOnly =
        DateTime(currentDate.year, currentDate.month, currentDate.day);

    if (inputDateOnly.isBefore(currentDateOnly)) {
      return 'A data não pode ser anterior ao dia atual.';
    }
    return null; // Data válida
  } catch (e) {
    return 'Data inválida. Por favor, insira uma data no formato dd/MM/yyyy.';
  }
}

List<LatLng>? parseLatLngString(List<String> latlngString) {
  return latlngString.map((item) {
    final parts = item.split(',');
    if (parts.length != 2) return LatLng(0, 0);

    final lat = double.tryParse(parts[0].trim());
    final lng = double.tryParse(parts[1].trim());

    if (lat == null || lng == null) return LatLng(0, 0);

    return LatLng(lat, lng);
  }).toList();
}

int? gerarTimestamp() {
  return DateTime.now().millisecondsSinceEpoch;
}

String formatarDataBrasil(String? dataUtc) {
  if (dataUtc == null || dataUtc.isEmpty) return "Data inválida";

  try {
    // Remove microssegundos e timezone, ficando só até os segundos
    final semMicros = dataUtc.split('.')[0]; // Ex: "2025-07-17T20:46:39"

    // Parse para DateTime e converte para fuso local
    DateTime data = DateTime.parse(semMicros).toLocal();

    // Formata para "dd/MM/yyyy HH:mm"
    return "${data.day.toString().padLeft(2, '0')}/"
        "${data.month.toString().padLeft(2, '0')} "
        "${data.hour.toString().padLeft(2, '0')}:"
        "${data.minute.toString().padLeft(2, '0')}";
  } catch (e) {
    return "Data inválida";
  }
}

String? formatarPhoneOuGrupo(String input) {
  if (input.endsWith('-group')) {
    return 'Grupo WhatsApp';
  }

  final somenteNumeros = input.replaceAll(RegExp(r'\D'), '');

  if (somenteNumeros.length < 12) {
    return 'Selecionar Chat';
  }

  // Padrão: 55 + DDD (2 dígitos) + número (8 ou 9 dígitos)
  final pais = somenteNumeros.substring(0, 2); // 55
  final ddd = somenteNumeros.substring(2, 4); // 47
  final corpo = somenteNumeros.substring(4); // 92216463 ou 992216463

  String formatado = '';

  if (corpo.length == 9) {
    // celular com 9 dígitos
    formatado = '+$pais ($ddd) ${corpo.substring(0, 5)}-${corpo.substring(5)}';
  } else if (corpo.length == 8) {
    // fixo ou celular antigo com 8 dígitos
    formatado = '+$pais ($ddd) ${corpo.substring(0, 4)}-${corpo.substring(4)}';
  } else {
    formatado = '+$pais ($ddd) $corpo';
  }

  return formatado;
}

DateTime fncsomaSLA(int diasSLA) {
  // // CRIE UMA FUNÇÃO QUE RECEBE NUMERO SOME A DATA CORRENTE E DEVOLVE A DATA
  return DateTime.now().add(Duration(days: diasSLA));
}
