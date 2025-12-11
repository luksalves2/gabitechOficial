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

String removerCaracteres(String text) {
// remove "-", spaces, ".", "/"
  return text
      .replaceAll('-', '')
      .replaceAll(' ', '')
      .replaceAll('.', '')
      .replaceAll('/', '');
}

String ajustarData(String data) {
  final millis = int.tryParse(data);
  if (millis == null) return "Data inválida";

  final date =
      DateTime.fromMillisecondsSinceEpoch(millis, isUtc: true).toLocal();
  final now = DateTime.now();

  final today = DateTime(now.year, now.month, now.day);
  final yesterday = today.subtract(const Duration(days: 1));
  final dateOnly = DateTime(date.year, date.month, date.day);

  if (dateOnly == today) {
    // Hoje → mostra hora
    return DateFormat('HH:mm').format(date);
  } else if (dateOnly == yesterday) {
    // Ontem
    return "ontem";
  } else {
    // Antigo → mostra data completa
    return DateFormat('dd/MM/yyyy').format(date);
  }
}

String ajustarHora(String data) {
  final millis = int.tryParse(data);
  if (millis == null) return "Data inválida";

  final date =
      DateTime.fromMillisecondsSinceEpoch(millis, isUtc: true).toLocal();

  final h = date.hour.toString().padLeft(2, '0');
  final m = date.minute.toString().padLeft(2, '0');
  return "$h:$m";
}

String quebrarTexto(String texto) {
  String resultado = '';

  // Lista de palavras
  List<String> palavras = texto.split(' ');

  // Linha atual
  String linhaAtual = '';

  // Itera por todas as palavras
  for (String palavra in palavras) {
    // Verifica se adicionar a palavra à linha atual ultrapassaria 25 caracteres
    if ((linhaAtual + palavra).length > 25) {
      // Se ultrapassar, adiciona a linha ao resultado e começa uma nova linha
      resultado += linhaAtual.trim() + '\n'; // Remove o espaço extra no final
      linhaAtual = ''; // Reseta a linha atual
    }

    // Adiciona a palavra à linha atual
    linhaAtual += palavra + ' ';
  }

  // Adiciona a última linha, se houver algo restante
  if (linhaAtual.isNotEmpty) {
    resultado += linhaAtual.trim(); // Remove o espaço extra no final
  }

  return resultado;
}

String converterCorString(Color cor) {
  return '#'
          '${cor.red.toRadixString(16).padLeft(2, '0')}'
          '${cor.green.toRadixString(16).padLeft(2, '0')}'
          '${cor.blue.toRadixString(16).padLeft(2, '0')}'
      .toUpperCase();
}

String formatarTelefone(String telefone) {
  // remove o sufixo do WhatsApp, se existir
  String numero = telefone.split('@').first;

  // remove tudo que não for número
  numero = numero.replaceAll(RegExp(r'[^0-9]'), '');

  // remove o código do país (55), se houver
  if (numero.startsWith('55') && numero.length >= 12) {
    numero = numero.substring(2);
  }

  // agora esperamos algo como: DDD + 9 + 8 dígitos
  // ex: 1195133722 → (11) 9 5133-722
  if (numero.length == 11) {
    final ddd = numero.substring(0, 2);
    final nove = numero.substring(2, 3);
    final parte1 = numero.substring(3, 7);
    final parte2 = numero.substring(7, 11);

    return '($ddd) $nove $parte1-$parte2';
  }

  // fallback (caso venha algo fora do padrão)
  return numero;
}

String iniciaisNome(String nome) {
  if (nome.trim().isEmpty) return '';

  final partes =
      nome.trim().split(' ').where((p) => p.trim().isNotEmpty).toList();

  if (partes.length == 1) {
    return partes.first.substring(0, 1).toUpperCase();
  }

  final primeira = partes.first.substring(0, 1);
  final ultima = partes.last.substring(0, 1);

  return (primeira + ultima).toUpperCase();
}

int calcularListaInteger(List<int> itens) {
  int total = 0;

  for (final item in itens) {
    total += item;
  }

  return total;
}

int minutosCampanha(
  String data,
  String horario,
) {
  try {
    // Quebra da data
    final partesData = data.split('/');
    final dia = int.parse(partesData[0]);
    final mes = int.parse(partesData[1]);
    final ano = int.parse(partesData[2]);

    // Quebra do horário
    final partesHora = horario.split(':');
    final hora = int.parse(partesHora[0]);
    final minuto = int.parse(partesHora[1]);

    // Data/hora da campanha
    final dataCampanha = DateTime(ano, mes, dia, hora, minuto);

    // Agora
    final agora = DateTime.now();

    final diferenca = dataCampanha.difference(agora).inMinutes;

    // Se já passou, retorna 0
    if (diferenca < 0) {
      return 0;
    }

    return diferenca;
  } catch (e) {
    // Em caso de erro de parse
    return 0;
  }
}

String identificarArquivo(String arquivo) {
  if (arquivo.trim().isEmpty) return 'Arquivo';

  // Remove query string, se existir
  String clean = arquivo.split('?').first.toLowerCase();

  // Pega só o nome do arquivo
  String nome = clean.split('/').last;

  // Extensão
  String extensao = '';
  if (nome.contains('.')) {
    extensao = nome.split('.').last;
  }

  if (['pdf'].contains(extensao)) {
    return 'PDF';
  }

  if (['jpg', 'jpeg', 'png', 'gif', 'webp'].contains(extensao)) {
    return 'Imagem';
  }

  if (['mp4', 'mov', 'avi', 'mkv', 'webm'].contains(extensao)) {
    return 'Vídeo';
  }

  if (['mp3', 'wav', 'aac', 'ogg'].contains(extensao)) {
    return 'Áudio';
  }

  if (['doc', 'docx', 'xls', 'xlsx', 'ppt', 'pptx', 'txt'].contains(extensao)) {
    return 'Documento';
  }

  return 'Arquivo';
}

String prazoSolicitacao(
  String prazo,
  DateTime dataAtual,
) {
  // Converte o prazo (dias) para int
  final int dias = int.tryParse(prazo) ?? 0;

  // Soma os dias à data atual
  final DateTime dataFinal = dataAtual.add(Duration(days: dias));

  // Formata para DD/MM/YYYY
  final String dia = dataFinal.day.toString().padLeft(2, '0');
  final String mes = dataFinal.month.toString().padLeft(2, '0');
  final String ano = dataFinal.year.toString();

  return '$dia/$mes/$ano';
}

List<LatLng> listaLatLng(List<String> enderecos) {
  final List<LatLng> resultado = [];

  for (final endereco in enderecos) {
    try {
      // Esperado: "-29.675649, -51.119057"
      final parts = endereco.split(',');

      if (parts.length == 2) {
        final lat = double.tryParse(parts[0].trim());
        final lng = double.tryParse(parts[1].trim());

        if (lat != null && lng != null) {
          resultado.add(LatLng(lat, lng));
        }
      }
    } catch (_) {
      // Ignora valores inválidos
    }
  }

  return resultado;
}
